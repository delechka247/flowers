package ru.itis.inf.servlets;

import ru.itis.inf.services.RegistrationService;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

public class RegistrationServlet extends HttpServlet {

    private RegistrationService registrationService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        ServletContext servletContext = config.getServletContext();
        registrationService = (RegistrationService) config.getServletContext().getAttribute("registrationService");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/registration.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String firstName = request.getParameter("firstName");
        String phoneNumber = request.getParameter("phoneNumber");
        String birthday = request.getParameter("birthday");

        String registrationStatus = registrationService.register(email, password, firstName, phoneNumber, birthday);
        if (registrationStatus.equals("ok")) {
            String path = "/login";
            response.sendRedirect(request.getContextPath() + path);
        } else {
            PrintWriter printWriter = response.getWriter();
            printWriter.println("Registration failed! Please try again");
            printWriter.println(registrationStatus);
            printWriter.close();
        }
    }
}
