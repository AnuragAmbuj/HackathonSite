package club.decoders.hackathon;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import club.decoders.models.HackathonCandidate;

public class RegistrationServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7246931404030756447L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String firstname;
		String lastname;
		String email;
		String usn;
		String phone;
		String cgpa;
		String teamname;
		teamname = req.getParameter("teamname");
		firstname = req.getParameter("firstname");
		lastname = req.getParameter("lastname");
		email = req.getParameter("email");
		usn = req.getParameter("usn");
		phone = req.getParameter("phone");
		cgpa = req.getParameter("cgpa");
		if (firstname == null && lastname == null) {
			resp.sendRedirect("index.html");
		}
		String status = " ";
		HackathonCandidate hck = new HackathonCandidate(firstname, lastname,
				email, usn, phone, cgpa,teamname.trim());
		if (!StorageValidator.isAlreadyPresent(usn)) {
			if (DatastoreMaster.insertHackathonCandidate(hck)) {
				status = "Dear " + firstname + " " + lastname + ", "
						+ "details updated sucessfully!";
			} else {
				status = "Unfortunately something went wrong!";
			}
		}
		else
		{
			status = "User already present, no further changes allowed!";
		}

		RequestDispatcher dispatcher = getServletConfig().getServletContext()
				.getRequestDispatcher("/status.jsp");
		req.setAttribute("status", status);
		dispatcher.forward(req, resp);

	}

}
