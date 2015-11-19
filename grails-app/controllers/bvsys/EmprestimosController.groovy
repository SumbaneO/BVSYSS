package bvsys


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmprestimosController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Emprestimos.list(params), model: [emprestimosInstanceCount: Emprestimos.count()]
    }

    def show(Emprestimos emprestimosInstance) {
        respond emprestimosInstance
    }

    def create() {
        respond new Emprestimos(params)
    }

    @Transactional
    def save(Emprestimos emprestimosInstance) {
        if (emprestimosInstance == null) {
            notFound()
            return
        }

        if (emprestimosInstance.hasErrors()) {
            respond emprestimosInstance.errors, view: 'create'
            return
        }

        emprestimosInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'emprestimos.label', default: 'Emprestimos'), emprestimosInstance.id])
                redirect emprestimosInstance
            }
            '*' { respond emprestimosInstance, [status: CREATED] }
        }
    }

    def edit(Emprestimos emprestimosInstance) {
        respond emprestimosInstance
    }

    @Transactional
    def update(Emprestimos emprestimosInstance) {
        if (emprestimosInstance == null) {
            notFound()
            return
        }

        if (emprestimosInstance.hasErrors()) {
            respond emprestimosInstance.errors, view: 'edit'
            return
        }

        emprestimosInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Emprestimos.label', default: 'Emprestimos'), emprestimosInstance.id])
                redirect emprestimosInstance
            }
            '*' { respond emprestimosInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Emprestimos emprestimosInstance) {

        if (emprestimosInstance == null) {
            notFound()
            return
        }

        emprestimosInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Emprestimos.label', default: 'Emprestimos'), emprestimosInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'emprestimos.label', default: 'Emprestimos'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
