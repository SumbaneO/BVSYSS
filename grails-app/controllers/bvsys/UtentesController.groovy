package bvsys


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UtentesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Utentes.list(params), model: [utentesInstanceCount: Utentes.count()]
    }

    def show(Utentes utentesInstance) {
        respond utentesInstance
    }

    def create() {
        respond new Utentes(params)
    }

    @Transactional
    def save(Utentes utentesInstance) {
        if (utentesInstance == null) {
            notFound()
            return
        }

        if (utentesInstance.hasErrors()) {
            respond utentesInstance.errors, view: 'create'
            return
        }

        utentesInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'utentes.label', default: 'Utentes'), utentesInstance.id])
                redirect utentesInstance
            }
            '*' { respond utentesInstance, [status: CREATED] }
        }
    }

    def edit(Utentes utentesInstance) {
        respond utentesInstance
    }

    @Transactional
    def update(Utentes utentesInstance) {
        if (utentesInstance == null) {
            notFound()
            return
        }

        if (utentesInstance.hasErrors()) {
            respond utentesInstance.errors, view: 'edit'
            return
        }

        utentesInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Utentes.label', default: 'Utentes'), utentesInstance.id])
                redirect utentesInstance
            }
            '*' { respond utentesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Utentes utentesInstance) {

        if (utentesInstance == null) {
            notFound()
            return
        }

        utentesInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Utentes.label', default: 'Utentes'), utentesInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'utentes.label', default: 'Utentes'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
