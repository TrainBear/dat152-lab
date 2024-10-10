package no.hvl.dat152.action;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import no.hvl.dat152.dao.AuthorDAO;
import no.hvl.dat152.dao.BookDAO;
import no.hvl.dat152.model.Author;

import java.io.IOException;

public class AddAuthorAction implements ControllerAction {
    @Override
    public int execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String firstName = request.getParameter("first-name");
        String lastName = request.getParameter("last-name");

        Author author = new Author(firstName, lastName);

        // Save in DB
        AuthorDAO dao = new AuthorDAO();
        dao.addAuthor(author);

        request.setAttribute("books", new BookDAO().getAllBooks());

        return ControllerAction.SUCCESS;
    }
}
