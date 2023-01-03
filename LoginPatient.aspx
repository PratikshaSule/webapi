<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPatient.aspx.cs" Inherits="PatientsManagementSystem.LoginPatient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
  .gradient-custom-2 {
      background-color:aquamarine;
}

@media (min-width: 768px) {
.gradient-form {
height: 100vh !important;
}
}
@media (min-width: 769px) {
.gradient-custom-2 {
border-top-right-radius: .3rem;
border-bottom-right-radius: .3rem;
height:600px;
}
}
body{
    background-color:antiquewhite;
}

    </style>
<section class="h-100 gradient-form" style="background-color: #eee;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-xl-10">
        <div class="card rounded-3 text-black">
          <div class="row g-0">
            <div class="col-lg-6">'
              <div class="card-body p-md-5 mx-md-4">

                <div class="text-center">
                  <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/lotus.webp"
                    style="width: 185px;" alt="logo">
                  <h3 class="mt-1 mb-5 pb-1" >We are The PPP Hospital Team</h3><br/>  <br/>  


                </div>

              
                  <h4>Please login to your account </h4><br/>  


                  <div class="form-outline mb-4">
                        
                  <asp:Label ID="txUserName" runat="server" Text="UserName" Font-Bold="True" Width="30px" ForeColor="#FF3300"></asp:Label>  <br />
                      
                  <asp:TextBox id="txtUserName"  value="" type="Text" runat="server" MaxLength="20"/> 
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="Please Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="UserName can only be alphabets" ForeColor="Red" ValidationExpression="[a-zA-Z\s]+"></asp:RegularExpressionValidator>
                      <br/>  
                      
                 </div>

                  <div class="form-outline mb-4" >

                  <asp:Label ID="txPassword" runat="server" Text="Password" Font-Bold="True" Width="30px"  ForeColor="#FF3300"></asp:Label> <br />
                      
                  <asp:TextBox id="txtPassword" value="" type="Password" runat="server" MaxLength="20"/> 
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                      <br/> 
                    
                      <br />
                     
                      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                      <br />
                      </div>
               

                  

                  <div class="text-center pt-1 mb-5 pb-1">
                    <%--<button class="btn btn-primary btn-block fa-lg gradient-custom-1 mb-3" type="Submit" value="login"name="">Log
                      in</button>--%>

                  </div>

                  

               

              </div>
            </div>
            <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
              <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                <h4 class="mb-4">We are more than just a hospital>
                    <br /><br />
                <p class="small mb-0">PPP Hospital is a multispeciality hospital located in Navi Mumbai.
With the renowned and established track record in the area of Healthcare Management and
Pharmaceutical Industry, Wellcare Health Services has taken over the management of the hospital.
Our patients are our top priority and no stones have been left unturned in order to provide them with the best in class services and health care treatments.
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section></asp:Content>
    

