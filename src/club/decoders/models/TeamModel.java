package club.decoders.models;

public class TeamModel {
	
	String leader;
	String mate1;
	String mate2;
	
	public TeamModel(String leader,String mate1,String mate2)
	{
		this.leader = leader;
		this.mate1 = mate1;
		this.mate2 = mate2;
	}

	/**
	 * @return the leader
	 */
	public String getLeader() {
		return leader;
	}

	/**
	 * @param leader the leader to set
	 */
	public void setLeader(String leader) {
		this.leader = leader;
	}

	/**
	 * @return the mate1
	 */
	public String getMate1() {
		return mate1;
	}

	/**
	 * @param mate1 the mate1 to set
	 */
	public void setMate1(String mate1) {
		this.mate1 = mate1;
	}

	/**
	 * @return the mate2
	 */
	public String getMate2() {
		return mate2;
	}

	/**
	 * @param mate2 the mate2 to set
	 */
	public void setMate2(String mate2) {
		this.mate2 = mate2;
	}
	

}
