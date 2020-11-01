package ru.itis.inf.repository;

import ru.itis.inf.models.Bouquet;
import ru.itis.inf.models.User;

import java.util.List;

public interface BouquetsRepository extends CrudRepository<Bouquet> {
    Bouquet findOneById(long id);
    List<Bouquet> findAll();
}
