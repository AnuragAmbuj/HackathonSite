package club.decoders.hackathon;

import java.util.ArrayList;

import club.decoders.models.AnnouncementModel;
import club.decoders.models.HackathonCandidate;
import club.decoders.models.TeamModel;
import club.decoders.utilities.AnnouncementModelSorter;
import club.decoders.utilities.TeamModelSorter;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;

public class DatastoreMaster {
	protected static DatastoreService datastoreService = DatastoreServiceFactory
			.getDatastoreService();

	public static DatastoreService getDatastoreService() {
		return datastoreService;
	}

	public static Entity createEntity(String kind, String key) {
		Entity entity = new Entity(kind, key);
		return entity;
	}

	public static void writeProperty(Entity entity, String property,
			String value) {
		entity.setProperty(property, value);
	}

	public static void deleteProperty(Entity entity, String property) {
		entity.removeProperty(property);
	}

	public static void deleteEntity(String kind) {
		// TODO
	}

	public static boolean connectionCreator() {
		// TODO
		return true;
	}

	public String getConnectionString() {
		// TODO
		return null;
	}

	public static boolean insertHackathonCandidate(HackathonCandidate hck) {
		try {
			Entity entity = createEntity("Candidate", hck.getUsn().trim());
			entity.setProperty("Team", hck.getTeamName());
			entity.setProperty("UserID", hck.getUsn().trim());
			entity.setProperty("firstname", hck.getFirstname().trim());
			entity.setProperty("lastname", hck.getLastname().trim());
			entity.setProperty("email", hck.getEmail().trim());
			entity.setProperty("usn", hck.getUsn().trim());
			entity.setProperty("phone", hck.getPhone().trim());
			entity.setProperty("cgpa", hck.getCgpa().trim());
			getDatastoreService().put(entity);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	public static ArrayList<HackathonCandidate> getAllCandidates() {
		String firstname;
		String lastname;
		String email;
		String usn;
		String phone;
		String cgpa;
		String teamname;
		Query q = new Query("Candidate");
		ArrayList<HackathonCandidate> alist = new ArrayList<HackathonCandidate>();
		PreparedQuery pq = DatastoreMaster.getDatastoreService().prepare(q);
		for (Entity all : pq.asIterable()) {
			Object a = all.getProperty("Team");
			if(a == null)
				teamname = "Team"+all.getProperty("usn");
			else
				teamname = a.toString();
			firstname = all.getProperty("firstname").toString();
			lastname = all.getProperty("lastname").toString();
			email = all.getProperty("email").toString();
			usn = all.getProperty("usn").toString();
			phone = all.getProperty("phone").toString();
			cgpa = all.getProperty("cgpa").toString();
			HackathonCandidate hccan = new HackathonCandidate(firstname,
					lastname, email, usn, phone, cgpa, teamname);
			alist.add(hccan);
		}
		TeamModelSorter tmodelModelSorter = new TeamModelSorter(alist);
		alist = tmodelModelSorter.sortList();
		return alist;

	}

	public static boolean insertHackathonAnnouncement(AnnouncementModel amodel) {
		try {
			Entity entity = createEntity("Announcements", amodel.getAnId());
			entity.setProperty("andate", amodel.getAndate());
			entity.setProperty("antitle", amodel.getAntitle());
			entity.setProperty("antext", amodel.getAntext());
			entity.setProperty("anurl", amodel.getAnurl());
			entity.setProperty("anperson", amodel.getAnperson());
			getDatastoreService().put(entity);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	public static ArrayList<AnnouncementModel> getAllAnnouncements() {
		Query q = new Query("Announcements");
		PreparedQuery pq = getDatastoreService().prepare(q);
		ArrayList<AnnouncementModel> anmodels = new ArrayList<AnnouncementModel>();
		for (Entity all : pq.asIterable()) {
			Object anId = all.getKey().getName();
			Object andate = all.getProperty("andate");
			Object antitle = all.getProperty("antitle");
			Object antext = all.getProperty("antext");
			Object anurl = all.getProperty("anurl");
			Object anperson = all.getProperty("anperson");
			if (anId != null && andate != null && antext != null
					&& anurl != null && anperson != null) {
				anmodels.add(new AnnouncementModel(andate.toString(), antitle
						.toString(), antext.toString(), anurl.toString(),
						anperson.toString(), anId.toString()));
			}
		}
		AnnouncementModelSorter sorter = new AnnouncementModelSorter(anmodels);
		anmodels = sorter.sortList();
		return anmodels;
	}

	public static boolean insertTeam(TeamModel tm) {
		boolean flag = true;
		if (StorageValidator.isAlreadyInTeam(tm.getLeader())) {
			flag = false;
		}
		if (StorageValidator.isAlreadyInTeam(tm.getMate1())
				&& !tm.getMate1().equals("NA")) {
			flag = false;
		}
		if (StorageValidator.isAlreadyInTeam(tm.getMate2())
				&& !tm.getMate2().equals("NA")) {
			flag = false;
			;
		}
		if (!StorageValidator.isAlreadyPresent(tm.getLeader())) {
			flag = false;
		}
		if (!StorageValidator.isAlreadyPresent(tm.getMate1())) {
			flag = false;
		}
		if (!StorageValidator.isAlreadyPresent(tm.getMate2())) {
			flag = false;
		}
		if (flag == true) {
			Entity entity = new Entity("Teams");
			entity.setProperty("leader", tm.getLeader());
			entity.setProperty("tememate1", tm.getMate1());
			entity.setProperty("teamate2", tm.getMate2());
			getDatastoreService().put(entity);
		} else {
			flag = false;
		}

		return flag;
	}
}
