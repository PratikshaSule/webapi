<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrationPatient.aspx.cs" Inherits="PatientsManagementSystem.RegistrationPatient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>WELCOME!!!</h2>
    <%--<div class="col-xl-6 d-none d-xl-block">
               <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo" class="auto-style1"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
     </div>--%>

    <style>
     body{
           
           background-color:antiquewhite;
          }
       /* .auto-style1 {
            width:1200px;
            height: 860px;
        }
         */

.card-registration .select-input.form-control[readonly]:not([disabled]) {
font-size: 1rem;
line-height: 2.15;
padding-left: .75em;
padding-right: .75em;
}
.card-registration .select-arrow {
top: 13px;
}
    </style>
    <section class="h-100 bg-dark">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6 d-none d-xl-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem" width="600px" height="800px" />
            </div>

    <form action="#" method="post">

    <section class="vh-100 gradient-custom">
      <div  style="width:600px;height:800px;position:relative;left:600px; bottom:803px; background-color:gray;padding:10px;margin:5px;border:dotted;"/>
        <div class="form-outline"></div>
    <h3><%:Title%>Register Now</h3>
        <br />
        
 <label> 
 FirstName:
 </label>  
       <asp:TextBox id="txtFirstName" value="" type="Text" runat="server" placeholder="Enter FirstName" MaxLength="20" OnTextChanged="txtFirstName_TextChanged" />
        
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="txtFirstName" ForeColor="Red"></asp:RequiredFieldValidator> 

           <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Name can only be alphabets" ForeColor="Red" ValidationExpression="[a-zA-Z\s]+"></asp:RegularExpressionValidator>
           <br /> 
            <br /> 

<label> 
LastName:
</label>     
        <asp:TextBox id="txtLastName"   value="" type="Text" runat="server" placeholder="Enter LastName" MaxLength="20"/>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="txtLastName" ForeColor="Red"></asp:RequiredFieldValidator> 

          <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtLastName" ErrorMessage="Name can only be alphabets" ForeColor="Red" ValidationExpression="[a-zA-Z\s]+"></asp:RegularExpressionValidator>

        <br /> 
        <br />


<label> 
 UserName: 
</label> 
      <asp:TextBox id="txtUserName"  value="" type="Text" runat="server" placeholder="Enter UserName" MaxLength="20"/>  

      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator> 
          <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="txtUserName" ErrorMessage="Username can only be alphabets" ForeColor="Red" ValidationExpression="[a-zA-Z\s]+"></asp:RegularExpressionValidator>
         <br/>  
         <br/> 

<label>   
 Gender&nbsp;&nbsp; :
 </label>  
     <asp:TextBox id="txtGender"  value=""  type="Text" runat="server" placeholder="Enter Gender" MaxLength="20"/>   

      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Gender cannot be blank" ValidationExpression="\[A-Z][a-z]" ControlToValidate="txtGender" ForeColor="Red"></asp:RequiredFieldValidator> 
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="txtGender" ErrorMessage="Gender can only be alphabets" ForeColor="Red" ValidationExpression="[a-zA-Z\s]+"></asp:RegularExpressionValidator>
          <br/>  
         <br/>  
  
          <label>   
Phone&nbsp;&nbsp;&nbsp;&nbsp; :  
</label>  
      <asp:TextBox id="txtPhone"  value="" type="Text" runat="server" placeholder="Enter Phone" MaxLength="10"/>
        
      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Mobile cannot be blank" ControlToValidate="txtPhone" ForeColor="Red"></asp:RequiredFieldValidator> 
        
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhone" ErrorMessage="Mobile number must be 10 digit"  ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>  
           <br />  
           <br />

 <label> 
Address   :
 </label> 
      <asp:TextBox id="txtAddress"  value="" type="Text" runat="server" MaxLength="50" placeholder="Enter Address"/> 
        
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Address cannot be blank" ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>    
         <br/> 
          <br/>  

<label>
     Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :  
</label>
     <asp:TextBox id="txtEmail"  value="" type="Text" runat="server" placeholder="Enter Email" MaxLength="20"/>   
        
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Email cannot be blank"  ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>  
  
    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter proper email format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>  
         <br/>  
         <br/> 

 <label>
Password:  
</label>
     <asp:TextBox id="txtPassword" value="" type="Password" runat="server" placeholder="Enter Password" MaxLength="20"/> 

     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Password cannot be blank"  ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
        
     <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRePassword" ErrorMessage="Password and confirm password must be same" ForeColor="Red"></asp:CompareValidator>  
          <br/> 
          <br/> 
        
<label>
RePassword:  
</label>
        <asp:TextBox id="txtRePassword" type="Password"  value=""  runat="server" placeholder="Enter RePassword" MaxLength="20"/> 

        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Password cannot be blank" ControlToValidate="txtRePassword" ForeColor="Red"></asp:RequiredFieldValidator>  
        <br/> 
        <br/> 

         <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" /></br>
        
          &nbsp;</div>
            <p>
       
            </section>
        </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </asp:Content>