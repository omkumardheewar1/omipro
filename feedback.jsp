<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--Author : Om Kumar Dheewar
	Date : 01/04/2015
	Copyright © 2015 Techvijyo System and Cyber Solution.
	
	Contact Us:
				Copyright  &copy; 2015  Techvijyo System and Cyber Solution,
				Krishna Nagar near Glorious School,
				Raipur Chhattisgarh,
				Pincode - 492001.
				Tel: +917898555515
				E-Mail : info@techvijyo.com
                -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Techvijyo System and Cyber Solution</title>
<link href="css/techvijyo_styles.css" rel="stylesheet" type="text/css" />
<link href="images/favicon.ico"  rel="SHORTCUT ICON" title="Techvijyo System" id="techvijyo_icon" />

<SCRIPT type="text/javascript" language="javascript">

<!--
function chkSplChar(ctrlname){
  var iChars = "!@#$%^&*()+=-[]\\\';,/{}|\":<>?";
  for (var i = 0; i < ctrlname.value.length; i++) {
	if (iChars.indexOf(ctrlname.value.charAt(i)) != -1) {
	return false;
	}
  }
  return true;
}
	
function validate()
{

var iCha = ". ";

   var cname=document.form1.firstname.value;
	var n=document.form1.firstname.value.length;
	if(n==0)
	{
	alert("Please enter First Name");
		document.form1.firstname.focus();
		return false;
	}
	else
	{
	for (var i = 0; i < 1; i++)
 		{
 	if (iCha.indexOf(cname.charAt(i))!= -1 )
 		{
 	alert("Invalid Entry");
	document.form1.firstname.focus();
		return false;
 		}
 		}
	}


	if (chkSplChar(document.form1.firstname) == false) {
		alert ("Special characters are not allowed.\nPlease remove.");
		document.form1.firstname.focus();
		return false;
	}
	
	
	var mname=document.form1.lastname.value;
	var m=document.form1.lastname.value.length;
	if(m==0)
	{
	alert("Please enter your Last Name");
		document.form1.lastname.focus();
		return false;
	}
	else
	{
	for (var i = 0; i < 1; i++)
 		{
 	if (iCha.indexOf(mname.charAt(i))!= -1 )
 		{
 	alert("Invalid Entry");
	document.form1.lastname.focus();
		return false;
 		}
 		}
	}


	if (chkSplChar(document.form1.firstname) == false) {
		alert ("Special characters are not allowed.\nPlease remove.");
		document.form1.firstname.focus();
		return false;
	}


	

	if (document.form1.Email.value=="")
	{
		alert("Please enter an Email address");
		document.form1.Email.focus();
		return false;
    }

	emailStr=document.form1.Email.value;
	var emailPat=/^(.+)@(.+)$/;
	var specialChars="\\(\\)<>@,;:\\\\\\\"\\.\\[\\]";
	var validChars="\[^\\s" + specialChars + "\]";
	var quotedUser="(\"[^\"]*\")";
	var ipDomainPat=/^\[(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\]$/;
	var atom=validChars + '+';
	var word="(" + atom + "|" + quotedUser + ")";
	var userPat=new RegExp("^" + word + "(\\." + word + ")*$");
	var domainPat=new RegExp("^" + atom + "(\\." + atom +")*$");
	var matchArray=emailStr.match(emailPat);
	if (matchArray==null)
	{
		alert("Not a valid Email format");
		document.form1.Email.focus();
		return false;
	}


	var user=matchArray[1];
	var domain=matchArray[2];
	if (user.match(userPat)==null)
	{
	    // user is not valid
	    alert("Not a valid Email format");
		document.form1.Email.focus();
	    return false;
	}

	var IPArray=domain.match(ipDomainPat);
	if (IPArray!=null)
	{
	  for (var i=1;i<=4;i++)
	  {
	    if (IPArray[i]>255)
	    {
		   alert("Not a valid Email format");
		   document.form1.Email.focus();
		   return false;
		}
	  }
	    return true;
	}

	var domainArray=domain.match(domainPat);
	if (domainArray==null)
	{
		alert("Not a valid Email format");
		document.form1.Email.focus();
		return false;
	}
	var atomPat=new RegExp(atom,"g");
	var domArr=domain.match(atomPat);
	var len=domArr.length;
	if (domArr[domArr.length-1].length<2 ||  domArr[domArr.length-1].length>3)
	{
	   alert("Not a valid Email format");
	   document.form1.Email.focus();
	   return false;
	}

	if (len<2)
	{
	   alert("Not a valid Email format");
	   document.form1.Email.focus();
	   return false;
	}
	
	if (document.form1.Comments.value=="") {
		alert("Please enter your comments");
		document.form1.Comments.focus();
		return false;
	}	
	document.getElementById('loading').innerHTML = '<img src="images/loading.gif"> &nbsp;&nbsp;Please wait...';
	var now = new Date();
	var exitTime = now.getTime() ;
 	while(true)
    {
		now = new Date();
		if(now.getTime() > exitTime) return;
    }
}


//-->

</script>

</head>
<body>
 <table width="850" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="header"><img src="images/slogan.gif" width="360" height="40" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td><table border="0" cellpadding="0" cellspacing="0" class="menu">
      <tr>
        <td align="right"><a href="index.jsp" class="menu">Home</a> <span class="menuline">|</span> <a href="services.jsp" class="menu">Services</a> <span class="menuline">|</span> <a href="products.jsp" class="menu">Products</a> <span class="menuline">|</span> <a href="dedicatedmodel.jsp" class="menu">D.Model</a> <span class="menuline">|</span> <a href="casestudies.jsp" class="menu">Case Studies</a> <span class="menuline">|</span> <a href="aboutus.jsp" class="menu">About Us</a> <span class="menuline">|</span> <a href="careers.jsp" class="menu">Careers</a> <span class="menuline">|</span> <a href="contactus.jsp" class="menu">Contact us</a> </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="850" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="20" class="topheading">&nbsp;</td>
        <td rowspan="3" valign="top"><table width="210" border="0" cellpadding="0" cellspacing="0" class="tdbg">
          <tr>
            <td width="30" height="30" align="center" bgcolor="#BCD3DB"><img src="images/arrow_blue.gif" alt="" width="12" height="13" /></td>
            <td height="30" bgcolor="#BCD3DB"><a href="news.jsp" class="submenu">News &amp; Events</a></td>
          </tr>
          <tr>
            <td height="30" align="center" bgcolor="#BCD3DB"><img src="images/arrow_blue.gif" alt="" width="12" height="13" /></td>
            <td height="30" bgcolor="#BCD3DB"><a href="management.jsp" class="submenu">Management Team</a></td>
          </tr>
          <tr>
            <td height="30" align="center" bgcolor="#BCD3DB"><img src="images/arrow_blue.gif" alt="" width="12" height="13" /></td>
            <td height="30" bgcolor="#BCD3DB"><a href="images/brochure.pdf" class="submenu">Brochure</a></td>
          </tr>
          <tr>
            <td height="30" align="center" bgcolor="#BCD3DB"><img src="images/arrow_blue.gif" alt="" width="12" height="13" /></td>
            <td height="30" bgcolor="#BCD3DB"><a href="feedback.jsp" class="submenu">Feedback</a></td>
          </tr>
          <tr>
            <td height="30" align="center" class="tdbgleft"><img src="images/arrow_blue.gif" alt="" width="12" height="13" /></td>
            <td height="30"><a href="sitemap.jsp" class="submenu">Site Map</a></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td width="640" height="50"><blockquote>
            <p><img src="images/circle.gif" width="39" height="41" align="absmiddle" /> &nbsp;<span class="topheading">Feedback &amp; Inquiries</span></p>
        </blockquote></td>
      </tr>
      <tr>
        <td width="640"><blockquote>
          <p class="bodycontent">Please feel free to contact us if you have any questions or comments
            about our services, solutions or Techvijyo System  Ltd. Please
            provide the following information so that we can route your request to
            the appropriate person and thus respond to you faster. We will not
            share your information with anyone else. </p>
        </blockquote></td>
      </tr>
    </table></td>
  </tr>
  
  
  

  <tr>
    <td>       </td>
  </tr>
  
  <tr>
    <td>
    <form id="form1" name="form1" method="post" action="Techvijyo.do" onSubmit="return validate();">
      
      <table width="640" border="0" cellpadding="0" cellspacing="0" class="bodycontent">
      <tbody>
        <tr>
          <td width="133" height="30" align="center" class="alert">&nbsp;</td>
          <td width="21" height="30" align="center" class="alert">*</td>
          <td width="171" height="30">First Name</td>
          <td width="315" height="30"><input name="firstname" type="text" class="textfield" id="firstname" value="" size="50" /></td>
          </tr>
        <tr>
          <td height="30" align="center" class="alert">&nbsp;</td>
          <td height="30" align="center" class="alert">*</td>
          <td height="30">Last Name</td>
          <td height="30"><input name="lastname" type="text" class="textfield" value="" size="50" /></td>
          </tr>
        <tr>
          <td height="30" align="center" class="alert">&nbsp;</td>
          <td height="30" align="center" class="alert">*</td>
          <td height="30">Email ID</td>
          <td height="30"><input name="Email" type="text" class="textfield" value="" size="50" />          </td>
          </tr>
        
        <tr>
          <td align="center" class="alert">&nbsp;</td>
          <td align="center" class="alert">* </td>
          <td>Message/Query</td>
          <td><textarea name="Comments" cols="32" rows="5" class="textarea"></textarea>          </td>
          </tr>
        <tr>
          <td height="50" colspan="3">&nbsp;</td>
          <td height="50"><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input name="Submit" type="submit" class="button"  value="Submit" onmouseover="this.className='button1'" onmouseout="this.className='button'"/><br /><br /><div id="loading" ></div></td>
        </tr>
      </tbody>
<tbody>
    </tbody>
    </table>  
      </form></td>
  </tr>
  <tr>
    <td height="30">&nbsp;</td>
  </tr>
  
  <tr>
    <td  class="footer">Copyright &copy; 2015 Techvijyo System and Cyber Solution.</td>
  </tr>
</table>
</body>
</html>
