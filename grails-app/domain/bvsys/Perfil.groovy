package bvsys

class Perfil implements Serializable {

    private static final long serialVersionUID = 1

    String authority

    Perfil(String authority) {
        this()
        this.authority = authority
    }

    @Override
    int hashCode() {
        authority?.hashCode() ?: 0
    }

    @Override
    boolean equals(other) {
        is(other) || (other instanceof Perfil && other.authority == authority)
    }

    @Override
    String toString() {
        authority
    }

    static constraints = {
        authority blank: false, unique: true
    }

    static mapping = {
        cache true
    }
}
