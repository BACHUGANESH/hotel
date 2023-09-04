<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Business Casual - Start Bootstrap Theme</title>
<script type="text/javascript">
	function validate()
	{
	var a = document.ureg.name.value;
	if(a=="")
	{
	alert ("Enter a name");
	document.ureg.name.focus();
	return false;
	}
	
	if(!isNaN(a))
	{
	alert ("Enter a alphat");
	document.ureg.name.select();
	return false;
	}
	var b=document.ureg.pwd.value;
	if(b=="")
	{
	alert ("Enter a password");
	document.ureg.pwd.focus();
	return false;
	}
	
	var c=document.ureg.cpass.value;
	if(c=="")
	{
	alert ("enter confirm password");
	document.ureg.cpass.focus();
	return false;
	}
	if(b!=c)
	{
	alert ("Enter correct password");
	document.ureg.cpass.select();
	return false;
	}
	
	var d=document.ureg.email.value;
	if(d=="")
	{
	alert ("enter a mail id");
	document.ureg.email.focus();
	return false;
	}
	
	var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i
	var e=emailfilter.test(document.ownerreg.email.value);
	if(e==false)
	{
	alert(" Enter valid Mail ID");
	document.ureg.email.select();
	return false;
	}
	var f=document.ureg.mobile.value;
	if(f=="")
	{
	alert ("Enter mobile number");
	document.ureg.mobile.focus();
	return false;
	}
	if(f.length!=10)
	{
	alert ("Enter valid mobile number");
	document.ureg.mobile.focus();
	return false;
	}
	var g=document.ureg.address.value;
	if(g=="")
	{
	alert ("Enter address");
	document.ureg.address.focus();
	return false;
	}
	var a = document.f1.t6.value;
	if (a == "") {
		alert("Please Enter date of birth")
		document.f1.t6.focus();
		return false;
	}
	
	var d = document.f1.t7.value;
	if (d == "") {
		alert("Please Enter adhar number ")
		document.f1.t7.focus();
		return false;
	}
	if (isNaN(d)) {
		alert("Adhar  Number Must be Numaric");
		document.f1.t7.focus()
		return false;
	}
	

	if (d.length!=12) {
		alert("Adhar number  Must contains 12 digits");
		document.f1.t7.focus();
		return false;
	}
		
	}
	
</script>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/business-casual.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
    <div class="brand">Hostel Seat Booking Process	</div>
    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand" href="index.html">Business Casual</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                     <li>
                        <a href="view.jsp">viewusers</a>
                    </li>
                    <li>
                        <a href="add.jsp">Addrooms</a>
                    </li>
                   
                    <li>
                        <a href="booked.jsp">Viewrooms	</a>
                    </li>
                    <li>
                        <a href="index.html">Logout	</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
<% String msg=request.getParameter("msg");
if(msg==null)
{
}
else{
%>
<font style="verdana" color="red"><center><%=msg %></center></font>
<%}
%>
    <div class="container">

        <div class="row">
            <div class="box">
                <div class="col-lg-12 text-center">
                    <div id="carousel-example-generic" class="carousel slide">
                        <!-- Indicators -->
                       <!--  <ol class="carousel-indicators hidden-xs">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol> -->
                        <div id="page">
		<div id="content">
			<div class="post">
				<div class="entry">
				</div>
				</div>
				</div>
				</div>
				<center><h3><font color="#00FFFF">Add Rooms</font></h3></center>
					<form name="ureg" action="addback.jsp" method="post" onsubmit="return validate()">
                     <center><table>
                    	<tr>
    <td>Room number:</td> <td> <input type="text" name="room"></td> 
</tr>  
<br>
<tr>
    <td>Vacancy:</td> <td><input type="text" name="vacancy"></td>
 </tr>
 <tr>
    <td>Room Cost:</td> <td><input type="text" name="cost"></td>
 </tr>
 </table>
<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <input type="submit" value="submit"> 
  <input type="submit" value="clear"><br/>
      </form>
				<br>	
					
					
				</div>
			</div>
		</div>		
		<!-- end #content -->
		
	</div>
	<!-- end #page --> 
</div>
                       

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>