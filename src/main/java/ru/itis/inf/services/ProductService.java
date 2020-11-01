package ru.itis.inf.services;

import ru.itis.inf.models.Bouquet;
import ru.itis.inf.models.Flower;
import ru.itis.inf.models.Pot;

import java.util.List;

public interface ProductService {
    List<Bouquet> getAllBouquets();
    List<Flower> getAllFlowers();
    List<Pot> getAllPots();
}
