package team.piupiu.qianqian.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.piupiu.qianqian.dao.SiteDataDAO;

import java.util.ArrayList;
import java.util.List;

@Service
public class SiteDataService {

    @Autowired
    SiteDataDAO siteDataDAO;

    public List siteData(){
        List list = new ArrayList();
        list.add(0,siteDataDAO.projectsAmount());
        list.add(1,siteDataDAO.backersAmount());
        list.add(2,siteDataDAO.raisedAmount());

        return list;
    }
}
