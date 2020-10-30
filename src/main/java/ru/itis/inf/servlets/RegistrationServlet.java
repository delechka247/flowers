package ru.itis.inf.servlets;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class RegistrationServlet extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/registration.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        System.out.println(email + " " + password);

        if (!email.equals("vanya@mail.ru")) {
            PrintWriter printWriter = response.getWriter();
            printWriter.println("Registration failed! Please try again");
            printWriter.close();
        }
        else {
            String path = "/login";
            System.out.println(request.getContextPath() + path);
            response.sendRedirect(request.getContextPath() + path);

        }
    }
}
