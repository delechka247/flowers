package ru.itis.inf.repository;

import ru.itis.inf.models.Pot;
import java.util.List;

public interface PotsRepository extends CrudRepository<Pot>{
    Pot findOneById(long id);
    List<Pot> findAll();
}
