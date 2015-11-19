package bvsys


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DevolucoesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Devolucoes.list(params), model: [devolucoesInstanceCount: Devolucoes.count()]
    }

    def show(Devolucoes devolucoesInstance) {
        respond devolucoesInstance
    }

    def create() {
        respond new Devolucoes(params)
    }

    @Transactional
    def save(Devolucoes devolucoesInstance) {
        if (devolucoesInstance == null) {
            notFound()
            return
        }

        if (devolucoesInstance.hasErrors()) {
            respond devolucoesInstance.errors, view: 'create'
            return
        }

        devolucoesInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'devolucoes.label', default: 'Devolucoes'), devolucoesInstance.id])
                redirect devolucoesInstance
            }
            '*' { respond devolucoesInstance, [status: CREATED] }
        }
    }

    def edit(Devolucoes devolucoesInstance) {
        respond devolucoesInstance
    }

    @Transactional
    def update(Devolucoes devolucoesInstance) {
        if (devolucoesInstance == null) {
            notFound()
            return
        }

        if (devolucoesInstance.hasErrors()) {
            respond devolucoesInstance.errors, view: 'edit'
            return
        }

        devolucoesInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Devolucoes.label', default: 'Devolucoes'), devolucoesInstance.id])
                redirect devolucoesInstance
            }
            '*' { respond devolucoesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Devolucoes devolucoesInstance) {

        if (devolucoesInstance == null) {
            notFound()
            return
        }

        devolucoesInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Devolucoes.label', default: 'Devolucoes'), devolucoesInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'devolucoes.label', default: 'Devolucoes'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
