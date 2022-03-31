package beans;

public class Person {
    private String name;
    private Parrot parrot;

    public Person() { this.name = "Ella"; }
    public Person(Parrot parrot) { this.parrot = parrot; }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public Parrot getParrot() {
        return this.parrot;
    }

    public void setParrot(Parrot parrot) {
        this.parrot = parrot;
    }
}