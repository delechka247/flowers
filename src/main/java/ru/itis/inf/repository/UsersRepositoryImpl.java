package ru.itis.inf.repository;

import ru.itis.inf.models.User;

import javax.sql.DataSource;
import java.sql.*;
import java.util.List;

public class UsersRepositoryImpl implements UsersRepository{
    private DataSource dataSource;

    //language=SQL
    private final static String SQL_INSERT = "insert into users(email, hashed_password, first_name, phone_number, birthday) " +
            "values (?, ?, ?, ?, ?)";

    public UsersRepositoryImpl(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    @Override
    public void create(User user) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            connection = dataSource.getConnection();
            statement = connection.prepareStatement(SQL_INSERT, Statement.RETURN_GENERATED_KEYS );

            statement.setString(1, user.getEmail());
            statement.setString(2, user.getHashedPassword());
            statement.setString(3, user.getFirstName());
            statement.setString(4, user.getPhoneNumber());
            statement.setString(5, user.getBirthday());
            int affectedRows = statement.executeUpdate();

            if (affectedRows == 0) {
                throw new SQLException("Problem with creating new user");
            }

            resultSet = statement.getGeneratedKeys();

            if (resultSet.next()) {
                user.setId(resultSet.getLong("id"));
            } else {
                throw new SQLException("Problem with retrieve id");
            }

        }
        catch (SQLException e) {
            throw new IllegalStateException(e);
        }
        finally {
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
    public void update(User entity) {

    }

    @Override
    public void delete(User entity) {

    }

    @Override
    public List<User> findAll() {
        return null;
    }

    @Override
    public List<User> findAllById(int id) {
        return null;
    }

    @Override
    public User findUserByEmail(String email) {
        return null;
    }
}
