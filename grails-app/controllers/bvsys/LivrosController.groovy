package bvsys


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class LivrosController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Livros.list(params), model: [livrosInstanceCount: Livros.count()]
    }

    def show(Livros livrosInstance) {
        respond livrosInstance
    }

    def create() {
        respond new Livros(params)
    }

    @Transactional
    def save(Livros livrosInstance) {
        if (livrosInstance == null) {
            notFound()
            return
        }

        if (livrosInstance.hasErrors()) {
            respond livrosInstance.errors, view: 'create'
            return
        }

        livrosInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'livros.label', default: 'Livros'), livrosInstance.id])
                redirect livrosInstance
            }
            '*' { respond livrosInstance, [status: CREATED] }
        }
    }

    def edit(Livros livrosInstance) {
        respond livrosInstance
    }

    @Transactional
    def update(Livros livrosInstance) {
        if (livrosInstance == null) {
            notFound()
            return
        }

        if (livrosInstance.hasErrors()) {
            respond livrosInstance.errors, view: 'edit'
            return
        }

        livrosInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Livros.label', default: 'Livros'), livrosInstance.id])
                redirect livrosInstance
            }
            '*' { respond livrosInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Livros livrosInstance) {

        if (livrosInstance == null) {
            notFound()
            return
        }

        livrosInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Livros.label', default: 'Livros'), livrosInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'livros.label', default: 'Livros'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
