package ru.itis.inf.repository;

import ru.itis.inf.models.Bouquet;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BouquetsRepositoryImpl implements BouquetsRepository{
    private DataSource dataSource;

    //language=SQL
    private static final String SQL_FIND_ALL_BOUQUETS = "select * from product inner join bouquets on product.id=bouquets.product_id";

    private RowMapper<Bouquet> bouquetRowMapper   = row -> Bouquet.builder()
            .id(row.getLong("product_id"))
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
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try {
            connection = dataSource.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(SQL_FIND_ALL_BOUQUETS);

            List<Bouquet> result = new ArrayList<>();

            while (resultSet.next()) {
                result.add(bouquetRowMapper.mapRow(resultSet));
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
    public void create(Bouquet entity) {

    }

    @Override
    public void update(Bouquet entity) {

    }

    @Override
    public void delete(Bouquet entity) {

    }
}
