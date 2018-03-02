package ip.db;

import ip.domain.Teacher;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TeacherDbInMemory extends InMemoryDb {
    private Map<String, Teacher> teachers = new HashMap<>();

    public TeacherDbInMemory() {
    }

    @Override
    public Teacher get(String id) {
        if (id == null) {
            throw new DbException("No id given");
        }
        return teachers.get(id);
    }

    @Override
    public List<Object> getAll() {
        return new ArrayList<>(teachers.values());
    }

    @Override
    public void add(Object object) throws DbException {
        Teacher teacher = (Teacher) object;
        if (teacher == null) {
            throw new DbException("No teacher given");
        }
        if (teachers.containsKey(teacher.getId())) {
            throw new DbException("Teacher already exists");
        }
        teachers.put(teacher.getId(), teacher);
    }

    @Override
    public void update(Object object) {
        Teacher teacher = (Teacher) object;
        if (teacher == null) {
            throw new DbException("No teacher given");
        }
        if (!teachers.containsKey(teacher.getId())) {
            throw new DbException("No teacher found");
        }
        teachers.put(teacher.getId(), teacher);
    }

    @Override
    public void delete(String id) {
        if (id == null) {
            throw new DbException("No id given");
        }
        teachers.remove(id);
    }

}