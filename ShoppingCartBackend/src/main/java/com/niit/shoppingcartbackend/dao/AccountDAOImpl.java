package com.niit.shoppingcartbackend.dao;
import java.util.List;
import org.hibernate.Query;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcartbackend.model.Account;

@Repository("accountDAO")
public class AccountDAOImpl implements AccountDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public AccountDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Transactional
	public void saveOrUpdate(Account account) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(account);
		Session session = (Session) sessionFactory.getCurrentSession();
		session.saveOrUpdate(account);
	}

	@Transactional
	public void delete(String id)
	{
		// TODO Auto-generated method stub
		Account Ctd = new Account();
		Ctd.setUserID(id);
		sessionFactory.getCurrentSession().delete(Ctd);

	}

	@Transactional
	public Account get(String id) {
		String hql = "from Account where id=" + "'" + id + "'";
		SessionFactory sessionFactory=new Configuration().configure().buildSessionFactory();
		Session session=sessionFactory.getCurrentSession();
		Query query = session.createQuery(hql);
		List<Account> listAccount = query.list();
		if (listAccount != null && !listAccount.isEmpty()) {
			return listAccount.get(0);
		}
		return null;
	}

	@Transactional
	public List<Account> list() {
		@SuppressWarnings("unchecked")
		List<Account> listaccount = (List<Account>) sessionFactory.getCurrentSession().createCriteria(Account.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listaccount;
	}
	public Account getByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}
	public boolean trasfer(String id, int amount) {
		// TODO Auto-generated method stub
		return false;
	}
	public boolean trasfer(String userID, Object totalAmount) {
		// TODO Auto-generated method stub
		return false;
	}

	

}
