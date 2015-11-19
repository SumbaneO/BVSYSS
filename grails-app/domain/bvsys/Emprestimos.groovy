package bvsys

class Emprestimos {

    String codigo
    int quantidade
    String observacoes
    Date DatadeObtencao
    Date dataDeDevolucao


    static belongsTo = [utentes: Utentes, livros: Livros]
    static hasMany = [estadoEmprestimo: EstadoEmprestimo, detalheEmprestimo: DetalheEmprestimo]

    static constraints = {
        codigo nullable: true
        quantidade blank:false
        observacoes blank: false

    }
}
