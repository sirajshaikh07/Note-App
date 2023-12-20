package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class SessionFactoryProvider {

	
	
	static SessionFactory factory=null;
	
	public static SessionFactory getSessionFactory()
	{
		
		if(factory==null)
		{
			
			factory=new Configuration().configure("config.xml").buildSessionFactory();
			
			
			
		}
		
		
		return factory;
		
		
		
		
	}
	
    public void closeFactory()
    {
    	
    	if(factory.isOpen())
    	{
    		
    		factory.close();
    	}
    	
    }
	
	
}
