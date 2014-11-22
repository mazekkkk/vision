package com.al.core.component.impl;

import com.al.core.component.BaseDao;
import com.al.core.util.DBUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.*;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * User: maorl
 * Date: 13-8-29
 * Time: 上午10:07
 */
@Repository
public abstract class BaseDaoImpl<T, ID extends Serializable> implements BaseDao{

    @Resource
    private SessionFactory sessionFactory;
    final private Class<T> poClass;
    final private int defaultPageSize = 10;
    private static final Log logger = LogFactory.getLog(BaseDaoImpl.class);

    protected BaseDaoImpl(Class<T> poClass) {
        this.poClass = poClass;
    }

    private Session getSession() {
        Session session = null;
        try {
            session = sessionFactory.getCurrentSession();
            logger.debug("get a current session");
        } catch (HibernateException he) {
            session = sessionFactory.openSession();
            logger.debug("open a new session");
        }
        return session;
    }

    public ID save(T po) {
        Session session = this.getSession();
        ID id = (ID) session.save(po);
        return id;
    }
    public void saveList(List list) {
        Session session = this.getSession();

        for (int i = 0; i <= list.size() - 1; i ++) {
            Transaction tx = session.beginTransaction();
            for (int j = i * 100, k = 0;j < list.size() &&k <= 99; j ++ ,k ++ ) {
                session.save(list.get(j));
                session.flush();
                session.clear();
            }
            tx.commit();
        }
    }

    public void delete(T po) {
        Session session = this.getSession();
        session.delete(po);
    }

    public void delete(ID id) {
        Session session = this.getSession();
        IdentifierLoadAccess iload = session.byId(poClass);
        this.delete((T) (iload.load(id)));
    }

    public void update(T po) {
        Session session = this.getSession();
        session.update(po);
    }

    public void saveOrUpdate(T po) {
        Session session = this.getSession();
        session.saveOrUpdate(po);
    }

    public T get(ID id) {
        Session session = this.getSession();
        return (T) session.get(poClass, id);
    }

    protected List<T> getListByNamedQuery(String queryName, Object... params) {
        Session session = this.getSession();
        Query query = session.getNamedQuery(queryName);
        for (int i = 0; i < params.length; i++) {
            query.setParameter(i, params[i]);
        }
        return (List<T>) query.list();
    }

    protected Pager<T> getPageByNamedQuery(String queryName, int pageSize, int pageNumber, Object... params) {
        Session session = this.getSession();
        Query query = session.getNamedQuery(queryName);

        if (pageSize <= 0) {
            pageSize = defaultPageSize;
        }
        if (pageNumber <= 0) {
            pageNumber = 1;
        }
        for (int i = 0; i < params.length; i++) {
            query.setParameter(i, params[i]);
        }
        query.setFirstResult(pageSize * (pageNumber - 1));
        query.setFetchSize(pageSize);
        query.setMaxResults(pageSize);
        List<T> list = (List<T>) query.list();
        int rowCount = this.getTotalCount(query.getQueryString(),params);
        return new Pager<T>(pageSize, pageNumber,rowCount, list);
    }

    protected T getUniqueObject(String queryName,Object... params) {
        Session session = this.getSession();
        Query query = session.getNamedQuery(queryName);
        for (int i = 0; i < params.length; i++) {
            query.setParameter(i, params[i]);
        }
        return  (T)query.uniqueResult();
    }


    private int getTotalCount(String queryString, Object... params) {
        Session session = this.getSession();
        Query query = session.createQuery("select count(*) "+DBUtils.removeOrders(DBUtils.removeSelect(queryString)));
        for (int i = 0; i < params.length; i++) {
            query.setParameter(i, params[i]);
        }
        Object o = query.uniqueResult();
        return ((Long)o).intValue();
    }

    protected int getCount(String queryName, Object... params) {
        Session session = this.getSession();
        Query query = session.getNamedQuery(queryName);
        for (int i = 0; i < params.length; i++) {
            query.setParameter(i, params[i]);
        }
        Object o = query.uniqueResult();
        return ((Long)o).intValue();
    }



}
