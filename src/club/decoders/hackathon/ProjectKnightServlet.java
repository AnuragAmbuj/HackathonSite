package club.decoders.hackathon;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import club.decoders.models.HackathonCandidate;

public class ProjectKnightServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -5433310898201310313L;

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		try {
			doPost(req, resp);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			System.out.println("Here in doGet problem is there!");
		}
	}

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*String firstname;
		String lastname;
		String email;
		String usn;
		String phone;
		String cgpa;
		firstname = req.getParameter("firstname");
		lastname = req.getParameter("lastname");
		email = req.getParameter("email");
		usn = req.getParameter("usn");
		phone = req.getParameter("phone");
		cgpa = req.getParameter("cgpa");
		//HackathonCandidate hck = new HackathonCandidate(firstname, lastname, email, usn,phone,cgpa);
		//DatastoreMaster.insertHackathonCandidate(hck);
		 * 
		 */
	}
	
}
