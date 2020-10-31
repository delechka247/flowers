package ru.itis.inf.listeners;

import org.springframework.jdbc.datasource.DriverManagerDataSource;
import ru.itis.inf.repository.UsersRepository;
import ru.itis.inf.repository.UsersRepositoryImpl;
import ru.itis.inf.services.LoginService;
import ru.itis.inf.services.LoginServiceImpl;
import ru.itis.inf.services.RegistrationService;
import ru.itis.inf.services.RegistrationServiceImpl;

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
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
