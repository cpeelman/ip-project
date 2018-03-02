package ip.db;

import java.util.List;

public interface Db {
    Object createDb(String type);

    Object get(String id);

    List<Object> getAll();

    void add(Object object);

    void update(Object object);

    void delete(String id);
}
