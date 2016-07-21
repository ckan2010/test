package global;

/**
 * @date   :2016. 7. 21.
 * @author :ckan
 * @file   :CommandFactory.java 
 * @story  :
 */
public class CommandFactory {
	public Command createCommand(String directory,String action){
		return new Command(directory,action);
	}
	public Command createCommand(String directory,String action,String page){
		return new Command(directory,action,page);
	}
}