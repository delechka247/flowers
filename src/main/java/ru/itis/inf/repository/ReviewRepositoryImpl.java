package ru.itis.inf.repository;

import ru.itis.inf.models.Bouquet;
import ru.itis.inf.models.Review;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ReviewRepositoryImpl implements ReviewRepository{
    private DataSource dataSource;

    //language=SQL
    private static final String SQL_FIND_REVIEWS_BY_PRODUCT_ID = "select * from review inner join users on review.user_id=users.id where product_id = ?";

    //language=SQL
    private final static String SQL_INSERT = "insert into review(id, product_id, user_id, stars, text, date " +
            "values (?, ?, ?, ?, ?, ?)";

    private RowMapper<Review> reviewRowMapper   = row -> Review.builder()
            .id(row.getLong("id"))
            .userId(row.getLong("user_id"))
            .username(row.getString("first_name"))
            .stars(row.getInt("stars"))
            .text(row.getString("text"))
            .date(row.getDate("date"))
            .build();

    public ReviewRepositoryImpl(DataSource dataSource) {
        this.dataSource = dataSource;
    }


    @Override
    public List<Review> findAllByProductId(long id) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            connection = dataSource.getConnection();
            statement = connection.prepareStatement(SQL_FIND_REVIEWS_BY_PRODUCT_ID);
            statement.setLong(1, id);
            resultSet = statement.executeQuery();

            List<Review> result = new ArrayList<>();

            while (resultSet.next()) {
                result.add(reviewRowMapper.mapRow(resultSet));
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
    public void create(Review review) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            connection = dataSource.getConnection();
            statement = connection.prepareStatement(SQL_INSERT, Statement.RETURN_GENERATED_KEYS);

            statement.setLong(1, review.getId());
            statement.setLong(2, review.getProductId());
            statement.setLong(3, review.getUserId());
            statement.setInt(4, review.getStars());
            statement.setString(5, review.getText());
            statement.setDate(6, review.getDate());
            int affectedRows = statement.executeUpdate();

            if (affectedRows == 0) {
                throw new SQLException("Problem with creating new user");
            }

            resultSet = statement.getGeneratedKeys();

            if (resultSet.next()) {
                review.setId(resultSet.getLong("id"));
            } else {
                throw new SQLException("Problem with retrieve id");
            }

        } catch (SQLException e) {
            throw new IllegalStateException(e);
        } finally {
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException throwables) {
                }
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException throwables) {
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException throwables) {
                }
            }
        }
    }

    @Override
    public void update(Review entity) {

    }

    @Override
    public void delete(Review entity) {

    }

    @Override
    public List<Review> findAll() {
        return null;
    }
}
