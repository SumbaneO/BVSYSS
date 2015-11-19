package bvsys



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CaracteristicasController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Caracteristicas.list(params), model:[caracteristicasInstanceCount: Caracteristicas.count()]
    }

    def show(Caracteristicas caracteristicasInstance) {
        respond caracteristicasInstance
    }

    def create() {
        respond new Caracteristicas(params)
    }

    @Transactional
    def save(Caracteristicas caracteristicasInstance) {
        if (caracteristicasInstance == null) {
            notFound()
            return
        }

        if (caracteristicasInstance.hasErrors()) {
            respond caracteristicasInstance.errors, view:'create'
            return
        }

        caracteristicasInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'caracteristicas.label', default: 'Caracteristicas'), caracteristicasInstance.id])
                redirect caracteristicasInstance
            }
            '*' { respond caracteristicasInstance, [status: CREATED] }
        }
    }

    def edit(Caracteristicas caracteristicasInstance) {
        respond caracteristicasInstance
    }

    @Transactional
    def update(Caracteristicas caracteristicasInstance) {
        if (caracteristicasInstance == null) {
            notFound()
            return
        }

        if (caracteristicasInstance.hasErrors()) {
            respond caracteristicasInstance.errors, view:'edit'
            return
        }

        caracteristicasInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Caracteristicas.label', default: 'Caracteristicas'), caracteristicasInstance.id])
                redirect caracteristicasInstance
            }
            '*'{ respond caracteristicasInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Caracteristicas caracteristicasInstance) {

        if (caracteristicasInstance == null) {
            notFound()
            return
        }

        caracteristicasInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Caracteristicas.label', default: 'Caracteristicas'), caracteristicasInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'caracteristicas.label', default: 'Caracteristicas'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
