package ru.itis.inf.servlets;

import ru.itis.inf.models.Review;
import ru.itis.inf.services.ProductService;
import ru.itis.inf.services.UsersService;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

public class ProductServlet extends HttpServlet {
    private UsersService usersService;
    private ProductService productService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        ServletContext servletContext = config.getServletContext();
        usersService = (UsersService) config.getServletContext().getAttribute("usersService");
        productService = (ProductService) config.getServletContext().getAttribute("productService");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long productId = Long.valueOf(request.getParameter("id"));
        System.out.println(productId);
        request.setAttribute("bouquet", productService.getOneBouquetById(productId));
        request.getRequestDispatcher("/WEB-INF/product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        int stars = (int) request.getAttribute("stars");
        String text = (String) request.getAttribute("text");

        HttpSession session = request.getSession();
        Long id = (Long) session.getAttribute("authenticatedUserId");
        long productId = Long.valueOf(request.getParameter("id"));
        String name = usersService.getUserById(id).getFirstName();
        Date date = new Date();

        productService.addReview(Review.builder()
                .productId(productId)
                .userId(id)
                .username(name)
                .stars(stars)
                .text(text)
                .date((java.sql.Date) date)
                .build());

    }
}
