package ru.itis.inf.repository;

import ru.itis.inf.models.Flower;
import java.util.List;

public interface FlowersRepository extends CrudRepository<Flower> {
    Flower findOneById(long id);
    List<Flower> findAll();
}
