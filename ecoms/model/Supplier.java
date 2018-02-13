package shan.ecoms.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table
public class Supplier {

	
	@Id
	@GeneratedValue
	String supid;
	
	@NotNull
	String supname;
	@NotNull
	String supadd;
	public String getSupid() {
		return supid;
	}
	public void setSupid(String supid) {
		this.supid = supid;
	}
	public String getSupname() {
		return supname;
	}
	public void setSupname(String supname) {
		this.supname = supname;
	}
	public String getSupadd() {
		return supadd;
	}
	public void setSupadd(String supadd) {
		this.supadd = supadd;
	}
	
	
}