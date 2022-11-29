package com.foma_java_mvc_folder.domain;

public class Member { //회원정보 엔티티
	
//	private String username ="";
//	private String userpw= "";
//	private String useremail = "";
//	
//	private double userage =  0;
//	private double userheight = 0;
//	private double userweight = 0;
//	private String userdiabetes ="";
//	private String userhbp ="";
//	
//	private double userbmi=0;
	
	private String username;
	private String userpw;
	private String useremail;
	
	private double userage ;
	private double userheight ;
	private double userweight;
	private String userdiabetes ;
	private String userhbp ;
	
	private double userbmi;
	//지병 9가지 추가(회원정보수정용-체크박스)
	private String userhyperlip;
	private String userobesity;
	private String userheartdis;
	private String userstroke;
	private String userpuldis;
	private String userliverdis;
	private String userosteo;
	private String userarthritis;
	private String usermyoinfar; //심근경색
	

	//생성자 추가(지병9가지)
	public Member(String username, String userpw, String useremail, double userage, double userheight,
			double userweight, String userdiabetes, String userhbp, double userbmi, String userhyperlip,
			String userobesity, String userheartdis, String userstroke, String userpuldis, String userliverdis,
			String userosteo, String userarthritis, String usermyoinfar) {
		super();
		this.username = username;
		this.userpw = userpw;
		this.useremail = useremail;
		this.userage = userage;
		this.userheight = userheight;
		this.userweight = userweight;
		this.userdiabetes = userdiabetes;
		this.userhbp = userhbp;
		this.userbmi = userbmi;
		this.userhyperlip = userhyperlip;
		this.userobesity = userobesity;
		this.userheartdis = userheartdis;
		this.userstroke = userstroke;
		this.userpuldis = userpuldis;
		this.userliverdis = userliverdis;
		this.userosteo = userosteo;
		this.userarthritis = userarthritis;
		this.usermyoinfar = usermyoinfar;
	}



//	public Member(String username, String userpw, String useremail, double userage, double userheight,
//			double userweight, String userdiabetes, String userhbp, double userbmi) {
//		super();
//		this.username = username;
//		this.userpw = userpw;
//		this.useremail = useremail;
//		this.userage = userage;
//		this.userheight = userheight;
//		this.userweight = userweight;
//		this.userdiabetes = userdiabetes;
//		this.userhbp = userhbp;
//		this.userbmi = userbmi;
//	}


	public Member(String username, String userpw) {
		super();
		this.username = username;
		this.userpw = userpw;
	}
	
	public Member(String username) {
	super();
	this.username = username;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return useremail;
	}
	public void setEmail(String email) {
		this.useremail = email;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public double getUserage() {
		return userage;
	}
	public void setUserage(double userage) {
		this.userage = userage;
	}
	public double getUserheight() {
		return userheight;
	}
	public void setUserheight(double userheight) {
		this.userheight = userheight;
	}
	public double getUserweight() {
		return userweight;
	}
	public void setUserweight(double userweight) {
		this.userweight = userweight;
	}
	public String getUserdiabetes() {
		return userdiabetes;
	}
	public void setUserdiabetes(String userdiabetes) {
		this.userdiabetes = userdiabetes;
	}
	public String getUserhbp() {
		return userhbp;
	}
	public void setUserhbp(String userhbp) {
		this.userhbp = userhbp;
	}

	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public double getUserbmi() {
		return userbmi;
	}
	public void setUserbmi(double userbmi) {
		this.userbmi = userbmi;
	}

	public String getUserhyperlip() {
		return userhyperlip;
	}

	public void setUserhyperlip(String userhyperlip) {
		this.userhyperlip = userhyperlip;
	}

	public String getUserobesity() {
		return userobesity;
	}

	public void setUserobesity(String userobesity) {
		this.userobesity = userobesity;
	}

	public String getUserheartdis() {
		return userheartdis;
	}

	public void setUserheartdis(String userheartdis) {
		this.userheartdis = userheartdis;
	}

	public String getUserstroke() {
		return userstroke;
	}

	public void setUserstroke(String userstroke) {
		this.userstroke = userstroke;
	}

	public String getUserpuldis() {
		return userpuldis;
	}

	public void setUserpuldis(String userpuldis) {
		this.userpuldis = userpuldis;
	}

	public String getUserliverdis() {
		return userliverdis;
	}

	public void setUserliverdis(String userliverdis) {
		this.userliverdis = userliverdis;
	}

	public String getUserosteo() {
		return userosteo;
	}

	public void setUserosteo(String userosteo) {
		this.userosteo = userosteo;
	}

	public String getUserarthritis() {
		return userarthritis;
	}

	public void setUserarthritis(String userarthritis) {
		this.userarthritis = userarthritis;
	}

	public String getUsermyoinfar() {
		return usermyoinfar;
	}

	public void setUsermyoinfar(String usermyoinfar) {
		this.usermyoinfar = usermyoinfar;
	}


}
