package ru.itis.inf.repository;

import ru.itis.inf.models.Flower;
import javax.sql.DataSource;
import java.util.List;

public class FlowersRepositoryImpl implements FlowersRepository{
    private DataSource dataSource;

    //language=SQL
    //private static final String SQL_FIND_BY_ID = "select * from users where id = ? limit 1";

    private RowMapper<Flower> bouquetRowMapper   = row -> Flower.builder()
            .id(row.getLong("id"))
            .type(row.getString("name"))
            .price(row.getInt("price"))
            .number(row.getInt("number"))
            .name(row.getString("name"))
            .stemLength(row.getInt("stem_length"))
            .color(row.getString("color"))
            .description(row.getString("description"))
            .build();

    public FlowersRepositoryImpl(DataSource dataSource) {
        this.dataSource = dataSource;
    }


    @Override
    public Flower findOneById(long id) {
        return null;
    }

    @Override
    public List<Flower> findAll() {
        return null;
    }

    @Override
    public void create(Flower entity) {

    }

    @Override
    public void update(Flower entity) {

    }

    @Override
    public void delete(Flower entity) {

    }
}
