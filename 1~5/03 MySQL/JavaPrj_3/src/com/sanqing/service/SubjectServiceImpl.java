package com.sanqing.service;

import java.util.List;

import com.sanqing.dao.SubjectDAO;
import com.sanqing.dao.SubjectDAOImpl;
import com.sanqing.po.Subject;
import com.sanqing.util.Page;
import com.sanqing.util.PageResult;
import com.sanqing.util.PageUtil;

public class SubjectServiceImpl implements SubjectService{
	private SubjectDAO subjectDAO =  new SubjectDAOImpl();
	
	public boolean saveSubject(Subject subject) {
		String subjectTile = subject.getSubjectTitle();
		if(subjectDAO.findSubjectByTitle(subjectTile) == null){ //�����������ⲻ���ڣ��������
			subjectDAO.addSubject(subject);
			return true;
		}else {
			return false;
		}
	}

	public PageResult querySubjectByPage(Page page) {
		page = PageUtil.createPage(page.getEveryPage(),
				subjectDAO.findSubjectCount(),page.getCurrentPage());//�����ܼ�¼��������ҳ��Ϣ
		List<Subject> list = subjectDAO.findSubjectByPage(page);//ͨ����ҳ��Ϣȡ������
		PageResult result = new PageResult(page,list);//��װ��ҳ��Ϣ�ͼ�¼��Ϣ�����ظ����ô�
		return result;
	}

	public Subject showSubjectParticular(int subjectID) {
		return subjectDAO.findSubjectByID(subjectID);
	}

	public void updateSubject(Subject subject) {
		subjectDAO.updateSubject(subject);
	}

	public void deleteSubject(int subjectID) {
		subjectDAO.deleteSubject(subjectID);
	}

	public PageResult likeQueryBySubjectTitle(String subjectTitle, Page page) {
		page = PageUtil.createPage(page.getEveryPage(),
				subjectDAO.findLinkQueryCount(subjectTitle),page.getCurrentPage());//�����ܼ�¼��������ҳ��Ϣ
		List<Subject> list = subjectDAO.likeQueryByTitle(subjectTitle, page);//ͨ����ҳ��Ϣģ����ѯ����
		PageResult result = new PageResult(page,list);//��װ��ҳ��Ϣ�ͼ�¼��Ϣ�����ظ����ô�
		return result;
	}

	public List<Subject> randomFindSubject(int number) {
		return subjectDAO.randomFindSubject(number);
	}

	public int accountResult(List<Integer> subjectIDs,
			List<String> studentAnswers) {
		int GeneralPoint = 0;//�ܷ�
		for(int i = 0; i < subjectIDs.size(); i++) {
			String rightAnswer = subjectDAO.
				findSubjectByID(subjectIDs.get(i)).getSubjectAnswer();//�õ���ȷ�𰸣�ͨ������ID
			if(rightAnswer.equals(studentAnswers.get(i))) {
				GeneralPoint += 5;//��5��
			}
		}
		return GeneralPoint;
	}
}
