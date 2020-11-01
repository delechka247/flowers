package ru.itis.inf.repository;

import ru.itis.inf.models.Bouquet;
import javax.sql.DataSource;
import java.util.List;

public class BouquetsRepositoryImpl implements BouquetsRepository{
    private DataSource dataSource;

    //language=SQL
    //private static final String SQL_FIND_BY_ID = "select * from users where id = ? limit 1";

    private RowMapper<Bouquet> bouquetRowMapper   = row -> Bouquet.builder()
            .id(row.getLong("id"))
            .type(row.getString("name"))
            .price(row.getInt("price"))
            .number(row.getInt("number"))
            .name(row.getString("name"))
            .numberOfFlowers(row.getInt("number_of_flowers"))
            .description(row.getString("description"))
            .productionDate(row.getDate("production_date"))
            .build();

    public BouquetsRepositoryImpl(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    @Override
    public Bouquet findOneById(long id) {
        return null;
    }

    @Override
    public List<Bouquet> findAll() {
        return null;
    }

    @Override
    public void create(Bouquet entity) {

    }

    @Override
    public void update(Bouquet entity) {

    }

    @Override
    public void delete(Bouquet entity) {

    }
}
