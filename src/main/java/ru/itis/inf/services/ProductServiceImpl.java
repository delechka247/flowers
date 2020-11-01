package ru.itis.inf.services;

import ru.itis.inf.models.Bouquet;
import ru.itis.inf.models.Flower;
import ru.itis.inf.models.Pot;
import ru.itis.inf.repository.BouquetsRepository;
import ru.itis.inf.repository.FlowersRepository;
import ru.itis.inf.repository.PotsRepository;

import java.util.List;

public class ProductServiceImpl implements ProductService{
    private BouquetsRepository bouquetsRepository;
    private FlowersRepository flowersRepository;
    private PotsRepository potsRepository;


    public ProductServiceImpl(BouquetsRepository bouquetsRepository,
                              FlowersRepository flowersRepository,
                              PotsRepository potsRepository) {
        this.bouquetsRepository = bouquetsRepository;
        this.flowersRepository = flowersRepository;
        this.potsRepository = potsRepository;
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
}
