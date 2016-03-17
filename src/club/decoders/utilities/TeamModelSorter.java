package club.decoders.utilities;

import java.util.ArrayList;
import java.util.Collections;

import club.decoders.models.HackathonCandidate;

public class TeamModelSorter {

	ArrayList<HackathonCandidate> hlist = new ArrayList<>();

	/**
	 * @param hlist
	 */
	public TeamModelSorter(ArrayList<HackathonCandidate> hlist) {
		this.hlist = hlist;
	}

	public ArrayList<HackathonCandidate> sortList() {
		Collections.sort(hlist);
		return hlist;
	}
}
