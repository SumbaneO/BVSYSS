package bvsys

import javax.persistence.MappedSuperclass


@MappedSuperclass
class Base {

    Utilizador alteradoPor
    Utilizador criadoPor
    Date dataCriacao = new Date()
    Date dataAlteracao
    boolean activo

    def springSecurityService

    static constraints = {
        criadoPor nullable: true
        alteradoPor nullable: true
        dataAlteracao nullable: true
    }

    def beforeValidate() {
        if (!dataCriacao) {
            dataCriacao = new Date()
            criadoPor = springSecurityService.loadCurrentUser()
        }
    }

    def beforeUpdate() {
        dataAlteracao = new Date()
        alteradoPor = springSecurityService.loadCurrentUser()
    }
}
