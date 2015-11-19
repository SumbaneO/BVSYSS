package bvsys

class Livros {

    Integer codigo
    String nome
    String estado
    String titulo
    String autores
    String categoria
    String descricao


    static hasMany = [caracteristicas: Caracteristicas, emprestimos: Emprestimos]

    static constraints = {
        nome blank: false
        codigo blank:false
        estado nullable: true
        titulo nullable: true
        autores nullable: true
        categoria nullable: true
        descricao nullable: true

    }

    @Override
    String toString() {
        return nome
    }
}
