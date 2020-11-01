package ru.itis.inf.services;

import ru.itis.inf.models.Bouquet;
import ru.itis.inf.models.Flower;
import ru.itis.inf.models.Pot;
import ru.itis.inf.models.Review;

import java.util.List;

public interface ProductService {
    List<Bouquet> getAllBouquets();
    List<Flower> getAllFlowers();
    List<Pot> getAllPots();
    Bouquet getOneBouquetById(long id);
    void addReview(Review review);
    List<Review> getReviews(Long productId);
}
