package bvsys

class DetalheEmprestimo {

    static belongsTo = [emprestimos: Emprestimos, opcao: Opcao]

    static constraints = {
    }
}
