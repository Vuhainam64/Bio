package db;
import db.Gender;
import java.util.Date;

public class Student {

    private int id;
    private String firstName;
    private String lastName;
    private Date dateOfBirth;
    private Gender gender;

    public Student(int id, String firstName, String lastName, Date dateOfBirth, Gender gender) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
    }

    public int getId() {
        return id;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public Gender getGender() {
        return gender;
    }
}
