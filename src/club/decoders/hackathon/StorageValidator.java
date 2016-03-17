package club.decoders.hackathon;

import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;

public class StorageValidator {

	public static boolean isAlreadyPresent(String usn) {
		Query q = new Query("Candidate");
		PreparedQuery pq = DatastoreMaster.getDatastoreService().prepare(q);
		for (Entity all : pq.asIterable()) {
			if (all.getProperty("usn").equals(usn))
				return true;

		}
		return false;
	}

	public static boolean isAlreadyInTeam(String usn) {
		Query q = new Query("Teams");
		PreparedQuery pq = DatastoreMaster.getDatastoreService().prepare(q);
		for (Entity all : pq.asIterable()) {
			if (all.getProperty("leader").equals(usn)
					|| all.getProperty("teamamte1").equals(usn)
					|| all.getProperty("teammate2").equals(usn)) {
				return true;

			}
		}
		return false;
	}
}
