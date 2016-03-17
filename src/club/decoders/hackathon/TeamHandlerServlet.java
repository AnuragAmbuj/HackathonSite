package club.decoders.hackathon;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import club.decoders.models.TeamModel;

public class TeamHandlerServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String leader;
		String mate1;
		String mate2;
		leader = req.getParameter("teamleader");
		mate1 = req.getParameter("teammate1");
		mate2 = req.getParameter("temamate2");
		if(mate1 == null)
		{
			mate1 = "NA";
		}
		if(mate2 == null)
		{
			mate2 = "NA";
		}
		TeamModel tm = new TeamModel(leader,mate1,mate2); 
		String status;
		if(DatastoreMaster.insertTeam(tm))
		{
			status = "Team Formed sucessfully";
		}
		else
		{
			status = "No!USNs unregisterd or already a part of team";
		}
		req.setAttribute("status", status);
		RequestDispatcher rd= getServletConfig().getServletContext().getRequestDispatcher("/status.jsp");
		rd.forward(req, resp);
		
	}
	
	

}
