<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f0f0; 
        }
 
        header {
            background-color: #862041; /* Black header background color */
            color: #fff; /* Text colour of header */
            padding: 10px;
            text-align: center;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
 
        header img {
            max-height: 50px;
        }
 
        footer {
            background-color: #862041; /* Black footer background color */
            color: #fff; /* Text color for the footer */
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        .container {
            margin:20px;
        }
        .campus {
            color:red;
        }
        a {
            color:white;
            text-decoration: none;
        }
        .shuttle {
        color:#862041;
        text-decoration:none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">  
        <header>
<img src="imgs/CTA%20logo%202.png" width="30" height="30"  alt="CTA Tracker"/>
            <a  href="CampusShuttle.aspx">Campus shuttle</a>
</header>
        <div class="container">
        <h2>Intercampus Shuttle</h2>
        <p> The Loyola Intercampus Shuttle is a supplemental transportation service only available for current Loyola University Chicago students, faculty, and staff. Service operates on weekdays only, when classes are in session during the academic year (fall/spring only). Boarding passengers must show their Loyola issued Campus Card to board the intercampus shuttle.</p>

        <p class="campus"> The shuttle runs in every 30 min interval from both campuses</p>
            <p>For bus tracking : <a class="shuttle" href="https://luc.tripshot.com/g/tms/TMS.html#LoginPlace:%7B%22r%22:%22NONE%22%7D">Tripshot</a></p>
            </div>
        
    </form>
    <footer>
<p>&copy; CTA Tracker All rights reserved. <a href="https://www.luc.edu/">Loyola University Chicago</a></p>
</footer>
</body>
</html>
