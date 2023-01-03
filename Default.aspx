<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PatientsManagementSystem._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <style>  .jumbotron{
      background-color:floralwhite;
      width:1200px;
      top:50px;
  }
  
  body{
      background-color:antiquewhite;
  }
         .auto-style1 {
             position: relative;
             min-height: 1px;
             float: left;
             width: 33.33333333%;
             left: 0px;
             top: 7px;
             padding-left: 15px;
             padding-right: 15px;
         }
      </style>
    <div class="jumbotron">
         <img src="https://th.bing.com/th/id/R.96612211462d4ca1e9994b683e791f95?rik=N5bW4NFp4z%2bcNA&riu=http%3a%2f%2fww1.prweb.com%2fprfiles%2f2016%2f04%2f29%2f13369085%2f20160126_07.jpg&ehk=AUH9igdPFs4ER440UWX%2bVewzAW3jPKRjW34XVAYMgGM%3d&risl=&pid=ImgRaw&r=0"
                alt="Sample photo" class="img-fluid"  style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem" width="1080px" height="300px" />
<%--   <h1>PPP Hospital</h1>
        <p class="lead">Our Team of over 11000 doctor join me in giving you the best of modern healthcare to ensure you the best modern healthcare to ensure you stay healthy.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>--%>
    </div>


</br>
    <div class="name">
        <div class="tt" style="text-align:center ; font:serif;color: darkred">
           <h1>PPP Hospital</h1>            </div>
          </br>
        <p class="lead">Our Team of over 11000 doctor join me in giving you the best of modern healthcare to ensure you the best modern 
            healthcare to ensure you stay healthy.</p>
        <p><a href="https://localhost:44326/About" class="btn btn-primary btn-lg" style="text-align:center;">About more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Why choose PPP Healthcare</h2>
            <p>
                Established by Dr Prathap C Reddy in 1983, Apollo Healthcare has a robust presence across the healthcare ecosystem.
                From routine wellness & preventive health care to innovative life-saving treatments and diagnostic services, Apollo Hospitals has touched more than 120 million lives from over 120 countries, offering the best clinical outcome            </p>
            <p>
                <a class="btn btn-default" href="https://localhost:44326/About">Know more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Connect With
            PPP Health Care</h2>
            <p>
                Largest network of the world’s finest and brightest medical experts who provide compassionate care using outstanding expertise and advanced technology.
            </p>
            <p>
                <a class="btn btn-default" href="hhttps://localhost:44326/About">Know more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Our expertise</h2>
            <p>
                Leveraging its vast medical expertise & technological advantage, Apollo Hospitals has consistently delivered best in class clinical outcomes.
            </p>
            <p>
                <a class="btn btn-default" href="https://localhost:44326/About">Know more &raquo;</a>
            </p>
        </div>
    </div>
    <div class="row">
        <div class="auto-style1">
           <table class="nav-justified">
                <tr>
                    <td><a class="btn btn-primary btn-lg" href="https://localhost:44326/Login">Login Here &raquo;</a>&nbsp;</td></br></br>
                </br>
                    <td <a class="btn btn-primary btn-lg" href="https://localhost:44326/Register">Registere&raquo;</a>&nbsp;</td></br></br>
                </br>
                    <td><a class="btn btn-primary btn-lg" href="https://localhost:44326/Contact"> Contact Us&raquo;</a>&nbsp;</td></br></br>
                </br>
                    <td><a class="btn btn-primary btn-lg" href="https://localhost:44326/Contact"> Appointment&raquo;</a>&nbsp;</td></br></br>
             </br>   </tr>
            </table>
            
     
          
      
            </div>
        </div>

</asp:Content>
