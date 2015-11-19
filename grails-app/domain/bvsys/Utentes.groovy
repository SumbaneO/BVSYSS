package bvsys

class Utentes extends Base implements Serializable{
    String nome
    String apelido
    String bi
    String distrito
    String nuit
    String endereco
    String telefone
    String email

    Utilizador utilizador

    static hasMany = [emprestimos: Emprestimos]

    static constraints = {
        nome blank: false
        apelido blank:false
        bi blank:false
        distrito blank:false
        endereco blank :false
        telefone blank:false
        nuit blank: false, minSize: 9, maxSize: 9, unique: true
        email email: true, nullable: true
    }

    @Override
    String toString() {
        return nome
    }
}
