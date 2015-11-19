package bvsys


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DetalheEmprestimoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DetalheEmprestimo.list(params), model: [detalheEmprestimoInstanceCount: DetalheEmprestimo.count()]
    }

    def show(DetalheEmprestimo detalheEmprestimoInstance) {
        respond detalheEmprestimoInstance
    }

    def create() {
        respond new DetalheEmprestimo(params)
    }

    @Transactional
    def save(DetalheEmprestimo detalheEmprestimoInstance) {
        if (detalheEmprestimoInstance == null) {
            notFound()
            return
        }

        if (detalheEmprestimoInstance.hasErrors()) {
            respond detalheEmprestimoInstance.errors, view: 'create'
            return
        }

        detalheEmprestimoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'detalheEmprestimo.label', default: 'DetalheEmprestimo'), detalheEmprestimoInstance.id])
                redirect detalheEmprestimoInstance
            }
            '*' { respond detalheEmprestimoInstance, [status: CREATED] }
        }
    }

    def edit(DetalheEmprestimo detalheEmprestimoInstance) {
        respond detalheEmprestimoInstance
    }

    @Transactional
    def update(DetalheEmprestimo detalheEmprestimoInstance) {
        if (detalheEmprestimoInstance == null) {
            notFound()
            return
        }

        if (detalheEmprestimoInstance.hasErrors()) {
            respond detalheEmprestimoInstance.errors, view: 'edit'
            return
        }

        detalheEmprestimoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DetalheEmprestimo.label', default: 'DetalheEmprestimo'), detalheEmprestimoInstance.id])
                redirect detalheEmprestimoInstance
            }
            '*' { respond detalheEmprestimoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DetalheEmprestimo detalheEmprestimoInstance) {

        if (detalheEmprestimoInstance == null) {
            notFound()
            return
        }

        detalheEmprestimoInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DetalheEmprestimo.label', default: 'DetalheEmprestimo'), detalheEmprestimoInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'detalheEmprestimo.label', default: 'DetalheEmprestimo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
