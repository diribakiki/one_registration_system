  function Validating()//wanted
  {
    if(userform.otype.options.value=="joint")
    {               
        if(userform.jno.options.value=="blank")
        {
          alert("Please Select the No. of Joint voting Members...")
             document.userform.otype.options.focus();
          return false;
         }        
    }
        if(userform.Name1.value=="")
    {
        alert ( "Please voter Name 1" );
		document.userform.Name1.focus();
        return false;
    }
    
    if(userform.dob1.value=="") 
    {
        alert ( "Please Enter DOB for Voter 1" );
		document.userform.Name1.focus();
        return false;
    }
        
   if(userform.o1.value=="")
    {
        alert ( "Please Enter Occupation for Voter 1." );
		document.userform.o1.focus();
        return false;
    }
    if(userform.Add1.value=="")
    {
        alert ( "Please Enter Address for Voter 1." );
		document.userform.Add1.focus();
        return false;
    }

    if(userform.jno.options.value=="t")
    {    
        if(userform.Name2.value=="")
        {
            alert ( "Please Voter Name 2" );
		document.userform.Name2.focus();
            return false;
        }
        
        if(userform.dob2.value=="") 
        {
            alert ( "Please Enter DOB for Voter 2" );
		document.userform.Name2.focus();
            return false;
        }   
     if(userform.o2.value=="")
    {
        alert ( "Please Enter Occupation for voter 2." );
		document.userform.o2.focus();
        return false;
    }
    if(userform.Add2.value=="")
    {
        alert ( "Please Enter Address for Voter 2." );
		document.userform.Add1.focus();
        return false;
    }
  }    
    
    if(userform.jno.options.value=="th")
    {    
        if(userform.Name3.value=="")
        {
            alert ( "Please Voter Name 3" );
		document.userform.Name3.focus();
            return false;
        }        
        if(userform.dob3.value=="") 
        {
            alert ( "Please Enter DOB for voter 3" );
		document.userform.Name3.focus();
            return false;
        }        
        if(userform.o3.value=="")
        {
            alert ( "Please Enter Occupation for Voter 3." );
		document.userform.o3.focus();
            return false;
        }
        if(userform.Add3.value=="")
        {
            alert ( "Please Enter Address for Voter 3." );
		document.userform.Add3.focus();
            return false;
        }         
    }    

    if(userform.Int_Acc.value=="")
    {
        alert ( "Please Enter Introducer No." );
		document.userform.Int_Acc.focus();
        return false;
    }
    if(userform.Int_Name.value=="")
    {
        alert ( "Please Enter Introducer Name." );
		document.userform.Int_Name.focus();
        return false;
    }
    if(userform.Nominee.value=="")
    {
        alert ( "Please Enter Nominee Name." );
		document.userform.Nominee.focus();
        return false;
    }
    if(userform.doa.value=="")
    {
        alert ( "Please Enter Date of Opening Voter." );
		document.userform.Nominee.focus();
        return false;
    }
     if(userform.bal.value=="")
    {
        alert ( "Please Enter Opening result " );
		document.userform.bal.focus();
        return false;
    }
    window.history.clear();    
     return true;
}

  
function validate()//wanted
{
    if (userform.userName.value == "")
    {
        alert ( "Please enter UserName" );
		document.userform.userName.focus();
        return false;
    }
    
    if (document.userform.password.value == "")
    {
        alert ( "Please enter password." );
		//document1.userform.password.focus();
        return false;
    }	 
    
    if (document.userform.confirmPassword.value == "")
    {
          alert ( "Please enter Confirm Password." );
	     document.userform.confirmPassword.focus();
          return false;
    }

    if (document.userform.confirmPassword.value != document.userform.password.value)
    {
          alert ( "Confirm password must be same." );
   	    document.userform.confirmPassword.focus();
           return false;
        }    	        
	return true;         
}


function LClear() //Wanted
{
     loginform.userName.value="";
     loginform.password.value="";     
}
function validLogin() //Wanted
{
    
    if (document.loginform.userName.value == "")
    {
        alert ( "Please Enter Admin's Name." );
		document.loginform.userName.focus();
        return false;
    }
    
    if (document.loginform.password.value == "")
    {
        alert ( "Please Enter Password." );
		document.loginform.password.focus();
        return false;
    }
	return true;
}

function passValid()
{
   if (document.changepassform.oldpassword.value == "")
    {
        alert ( "Please enter Old password." );
		document.changepassform.oldpassword.focus();
        return false;
    }
	if (document.changepassform.newpassword.value == "")
    {
        alert ( "Please enter new password." );
		document.changepassform.newpassword.focus();
        return false;
    }

	 if (document.changepassform.cpassword.value == "")
    {
        alert ( "Please enter confirm password." );
		document.changepassform.cpassword.focus();
        return false;
    }

	if (document.changepassform.cpassword.value != document.changepassform.newpassword.value)
    {
        alert ( "Confirm password must be same." );
		document.changepassform.cpassword.focus();
        return false;
    }
	return true;

}
