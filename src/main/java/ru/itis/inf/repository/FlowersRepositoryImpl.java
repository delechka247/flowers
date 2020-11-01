package ru.itis.inf.repository;

import ru.itis.inf.models.Bouquet;
import ru.itis.inf.models.Flower;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FlowersRepositoryImpl implements FlowersRepository{
    private DataSource dataSource;

    //language=SQL
    private static final String SQL_FIND_ALL_FLOWERS = "select * from product inner join flowers on product.id=flowers.product_id";

    private RowMapper<Flower> flowerRowMapper   = row -> Flower.builder()
            .id(row.getLong("product_id"))
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
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            connection = dataSource.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(SQL_FIND_ALL_FLOWERS);

            List<Flower> result = new ArrayList<>();

            while (resultSet.next()) {
                result.add(flowerRowMapper.mapRow(resultSet));
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
    public void create(Flower entity) {

    }

    @Override
    public void update(Flower entity) {

    }

    @Override
    public void delete(Flower entity) {

    }
}
