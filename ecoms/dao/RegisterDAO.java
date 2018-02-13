package shan.ecoms.dao;

import shan.ecoms.model.Register;



public interface RegisterDAO {
	public boolean addRegister(Register user);
	public  Register getRegister(String username);
}
