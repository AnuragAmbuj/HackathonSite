package club.decoders.configuarators;

import java.util.HashMap;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.xml.sax.XMLReader;

public class ConfigurationReader {
	
	HashMap<Integer,String> adminmap;
	public ConfigurationReader()
	{
		adminmap = new HashMap<>();
	}
	public void initializeConfig()
	{
		adminmap = new HashMap();
	}
	public HashMap<Integer,String> readDataFromXML(String path)
	{
		HashMap<Integer,String> data = new HashMap<Integer, String>();
		
		return data;
	}
	/**
	 * @return the adminmap
	 */
	public HashMap<Integer, String> getAdminmap() {
		return adminmap;
	}
	/**
	 * @param adminmap the adminmap to set
	 */
	public void setAdminmap(HashMap<Integer, String> adminmap) {
		this.adminmap = adminmap;
	}
	

}
