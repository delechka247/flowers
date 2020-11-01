package ru.itis.inf.services;

import ru.itis.inf.models.User;
import ru.itis.inf.repository.UsersRepository;

import java.util.List;

public class UsersServiceImpl implements UsersService{
    private UsersRepository usersRepository;

    public UsersServiceImpl(UsersRepository usersRepository) {
        this.usersRepository = usersRepository;
    }

    @Override
    public User getUserById(long id) {
        return usersRepository.findOneById(id);
    }
}
