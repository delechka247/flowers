package ru.itis.inf.repository;

import ru.itis.inf.models.Flower;
import ru.itis.inf.models.Pot;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PotsRepositoryImpl implements PotsRepository{
    private DataSource dataSource;

    //language=SQL
    private static final String SQL_FIND_ALL_POTS = "select * from product inner join pots on product.id=pots.product_id";

    private RowMapper<Pot> potRowMapper   = row -> Pot.builder()
            .id(row.getLong("product_id"))
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
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            connection = dataSource.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(SQL_FIND_ALL_POTS);

            List<Pot> result = new ArrayList<>();

            while (resultSet.next()) {
                result.add(potRowMapper.mapRow(resultSet));
            }

            return result;
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        } finally {
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException throwables) {
                    //ignore
                }
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException throwables) {
                    // ignore
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException throwables) {
                    // ignore
                }
            }
        }
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
