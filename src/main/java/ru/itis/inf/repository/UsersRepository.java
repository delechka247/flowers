package ru.itis.inf.repository;
import ru.itis.inf.models.User;

import java.util.List;

public interface UsersRepository extends CrudRepository<User>{
    List<User> findAllById(int id);
    User findUserByEmail(String email);
}
