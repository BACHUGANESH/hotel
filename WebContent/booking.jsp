<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Business Casual - Start Bootstrap Theme</title>
<%
String name=session.getAttribute("name").toString();
String id=request.getParameter("id1");
session.setAttribute("id", id);
String room=request.getParameter("room");
String vacancy=request.getParameter("vacancy");
String cost=request.getParameter("cost");
String book=request.getParameter("book");
session.setAttribute("book", book);



%>
	
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
                        <a href="view1.jsp">View rooms</a>
                    </li>
                    <li>
                        <a href="book1.jsp">View Booked Rooms</a>
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
			</div>
			</div>
				
				<center><h3><font color="#00FFFF">Booking Process</font></h3></center>
					<form name="ureg" action="booking1.jsp" method="post" onsubmit="return validate()">
                     <center><table>
                    	 <tr>
                     		<td>User Name:</td>
                     		<td><input type="text" name="name"  value="<%=name%>" readonly></td>
                     	</tr>
                     	<tr>
                     		<td>Room No:</td>
                     		<td><input type="text" name="room" value="<%=room%>" readonly></td>
                     	</tr>
       
                     	<tr>
                     		<td>vacancy:</td>
                     		<td><input type="text" name="vacancy" value="<%=vacancy%>" readonly></td>
                     	</tr>
                     	<tr>
                     		<td>Cost:</td>
                     		<td><input type="text" name="cost" value="<%=cost%>" readonly></td>
                     	</tr>
                     	
                     		<td>card No:</td>
                     		<td><input type="text" name="card" ></td>
                     	</tr><tr>
                     		<td>Card Name:</td>
                     		<td><input type="text" name="cname" ></td>
                     	</tr>
                     	<tr>
      					 <td>Adhar no:</td><td><input type="text" name="adhar"> </td>
						 </tr>
                     	<tr>
                     		<td>cvv No:</td>
                     		<td><input type="text" name="cvv" ></td>
                     	</tr>
                     	
                     	<tr></tr>
                     	
        

                     	<td><input type="submit" id="send" value="SUBMIT" name="reg">
						<input type="reset" id="send" value="RESET"></td></tr>
                     </table>
                     <br>
                     
					 </form>
					
						
					
				</div>
			</div>
		</div>		
		<!-- end #content -->
		
	</div>
	<!-- end #page --> 
</div>
       <br>                

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