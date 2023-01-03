<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PatientDetails.aspx.cs" Inherits="PatientsManagementSystem.PatientDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .gradient-custom {
/* fallback for old browsers */
background: #f6d365;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1))
}

    </style>

  
<body>  
    <form id="form1" >  
    <div>  
   <section class="vh-100" style="background-color: #f4f5f7;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-lg-6 mb-4 mb-lg-0">
        <div class="card mb-3" style="border-radius: .5rem;">
          <div class="row g-0">
            <div class="col-md-4 gradient-custom text-center text-white"
              style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
                alt="Avatar" class="img-fluid my-5" style="width: 80px;" />
              <h5>UserName</h5>
              <p>Full Name</p>
              <i class="far fa-edit mb-5"></i>
            </div>
            <div class="col-md-8">
              <div class="card-body p-4">
                <h6>User Details</h6>
                     </div>
                  <h3><%:Title%></h3>
         
 <label> 
 FirstName:
 </label>  
       <asp:TextBox id="txtFirstName" value="" type="Text" runat="server" MaxLength="20" />
        
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="txtFirstName" ForeColor="Red"></asp:RequiredFieldValidator> 
<%--        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter characters only" ControlToValidate="txtFirstName" ValidationExpression="[aA-zZ]"></asp:RegularExpressionValidator> --%>
            <br /> 
<label> 
LastName:
</label>     
        <asp:TextBox id="txtLastName"   value="" type="Text" runat="server" MaxLength="20"/>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="txtLastName" ForeColor="Red"></asp:RequiredFieldValidator> 
<%--       <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please enter characters only" ControlToValidate="txtLastName" ValidationExpression="[aA-zZ]"></asp:RegularExpressionValidator> --%>
           <br /> 
 <label> 
 UserName: 
</label> 
      <asp:TextBox id="txtUserName"  value="" type="Text" runat="server" MaxLength="20"/>  

      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator> 
         <br/>  
<label>   
 Gender :
 </label>  
     <asp:TextBox id="txtGender"  value=""  type="Text" runat="server" MaxLength="20"/>   

      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Gender cannot be blank" ValidationExpression="\[A-Z][a-z]" ControlToValidate="txtGender" ForeColor="Red"></asp:RequiredFieldValidator> 
        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtGender" ErrorMessage="Please enter characters only" ForeColor="Red" ValidationExpression="\[A-Z][a-z]"></asp:RegularExpressionValidator> 
 --%>       <br/>  
<label>   
Phone :  
</label>  
      <asp:TextBox id="txtPhone"  value="" type="Text" runat="server" MaxLength="10"/>
        
      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Mobile cannot be blank" ControlToValidate="txtPhone" ForeColor="Red"></asp:RequiredFieldValidator> 
        
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhone" ErrorMessage="Mobile number must be 10 digit"  ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>  
           <br />  
 <label> 
Address:
 </label> 
      <asp:TextBox id="txtAddress"  value="" type="Text" runat="server" MaxLength="50"/> 
        
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Address cannot be blank" ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>    
         <br/> 
 
<label>
     Email     :  
</label>
     <asp:TextBox id="txtEmail"  value="" type="Text" runat="server" MaxLength="20"/>   
        
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>  
  
    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter proper email format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>  
         <br/>  
 <label>
Password:  
</label>
     <asp:TextBox id="txtPassword" value="" type="Password" runat="server" MaxLength="20"/> 

     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Password cannot be blank" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
     <br/> 

                 <a class="btn btn-primary btn-lg" href="https://localhost:44326/Appointment"> Appointment&raquo;</a>&nbsp;</br>
        </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>  
    </div>  
    </form>  
</body>  
</html>
    </asp:Content>
