package bvsys


class Opcao extends Base {

    String nome

    String descricao
    double factor = 1

    static belongsTo = [caracteristicas: Caracteristicas]
    static hasMany = [detalhes: DetalheEmprestimo]

    static constraints = {
        nome blank: false
        descricao nullable: true
    }
}
