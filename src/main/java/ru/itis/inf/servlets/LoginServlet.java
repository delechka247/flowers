package ru.itis.inf.servlets;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import ru.itis.inf.services.LoginService;
import ru.itis.inf.services.RegistrationService;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {
    private LoginService loginService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        ServletContext servletContext = config.getServletContext();
        loginService = (LoginService) config.getServletContext().getAttribute("loginService");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*
        Cookie[] cookies = request.getCookies();

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("emailCookie")) {
                    request.setAttribute("email", cookie.getValue());
                } else if (cookie.getName().equals("passwordCookie")) {
                    request.setAttribute("password", cookie.getValue());
                }
            }
            doPost(request, response);
        }
         */

        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String check = request.getParameter("check");

        String loginStatus = loginService.login(email, password);

        if(loginStatus.equals("ok")) {
            HttpSession httpSession = request.getSession(true);
            httpSession.setAttribute("authenticatedUserId", loginService.getIdForSession(email));

            if(check != null) {
                Cookie emailCookie = new Cookie("emailCookie", email);
                emailCookie.setMaxAge(60 * 60 * 24 * 365);

                Cookie passwordCookie = new Cookie("passwordCookie", password);
                passwordCookie.setMaxAge(60 * 60 * 24 * 365);

                response.addCookie(emailCookie);
                response.addCookie(passwordCookie);
            }

            //System.out.println(httpSession.getAttribute("authenticatedUserId"));
            String path = "/profile";
            response.sendRedirect(request.getContextPath() + path);
        }
        else {
            PrintWriter printWriter = response.getWriter();
            printWriter.println("Login failed! Please try again");
            printWriter.println(loginStatus);
            printWriter.close();
        }

    }
}
