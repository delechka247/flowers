package ru.itis.inf.repository;
import ru.itis.inf.models.User;

import java.util.List;

public interface UsersRepository extends CrudRepository<User>{
    User findOneById(long id);
    String findUserByEmailToLogin(String email);
    boolean isUserRegistered (String email);
    Long getIdByEmail(String email);
}
