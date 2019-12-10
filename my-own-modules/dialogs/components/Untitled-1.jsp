<%@ page session="false" contentType="text/html;charset=UTF-8"
%><%@ page import="java.sql.*,
				   java.io.*,
				   java.io.IOException,
				   java.net.*,
				   java.util.*,
				   java.util.regex.*,
				   java.text.*,
				   javax.net.*,
				   javax.json.*,
				   javax.mail.internet.InternetAddress,
				   org.json.JSONObject"
%><%@ page import="org.apache.commons.logging.Log,
				   org.apache.commons.lang.StringUtils"
%><%
%><%@ page import="org.opencms.main.OpenCms,
				   org.opencms.main.CmsLog,
				   org.opencms.jsp.CmsJspActionElement,
				   org.opencms.jsp.CmsJspNavElement,
				   org.opencms.jsp.util.*,
				   org.opencms.mail.CmsHtmlMail"
%><%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms"
%><%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"
%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
%><%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"
%>

<c:set var="navStartFolder">/prudential-th/en/General/</c:set>
<c:set var="locale" value="${cms.locale}" />
<fmt:setLocale value="${param.language}" />

<cms:bundle basename="com.prudential.template.kh.contactUs">
	<c:set var="typeofenquiryIndex" value="${param.enquirytype}"></c:set>
	<c:set var="typeofenquiryString"><fmt:message key="key.customerEnquiryForm.enquirytype.${param.enquirytype}" /></c:set>
 	<c:set var="emailString"><fmt:message key="key.mail.sendto" /></c:set>
   	<c:set var="sendfromEmail"><fmt:message key="key.mail.sendfrom" /></c:set>
	<c:set var="sendfromName"><fmt:message key="key.mail.sendfromName" /></c:set>
  <c:set var="secret"><fmt:message key="key.mail.secret" /></c:set>
</cms:bundle>

<%!
/**
 * The FormHandler class is used to handle all form manipulation.
 *
 * Author: Toni Lam
 * Version: 1.1
 * Date: 17 March 2016
 */
public static class FormHandler {
	private final String REGEXP_ANY_NUMBER = "[0-9]";
	private final String REGEXP_ALL_NUMBER = "^[0-9]*$";
	private final String REGEXP_AGE_RANGE = "^[0|1]{1}[0-9]{2}|[0-9]{2}$";
	private final String REGEXP_VAILD_EMAIL =
		"^(([^<>\\(\\)\\[\\]\\.,;:\\s@\"]+(\\.[^<>\\(\\)\\[\\]\\.,;:\\s@\"]+)*)|(\".+\"))@(([^<>\\(\\)\\[\\]\\.,;:\\s@\"]+\\.)+[^<>\\(\\)\\[\\]\\.,;:\\s@\"]{2,})$";
	private final String REGEXP_POLICY_NUMBER = "^[0-9\\-]{1}[0-9]*$";

	private HttpServletRequest request;
	private HttpServletResponse response;

	/**
	 * Constructor
	 */
	public FormHandler() {

	}

	/**
	 * Set the HttpServletRequest for this instant.
	 */
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	/**
	 * Set the HttpServletResponse for this instant.
	 */
	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

	/**
	 * Get the value of form data via HttpServletRequest.
	 * Precondition: request is defined.
	 */
	public String getParameter(String param) {
		String in = request.getParameter(param);
		if (in != null && in.length() >= 0) {
			return request.getParameter(param);
		}
		return "";
	}

	/**
	 * Replace all special characters in the given string.
	 */
	public String convertSpecialChar(String input) {
		String processString = input;
		processString = processString.replaceAll("<", "&lt;");
		processString = processString.replaceAll(">", "&gt;");
		processString = processString.replaceAll("&", "&amp;");
		processString = processString.replaceAll("\"", "&quot;");
		processString = processString.replaceAll(" ", "&nbsp;");
		processString = processString.replaceAll("'", "&#39;");
		return processString;
	}
	
	/**
	 * Replace all special characters in the given string.
	 */
	public String convertSpecialChartoHTML(String input) {
		String processString = input;
		processString = processString.replaceAll("&lt;", "<");
		processString = processString.replaceAll("&gt;", ">");
		processString = processString.replaceAll("&amp;", "&");
		processString = processString.replaceAll("&quot;", "\"");
		processString = processString.replaceAll("&nbsp;", " ");
		processString = processString.replaceAll("&#39;", "'");
		return processString;
	}

	public boolean validateAge(String input) {
		if (input.length() > 0){
			Pattern paramPattern = Pattern.compile(REGEXP_AGE_RANGE);
			Matcher matcher = paramPattern.matcher(input);
			return matcher.find();
		}
		return true;
	}

	/**
	 * Validate the email address is valid based on client's business logic.
	 */
	public boolean validateEmail(String emailAddr){
		if (emailAddr.length() > 0) {
			Pattern emailPattern = Pattern.compile(REGEXP_VAILD_EMAIL);
			Matcher matcher = emailPattern.matcher(emailAddr);
			return matcher.find();
		}
		return true;
	}

	public boolean validateNotEmpty(String input) {
		return (input != null && input.length() > 0 && input != "");
	}

	public boolean validateDigitOnly(String input) {
		Pattern paramPattern = Pattern.compile(REGEXP_ALL_NUMBER);
		Matcher matcher = paramPattern.matcher(input);
		return matcher.find();
	}

	public boolean validateMaxLen(String input, int max) {
		return (input.length() <= max);
	}

	public boolean validateMinLen(String input, int min) {
		return (input.length() >= min);
	}

	public boolean validateExcludeNum(String input) {
		if (input.length() > 0) {
			Pattern paramPattern = Pattern.compile(REGEXP_ANY_NUMBER);
			Matcher matcher = paramPattern.matcher(input);
			return !matcher.find();
		}
		return true;
	}

	public boolean validateInList(String input, String[] acceptedList) {
		for (String item: acceptedList) {
			if(item.equals(input))
				return true;
		}
		return false;
	}

	public boolean validatePolicyNumber(String input) {
		Pattern paramPattern = Pattern.compile(REGEXP_POLICY_NUMBER);
		Matcher matcher = paramPattern.matcher(input);
		return matcher.find();
	}
}
/* End of class: FormHandler*/

/**
 * The FormPost class manage form response and send email activities.
 * Last update: 16 June 2016
 * Add Vietnamese to reply email, users now will recieve reply email with dual languages.
 * Changed variable MAX_LEN_EMAIL from 30 to 50, now email validation keeps consistent with frontend validation rules.
 */
public static class FormPost {

	private final int MAX_LEN_NAME = 30;
	private final int MAX_LEN_EMAIL = 50;
	private final int MAX_LEN_PHONE = 11;
	private final int MAX_LEN_ID = 12;
	private final int MAX_LEN_ENQUIRY = 1000;
	private final String REGEXP_EMAIL =
		"^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$";

	private final String VALID_TYPE_OF_ENQUIRY[] = {"0", "1"};
	private final String VALID_MARIDAL_STATUS[] = {"", "S", "M","O"};
	private final String VALID_SEX[] = {"", "M","F"};
	private final String VALID_LANG[] = {"km", "en"};
	private final String VALID_OWNER_OPTION[] = {"Yes", "No"};

	private FormHandler form = new FormHandler();

	/* Form parameter */
	private Hashtable<String, String> fields = new Hashtable<String, String>();
	private String[] formParam = {
			"firstname",
			"lastname",
			"phonenum",
			"email",
			"idNum",
			"language",
			"policyowner",
			"policynum",
			"enquirytype",
			"birthdaydd",
			"birthdaymm",
			"birthdayyy",
			"homephonenumber",
			"officephonenumber",
			"oldaddress",
			"newaddress",
			"enquirycontent",
			"response"
		};
	private String sentfrom;
	private	String sendfromEmail;
	private String sendfromName;
	private String[] officeEmails;
	private String emailSendingExpcetion;

	private String output = "";

	/* Constructor */
	public FormPost() {
		sentfrom = "Desktop";
	}

	/**
	 * Set request & response for the object: form.
	 */
	public void setHttpIO(HttpServletRequest request, HttpServletResponse response){
		form.setRequest(request);
		form.setResponse(response);
	}

	public void readFormData() {
		for (String param : formParam) {
			fields.put(param, form.getParameter(param));
		}
	}

	public String getParam(String formitem) {
		if (fields.containsKey(formitem)){
			return fields.get(formitem);
		}
		return "";
	}

	public boolean validate() {
		boolean resNotNull = (getParam("response") != null || !getParam("response").equals(""));

		if (!getParam("firstname").matches("^[^0-9]{1,30}$")){
		}else if(!getParam("lastname").matches("^[^0-9]{1,30}$")){
		}else if(!getParam("policyowner").matches("^Yes|No$")){
		}else if(getParam("policyowner").matches("^Yes$") && !getParam("policynum").matches("(^[-]+\\d{1,})+$|(^[0-9]+\\d{0,})+$")){
		}else if(!getParam("enquirytype").matches("^[0-9]{1,2}$")){
		}else if(getParam("enquirycontent").length()>1000){
		}else if(!getParam("phonenum").matches("(^[+]+\\d{8,})+$|(^[0-9]+\\d{7,})+$")){
		}else if(!getParam("email").matches(REGEXP_EMAIL)){
		}else if(!getParam("idNum").matches("^[\\d]{6,15}$")){
		}else{
			return true;
		}
		return false;
	}

	public boolean convertFormData() {
		try{
			for (String param : formParam) {
				fields.put(param, form.convertSpecialChar(fields.get(param)));
			}
			return true;
		}catch(Exception e){
		}
		return false;
	}

	public void setEmailSender(String emailAddr){
		sendfromEmail = emailAddr;
	}

	public void setEmailSenderName(String emailName){
		sendfromName = emailName;
	}

	public void setOfficeEmails(String[] emailAddrs){
		officeEmails = emailAddrs;
	}

	public boolean sendEmail(String typeofenquiryText) {
		String headingToCS =
			"A customer would like to enquire about [" + typeofenquiryText + "], please follow up accordingly.\n\n";
		String headingBkToClient = "Thank you. Your enquiry will be forwarded to our customer service personnel and will be followed up shortly.\n\n";

		String message = new String();
		String subject = new String();
		String customerName = new String();
		String enquiryTypeIndex = getParam("enquirytype");

		if (form.validateInList(getParam("language"), VALID_LANG)){ /* check the language again in case the validate()
																	  function is not called */
			try {
				message = "";
				message += "<strong>Contact details</strong>\n";
				message += "First Name: " + getParam("firstname") + "\n";
				message += "Last Name: " + getParam("lastname") + "\n";
				message += "Email: " + getParam("email") + "\n";
				message += "Phone: " + getParam("phonenum") + "\n";
				message += "Prudential Current Customer: " + getParam("policyowner") + "\n";
				message += "Policy Number: " + getParam("policynum") + "\n";
				message += "Information enquiry(s): " + typeofenquiryText + "\n";
				message += "Customer enquiry:\n" + getParam("enquirycontent") + "\n";
				if(enquiryTypeIndex.equals("4")){
					message += "Date of Birth: " + getParam("birthdaydd") +"/"+ getParam("birthdaymm") +"/" + getParam("birthdayyy") + "\n";
					message += "Home Phone number:" + getParam("homephonenumber") + "\n";
					message += "Office Phone Number:" + getParam("officephonenumber") + "\n";
					message += "Old Address:\n" + getParam("oldaddress") + "\n";
					message += "New Address:\n" + getParam("newaddress") + "\n";
				}

				subject = "Customer Enquiry - [" + typeofenquiryText + "]";
				customerName = getParam("firstname")+' '+getParam("lastname");
				customerName = form.convertSpecialChartoHTML(customerName);

				if (officeEmails.length > 0) {
					for (String emailaddress : officeEmails) {
						CmsHtmlMail smToCs = new CmsHtmlMail();
						smToCs.setCharset("utf-8");
						smToCs.setMsg(headingToCS + message);
						smToCs.setSubject(subject);
						smToCs.setFrom(getParam("email"),customerName); //sendfromEmail, 
						smToCs.addTo(emailaddress);
						smToCs.send();
					}
				} else {
				}

				//send email back to customer
				if (form.validateNotEmpty(getParam("email"))) {
					CmsHtmlMail smToClient = new CmsHtmlMail();
					smToClient.setCharset("utf-8");
					smToClient.setMsg(headingBkToClient+message);
					smToClient.setSubject(subject);
					smToClient.setFrom(sendfromEmail, sendfromName);
					//smToClient.setFrom("KF CS Office");
					smToClient.addTo(getParam("email"));
					smToClient.send();
				} else {
				}
			} catch(Exception e) {
				emailSendingExpcetion = e.getMessage();
					CmsLog.INIT.info(e.toString());
				return false;
			}
			return true;
		}
		return false;
	}

	public void appendOutput(String text) {
		if (output == null) {
			output = "";
		}
		output += text;
	}

	public String getOutput() {
		return "{" + output + ", detail: " + emailSendingExpcetion + "}";
	}
}
%>

<%
/* Create object and do setting */
FormPost thisForm = new FormPost();
thisForm.setHttpIO(request, response);

// ---------- Get parameters -------------
thisForm.readFormData();
String sitekey = OpenCms.getModuleManager().getModule("com.prudential.template.kh").getParameter("secretKey", "6LcMJQ4TAAAAANIq6jQbi7Gzo5f3cOn9nanaNxk9");
String typeofenquiryText = pageContext.getAttribute("typeofenquiryString").toString();

// ---------- server side validation -------------
boolean formValid = thisForm.validate();
boolean formConverted = thisForm.convertFormData();
// -----------------------------------------------

// ----------- Verify Recaptcha ------------------
boolean recaptchaValid = false;

String proxySwitch = OpenCms.getModuleManager().getModule("com.prudential.template.kh").getParameter("proxy", "false");
String googleServerUrl= "https://www.google.com/recaptcha/api/siteverify?secret="+sitekey+"&response="+thisForm.getParam("response");
CmsLog.INIT.info("googleServerUrl:"+googleServerUrl+"proxySwitch:"+proxySwitch);
if ("true".equals(proxySwitch)) {
	try{
		String proxyIp = OpenCms.getModuleManager().getModule("com.prudential.template.kh").getParameter("proxyIp", "128.236.63.10");
		int proxyPort = Integer.parseInt(OpenCms.getModuleManager().getModule("com.prudential.template.kh").getParameter("proxyPort", "8080"));
		String proxyUserName = OpenCms.getModuleManager().getModule("com.prudential.template.kh").getParameter("proxyUserName", "");
		String proxyPassword = OpenCms.getModuleManager().getModule("com.prudential.template.kh").getParameter("proxyPassword", "");

	    URL googleServer = new URL(googleServerUrl);

		InetSocketAddress addr = new InetSocketAddress(proxyIp, proxyPort);
		Proxy proxy = new Proxy(Proxy.Type.HTTP, addr);

		HttpURLConnection connectionsite = (HttpURLConnection) googleServer.openConnection(proxy);

		BufferedReader in = new BufferedReader(new InputStreamReader(connectionsite.getInputStream()));
			String inputLine;
			StringBuffer resbuf = new StringBuffer();

			while ((inputLine = in.readLine()) != null) {
				resbuf.append(inputLine);
			}
			in.close();

		JSONObject json = new JSONObject(resbuf.toString());
		recaptchaValid = json.getBoolean("success");
	}catch(Exception e){
			CmsLog.INIT.info(e.toString());
	}
} else {
	try{
    	URLConnection connectionsite;
   		connectionsite = new URL(googleServerUrl).openConnection();
		BufferedReader in = new BufferedReader(new InputStreamReader(connectionsite.getInputStream()));
		String inputLine;
		StringBuffer resbuf = new StringBuffer();

		while ((inputLine = in.readLine()) != null) {
			resbuf.append(inputLine);
		}
		in.close();

		JSONObject json = new JSONObject(resbuf.toString());
		recaptchaValid = json.getBoolean("success");
	} catch (Exception e){
			CmsLog.INIT.info(e.toString());
	}
}
// ----------- END Verify Recaptcha --------------
CmsLog.INIT.info("formValid:"+formValid+"formConverted:"+formConverted+"recaptchaValid:"+recaptchaValid);
if (formValid && formConverted && recaptchaValid) {
	/* Only process email functionality if all form data and Recpatcha test passed */
	boolean enableSendEmail = true;
	//enableSendEmail = false;

	if (enableSendEmail) {
		String emailTo = pageContext.getAttribute("emailString").toString();
		String emailRecieverEmail = (String)pageContext.getAttribute("sendfromEmail");
		String emailRecieverName = (String)pageContext.getAttribute("sendfromName");
		thisForm.setOfficeEmails(emailTo.split(","));
		thisForm.setEmailSender(emailRecieverEmail);
		thisForm.setEmailSenderName(emailRecieverName);
CmsLog.INIT.info("emailTo:"+emailTo+"emailRecieverEmail:"+emailRecieverEmail+"emailRecieverName:"+emailRecieverName);
/* Determine return status*/
		if (thisForm.sendEmail(typeofenquiryText)) { // all processes including sending email are done.
			thisForm.appendOutput("status:true");
			//thisForm.appendOutput(",status:false");
		} else { // exception when sending email
			thisForm.appendOutput("status:false, errMsg:Exception on sending Email");
		}
	} else { // no email sent and all processes are done.
		thisForm.appendOutput("status:true");
	}
} else { // validation fail.
	// thisForm.appendOutput("status:false");
	if(!formValid){
		thisForm.appendOutput("status:false, errMsg:formValid");
	}else if(!formConverted){
		thisForm.appendOutput("status:false, errMsg:formConverted");
	}else if(!recaptchaValid){
		thisForm.appendOutput("status:false, errMsg:recaptchaValid");
	}
}

out.print(thisForm.getOutput());
%>
