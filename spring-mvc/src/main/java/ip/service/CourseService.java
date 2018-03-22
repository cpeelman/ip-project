package ip.service;

import ip.db.*;
import ip.domain.Course;

import java.util.ArrayList;
import java.util.List;

public class CourseService {
    private Db db;

    public CourseService(String type) {
        if (type == "Memory") {
            db = InMemoryDbFactory.createDb("Course");
        } else if (type == "SQL") {
            db = SqlDbFactory.createDb("Course");
        }
    }

    public Course get(String id) {
        return (Course) db.get(id);
    }

    public List<Course> getAll() {
        List<Course> courses = new ArrayList<>();
        for (Object object : db.getAll()) {
            courses.add((Course) object);
        }
        return courses;
    }

    public void add(Course course) throws DbException {
        if (db.get(course.getCode()) == null) {
            db.add(course);
        } else {
            db.update(course);
        }
    }

    public void update(Course course) {
        db.update(course);
    }

    public void delete(String id) {
        db.delete(id);
    }
}
