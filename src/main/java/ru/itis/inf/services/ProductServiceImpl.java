package ru.itis.inf.services;

import ru.itis.inf.models.Bouquet;
import ru.itis.inf.models.Flower;
import ru.itis.inf.models.Pot;
import ru.itis.inf.models.Review;
import ru.itis.inf.repository.BouquetsRepository;
import ru.itis.inf.repository.FlowersRepository;
import ru.itis.inf.repository.PotsRepository;
import ru.itis.inf.repository.ReviewRepository;

import java.util.List;

public class ProductServiceImpl implements ProductService{
    private BouquetsRepository bouquetsRepository;
    private FlowersRepository flowersRepository;
    private PotsRepository potsRepository;
    private ReviewRepository reviewRepository;


    public ProductServiceImpl(BouquetsRepository bouquetsRepository,
                              FlowersRepository flowersRepository,
                              PotsRepository potsRepository,
                              ReviewRepository reviewRepository) {
        this.bouquetsRepository = bouquetsRepository;
        this.flowersRepository = flowersRepository;
        this.potsRepository = potsRepository;
        this.reviewRepository = reviewRepository;
    }

    @Override
    public List<Bouquet> getAllBouquets() {
        return bouquetsRepository.findAll();
    }

    @Override
    public List<Flower> getAllFlowers() {
        return flowersRepository.findAll();
    }

    @Override
    public List<Pot> getAllPots() {
        return potsRepository.findAll();
    }

    @Override
    public Bouquet getOneBouquetById(long id) {
        return bouquetsRepository.findOneById(id);
    }

    @Override
    public void addReview(Review review) {
        reviewRepository.create(review);
    }

    @Override
    public List<Review> getReviews(Long productId) {
        return reviewRepository.findAllByProductId(productId);
    }
}
