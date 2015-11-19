package bvsys


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EstadoEmprestimoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EstadoEmprestimo.list(params), model: [estadoEmprestimoInstanceCount: EstadoEmprestimo.count()]
    }

    def show(EstadoEmprestimo estadoEmprestimoInstance) {
        respond estadoEmprestimoInstance
    }

    def create() {
        respond new EstadoEmprestimo(params)
    }

    @Transactional
    def save(EstadoEmprestimo estadoEmprestimoInstance) {
        if (estadoEmprestimoInstance == null) {
            notFound()
            return
        }

        if (estadoEmprestimoInstance.hasErrors()) {
            respond estadoEmprestimoInstance.errors, view: 'create'
            return
        }

        estadoEmprestimoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'estadoEmprestimo.label', default: 'EstadoEmprestimo'), estadoEmprestimoInstance.id])
                redirect estadoEmprestimoInstance
            }
            '*' { respond estadoEmprestimoInstance, [status: CREATED] }
        }
    }

    def edit(EstadoEmprestimo estadoEmprestimoInstance) {
        respond estadoEmprestimoInstance
    }

    @Transactional
    def update(EstadoEmprestimo estadoEmprestimoInstance) {
        if (estadoEmprestimoInstance == null) {
            notFound()
            return
        }

        if (estadoEmprestimoInstance.hasErrors()) {
            respond estadoEmprestimoInstance.errors, view: 'edit'
            return
        }

        estadoEmprestimoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'EstadoEmprestimo.label', default: 'EstadoEmprestimo'), estadoEmprestimoInstance.id])
                redirect estadoEmprestimoInstance
            }
            '*' { respond estadoEmprestimoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(EstadoEmprestimo estadoEmprestimoInstance) {

        if (estadoEmprestimoInstance == null) {
            notFound()
            return
        }

        estadoEmprestimoInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'EstadoEmprestimo.label', default: 'EstadoEmprestimo'), estadoEmprestimoInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'estadoEmprestimo.label', default: 'EstadoEmprestimo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
