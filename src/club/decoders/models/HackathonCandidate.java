package club.decoders.models;

public class HackathonCandidate implements Comparable<HackathonCandidate> {
	private String firstname;
	private String lastname;
	private String email;
	private String usn;
	private String phone;
	private String cgpa;
	private String teamName;

	public HackathonCandidate(String firstname, String lastname, String email,
			String usn, String phone,String cgpa,String teamname) {
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.usn = usn;
		this.phone = phone;
		this.cgpa = cgpa;
		this.teamName = teamname;
	}

	/**
	 * @return the teamName
	 */
	public String getTeamName() {
		return teamName;
	}

	/**
	 * @param teamName the teamName to set
	 */
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}

	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}

	/**
	 * @return the cgpa
	 */
	public String getCgpa() {
		return cgpa;
	}

	/**
	 * @param cgpa the cgpa to set
	 */
	public void setCgpa(String cgpa) {
		this.cgpa = cgpa;
	}

	/**
	 * @return the firstname
	 */
	public String getFirstname() {
		return firstname;
	}

	/**
	 * @param firstname
	 *            the firstname to set
	 */
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	/**
	 * @return the lastname
	 */
	public String getLastname() {
		return lastname;
	}

	/**
	 * @param lastname
	 *            the lastname to set
	 */
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email
	 *            the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the usn
	 */
	public String getUsn() {
		return usn;
	}

	/**
	 * @param usn
	 *            the usn to set
	 */
	public void setUsn(String usn) {
		this.usn = usn;
	}

	@Override
	public int compareTo(HackathonCandidate arg0) {
		// TODO Auto-generated method stub
		if(this.getTeamName().compareTo(arg0.getTeamName())==0)
			return 0;
		else if(this.getTeamName().compareTo(arg0.getTeamName())>0)
			return 1;
		else
			return -1;
	
	}

}
