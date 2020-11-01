package ru.itis.inf.repository;

import ru.itis.inf.models.Bouquet;
import ru.itis.inf.models.Review;
import ru.itis.inf.models.User;

import java.util.List;

public interface ReviewRepository extends CrudRepository<Review>{
    List<Review> findAllByProductId(long id);
}
