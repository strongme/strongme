package org.strongme.walter.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class InputAction extends ActionSupport {
	
	private String[] inputs;

	public String[] getInputs() {
		return inputs;
	}

	public void setInputs(String[] inputs) {
		this.inputs = inputs;
	}
	
	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("inputs", inputs);
		for(String s : inputs) {
			System.out.println("DATA FROM CLIENT BROWSER :"+s);
		}
		
		return SUCCESS;
		
	}
	
	

}
