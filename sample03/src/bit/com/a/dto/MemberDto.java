package bit.com.a.dto;

import java.io.Serializable;

public class MemberDto implements Serializable {
	
	private String id;
	private String pwd;
	private String companyName;
	private String ceo;
	private String companyNumber;
	private String businessCondition;
	private String businessKind;
	private String address1;
	private String address2;
	private String address3;
	private String tel;
	private String phone;
	private String email;
	
	public MemberDto() {
	}

	public MemberDto(String id, String pwd) {
		super();
		this.id = id;
		this.pwd = pwd;
	}

	public MemberDto(String id, String pwd, String companyName, String ceo, String companyNumber,
			String businessCondition, String businessKind, String address1, String address2, String address3,
			String tel, String phone, String email) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.companyName = companyName;
		this.ceo = ceo;
		this.companyNumber = companyNumber;
		this.businessCondition = businessCondition;
		this.businessKind = businessKind;
		this.address1 = address1;
		this.address2 = address2;
		this.address3 = address3;
		this.tel = tel;
		this.phone = phone;
		this.email = email;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCeo() {
		return ceo;
	}

	public void setCeo(String ceo) {
		this.ceo = ceo;
	}

	public String getCompanyNumber() {
		return companyNumber;
	}

	public void setCompanyNumber(String companyNumber) {
		this.companyNumber = companyNumber;
	}

	public String getBusinessCondition() {
		return businessCondition;
	}

	public void setBusinessCondition(String businessCondition) {
		this.businessCondition = businessCondition;
	}

	public String getBusinessKind() {
		return businessKind;
	}

	public void setBusinessKind(String businessKind) {
		this.businessKind = businessKind;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getAddress3() {
		return address3;
	}

	public void setAddress3(String address3) {
		this.address3 = address3;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "MemberDto [id=" + id + ", pwd=" + pwd + ", companyName=" + companyName + ", ceo=" + ceo
				+ ", companyNumber=" + companyNumber + ", businessCondition=" + businessCondition + ", businessKind="
				+ businessKind + ", address1=" + address1 + ", address2=" + address2 + ", address3=" + address3
				+ ", tel=" + tel + ", phone=" + phone + ", email=" + email + "]";
	}
	
}
