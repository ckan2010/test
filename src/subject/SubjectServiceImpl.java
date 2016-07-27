package subject;

import grade.GradeDAO;

/**
 * @date   :2016. 7. 26.
 * @author :ckan
 * @file   :SubjectServiceImpl.java 
 * @story  :
 */
public class SubjectServiceImpl implements SubjectService{
	SubjectDAO dao = SubjectDAO.getInstance();
	private  SubjectServiceImpl() {
		// TODO Auto-generated constructor stub
	}
	private static SubjectServiceImpl instance = new SubjectServiceImpl();
	
	public static SubjectServiceImpl getInstance() {
		return instance;
	}
	@Override
	public void insert(SubjectBean sub) {
		dao.insert(sub);
	}

}
