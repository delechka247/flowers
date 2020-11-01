package ru.itis.inf.listeners;

import org.springframework.jdbc.datasource.DriverManagerDataSource;
import ru.itis.inf.repository.*;
import ru.itis.inf.services.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class CustomServletContextListener implements ServletContextListener {

    private static final String DB_URL = "jdbc:postgresql://localhost:5432/flowers_project";
    private static final String DB_USERNAME = "postgres";
    private static final String DB_PASSWORD = "poiuyt09";
    private static final String DB_DRIVER = "org.postgresql.Driver";

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext servletContext = sce.getServletContext();
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(DB_DRIVER);
        dataSource.setUsername(DB_USERNAME);
        dataSource.setPassword(DB_PASSWORD);
        dataSource.setUrl(DB_URL);

        UsersRepository usersRepository = new UsersRepositoryImpl(dataSource);

        RegistrationService registrationService = new RegistrationServiceImpl(usersRepository);
        servletContext.setAttribute("registrationService", registrationService);

        LoginService loginService = new LoginServiceImpl(usersRepository);
        servletContext.setAttribute("loginService", loginService);

        UsersService usersService = new UsersServiceImpl(usersRepository);
        servletContext.setAttribute("usersService", usersService);

        BouquetsRepository bouquetsRepository = new BouquetsRepositoryImpl(dataSource);
        FlowersRepository flowersRepository = new FlowersRepositoryImpl(dataSource);
        PotsRepository potsRepository = new PotsRepositoryImpl(dataSource);
        ReviewRepository reviewRepository = new ReviewRepositoryImpl(dataSource);

        ProductService productService = new ProductServiceImpl(bouquetsRepository, flowersRepository, potsRepository, reviewRepository);
        servletContext.setAttribute("productService", productService);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
