package ru.itis.inf.repository;

import ru.itis.inf.models.User;

import java.util.List;

public abstract class UsersRepositoryImpl implements UsersRepository{


    public void create(User entity) {

    }

    public void update(User entity) {

    }

    public void delete(User entity) {

    }

    public List<User> findAll() {
        return null;
    }

    public List<User> findAllById(int id) {
        return null;
    }

    public User findUserByEmail(String email) {
        return null;
    }
}
