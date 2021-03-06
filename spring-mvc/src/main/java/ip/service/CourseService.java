package ip.service;

import ip.db.Db;
import ip.db.DbException;
import ip.db.DbFactoryInMemory;
import ip.db.DbFactoryJPA;
import ip.domain.Course;

import java.util.ArrayList;
import java.util.List;

public class CourseService {
    private Db db;

    public CourseService(String type) {
        if (type.equals("Memory")) {
            db = DbFactoryInMemory.createDb("Course");
        } else if (type.equals("JPA")) {
            db = DbFactoryJPA.createDb("Course");
        }
    }

    public CourseService(Db db){
        this.db = db;
    }

    public Course get(long id) {
        return (Course) db.get(id);
    }

    public List<Course> getAll() {
        List<Course> courses = new ArrayList<>();
        for (Object object : db.getAll()) {
            courses.add((Course) object);
        }
        return courses;
    }

    public List<Course> getAllSorted(String column) {
        List<Course> courses = new ArrayList<>();
        for (Object object : db.getAllSorted(column)) {
            courses.add((Course) object);
        }
        return courses;
    }

    public void add(Course course) throws DbException {
        db.add(course);
    }

    public void update(Course course) {
        db.update(course);
    }

    public void delete(long id) {
        db.delete(id);
    }

    public boolean alreadyExists(Course newCourse) {
        for (Course course : getAll()) {
            if (course.equals(newCourse)) {
                return true;
            }
        }
        return false;
    }

    public void increaseExams(Course course){
        course.increaseExams();
        update(course);
    }

    public void decreaseExams(Course course){
        course.decreaseExams();
        update(course);
    }

}
