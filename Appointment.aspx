<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="PatientsManagementSystem.Appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body{
            @media (min-width: 1025px) {
.h-custom {
height: 100vh !important;
}
}


        }
        </style>
    <section class="h-100 h-custom" style="background-color: #8fc4b7;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-8 col-xl-6">
        <div class="card rounded-3">
          <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img3.webp"
            class="w-80" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
            alt="Sample photo"width="1140px">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Book Appointment</h3>

            <form class="px-md-2">

  <label> 
 FirstName:&nbsp;&nbsp;
 </label>  
       <asp:TextBox id="txtFirstName" value="" type="Text" runat="server" placeholder="Enter FirstName" MaxLength="20" />

       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="txtFirstName" ForeColor="Red"></asp:RequiredFieldValidator> 
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Name can only be alphabets" ForeColor="Red" ValidationExpression="[a-zA-z\s]+"></asp:RegularExpressionValidator>
            <br /> 
            <br /> 

<label> 
LastName:&nbsp;&nbsp;&nbsp; </label>     
        <asp:TextBox id="txtLastName"   value="" type="Text" runat="server" placeholder="Enter LastName" MaxLength="20"/>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="txtLastName" ForeColor="Red"></asp:RequiredFieldValidator> 
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtLastName" ErrorMessage="Name can only be alphabets" ForeColor="Red" ValidationExpression="[a-zA-z\s]+"></asp:RegularExpressionValidator>
        <br /> 
        <br />
              
 <label> 
Disease:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</label>     
        <asp:TextBox id="txtDisease"   value="" type="Text" runat="server" placeholder="Enter Disease" MaxLength="20"/>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="txtLastName" ForeColor="Red"></asp:RequiredFieldValidator> 
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtDisease" ErrorMessage="DiseaseName can only be alphabets" ForeColor="Red" ValidationExpression="[a-zA-z\s]+"></asp:RegularExpressionValidator>
        <br /> 
        <br />

                
<label>   
 Doctor :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </label>             
                <asp:DropDownList ID="txtDoctor" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="Neurologyspecialist-Payal Deshmukh"></asp:ListItem>
                    <asp:ListItem Value="Surgeon-Pratiksha sule"></asp:ListItem>
                    <asp:ListItem Value="Dermatology-Abhishek Kolkur"></asp:ListItem>
                    <asp:ListItem Value="Crdiology-Prakash Shirsat"></asp:ListItem>
                    <asp:ListItem Value="Radiologist-Satish Anuse"></asp:ListItem>
                    <asp:ListItem Value="Gynaecologist-Komal Sontakke"></asp:ListItem>
                    <asp:ListItem Value="Dentist-Sayed Dilawar"></asp:ListItem>
                    <asp:ListItem Value="Heart specialist-Pushpanjali Adat"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDoctor" ErrorMessage="Please select Doctor" ForeColor="Red"></asp:RequiredFieldValidator>
               <br />
                <br />

 <label>   
 Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </label>
                <asp:TextBox ID="txtDate" runat="server" type="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Date cannot be blank" ControlToValidate="txtDate" ForeColor="Red"></asp:RequiredFieldValidator> 

                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtDate" ErrorMessage="Please enter valid date" ForeColor="Red" MaximumValue="2023/12/31" MinimumValue="2022/12/31" Type="Date"></asp:RangeValidator>
                <br />
                <br />

<label>   
 Gender :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </label>  
     <asp:TextBox id="txtGender"  value=""  type="Text" runat="server" placeholder="Enter Gender" MaxLength="20"/>   

      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Gender cannot be blank" ControlToValidate="txtGender" ForeColor="Red"></asp:RequiredFieldValidator> 
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtGender" ErrorMessage="Gender can only be alphabets" ForeColor="Red" ValidationExpression="[a-zA-z\s]+"></asp:RegularExpressionValidator>
         <br/>  
         <br/>  
              
  <label>   
Phone :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
</label>  
      <asp:TextBox id="txtPhone"  value="" type="Text" runat="server" placeholder="Enter Phone" MaxLength="10"/>
        
      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Mobile cannot be blank" ControlToValidate="txtPhone" ForeColor="Red"></asp:RequiredFieldValidator> 
        
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhone" ErrorMessage="Mobile number must be 10 digit" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>  
           <br />  
           <br />

 <label>
  Age :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </label>
      <asp:TextBox ID="txtAge" placeholder="Enter Age" runat="server"></asp:TextBox> 
                
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Age cannot be blank" ControlToValidate="txtAge" ForeColor="Red"></asp:RequiredFieldValidator> 
                
     <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age must be between 18 to 40" ControlToValidate="txtAge" ForeColor="Red" MaximumValue="40" MinimumValue="18"></asp:RangeValidator>  
           <br />  
              
          <br />  
 <label>   
FamilyMember :
      </label>   
                <asp:DropDownList ID="txtFamilyMember" runat="server">
                    <asp:ListItem Value="None"></asp:ListItem>
                    <asp:ListItem Value="Father"></asp:ListItem>
                    <asp:ListItem Value="Mother"></asp:ListItem>
                    <asp:ListItem Value="Brother"></asp:ListItem>
                    <asp:ListItem Value="Sister"></asp:ListItem>
                    <asp:ListItem Value="Husband"></asp:ListItem>
                    <asp:ListItem Value="Wife"></asp:ListItem>
                    <asp:ListItem Value="Other"></asp:ListItem>
                </asp:DropDownList>
              <br />
              <br />
        
            </form>

              <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />

          </div>
        </div>
      </div>
    </div>
  </div>
</section>


</asp:Content>
