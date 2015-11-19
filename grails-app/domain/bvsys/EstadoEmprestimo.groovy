package bvsys

/**
 *
 */

class EstadoEmprestimo extends Base {

    String estado
    String observacoes

    static belongsTo = [emprestimos: Emprestimos]

    static constraints = {
        estado blank: false, inList: ['Emprestado', 'Devolvido', 'Disponivel', 'Reservado']
        observacoes nullable: true, maxSize: 1000
    }

    @Override
    String toString() {
        return estado
    }
}
