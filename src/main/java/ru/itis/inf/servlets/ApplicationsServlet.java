package ru.itis.inf.servlets;

import ru.itis.inf.models.User;
import ru.itis.inf.services.UsersService;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ApplicationsServlet extends HttpServlet {
    private UsersService usersService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        ServletContext servletContext = config.getServletContext();
        usersService = (UsersService) config.getServletContext().getAttribute("usersService");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Long id = (Long) session.getAttribute("authenticatedUserId");
        User user = usersService.getUserById(id);

        request.setAttribute("name", user.getFirstName());
        request.getRequestDispatcher("/WEB-INF/applications.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

    }
}
