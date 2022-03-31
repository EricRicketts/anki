package model;

import java.util.Objects;

public class Person {
    private String firstName;
    private String lastName;
    private int age;
    private char sex;

    public Person(String firstName, String lastName, int age, char sex) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public char getSex() {
        return sex;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setSex(char sex) {
        this.sex = sex;
    }

}
