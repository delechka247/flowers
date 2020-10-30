package ru.itis.inf.repository;

import java.util.List;

public interface CrudRepository<T> {
    void create(T entity);
    void update(T entity);
    void delete(T entity);

    List<T> findAll();
}