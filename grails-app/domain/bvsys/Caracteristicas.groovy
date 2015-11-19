package bvsys



    class Caracteristicas extends Base {

        String nome
        String descricao

        static belongsTo = [emprestimo: Emprestimos]
        static hasMany = [opcoes: Opcao]

        static constraints = {
            descricao nullable: true
        }

        @Override
        String toString() {
            return nome
        }
    }
