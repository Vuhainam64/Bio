package com.example.model;

import db.Gender;
import db.Student;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

public class RandomStudentGenerator {

    private static final String[] FIRST_NAMES = {"Alice", "Bob", "Charlie", "David", "Emily", "Frank", "Gina", "Harry", "Isabelle", "Jack", "Karen", "Liam", "Mia", "Noah", "Olivia", "Pamela", "Quentin", "Rachel", "Samuel", "Tina", "Uma", "Victor", "Wendy", "Xavier", "Yolanda", "Zachary"};
    private static final String[] LAST_NAMES = {"Anderson", "Brown", "Carter", "Davis", "Evans", "Foster", "Garcia", "Hernandez", "Ingram", "Johnson", "Kapoor", "Lee", "Miller", "Nguyen", "O'Brien", "Patel", "Quinn", "Rodriguez", "Santos", "Thomas", "Underwood", "Vargas", "Wang", "Xu", "Yamamoto", "Zhang"};

    private static final DateFormat DATE_FORMAT = new SimpleDateFormat("dd-MM-yyyy");

    public static List<Student> generateRandomStudents(int numStudents) {
        List<Student> students = new ArrayList<>();

        for (int i = 0; i < numStudents; i++) {
            Random random = new Random();

            String firstName = FIRST_NAMES[random.nextInt(FIRST_NAMES.length)];
            String lastName = LAST_NAMES[random.nextInt(LAST_NAMES.length)];
            String dateStr = generateRandomDate();
            Date date = null;
            try {
                date = DATE_FORMAT.parse(dateStr);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            Gender gender = Gender.values()[random.nextInt(Gender.values().length)];

            Student student = new Student(i + 1, firstName, lastName, date, gender);
            students.add(student);
        }

        return students;
    }

    private static String generateRandomDate() {
        Random random = new Random();
        int day = random.nextInt(28) + 1;
        int month = random.nextInt(12) + 1;
        int year = random.nextInt(21) + 2000;
        return String.format("%02d-%02d-%04d", day, month, year);
    }
}
