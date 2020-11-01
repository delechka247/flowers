package ru.itis.inf.repository;

import ru.itis.inf.models.Pot;
import javax.sql.DataSource;
import java.util.List;

public class PotsRepositoryImpl implements PotsRepository{
    private DataSource dataSource;

    //language=SQL
    //private static final String SQL_FIND_BY_ID = "select * from users where id = ? limit 1";

    private RowMapper<Pot> bouquetRowMapper   = row -> Pot.builder()
            .id(row.getLong("id"))
            .type(row.getString("name"))
            .price(row.getInt("price"))
            .number(row.getInt("number"))
            .name(row.getString("name"))
            .diameter(row.getInt("diameter"))
            .color(row.getString("color"))
            .material(row.getString("material"))
            .description(row.getString("description"))
            .build();

    public PotsRepositoryImpl(DataSource dataSource) {
        this.dataSource = dataSource;
    }


    @Override
    public Pot findOneById(long id) {
        return null;
    }

    @Override
    public List<Pot> findAll() {
        return null;
    }

    @Override
    public void create(Pot entity) {

    }

    @Override
    public void update(Pot entity) {

    }

    @Override
    public void delete(Pot entity) {

    }
}
