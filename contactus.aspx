<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
    <link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
    <div>
       <fieldset>
           <legend >contact us</legend>
           <div class="short_explanation">* required field</div>
           <div class="contain">
               <asp:label ID="lblname" Text="your name*:" CssClass="label" runat="server"></asp:label><br />
               <asp:TextBox ID="txtName" runat="server" BorderColor="#000CCC" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
               <asp:RequiredFieldValidator ID="reqfeildval1" runat="server" ControlToValidate="txtName" ErrorMessage="Enter your name" SetFocusOnError="true">*</asp:RequiredFieldValidator><br />
               </div>
           <div class='contain'>
    <asp:Label  ID="lblEmail" runat="server"  
               Text="Email*:" CssClass="label"/><br/>
    <asp:TextBox ID="txtMail"  runat="server" BorderColor="#000CCC" BorderStyle="Solid" BorderWidth="1px"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                                runat="server" 
                                ControlToValidate="txtMail" 
                                ErrorMessage="Please Provide 
                                             Your Email Address" 
                                SetFocusOnError="True">*
    </asp:RequiredFieldValidator><br />
    </div>

          <div class="contain">
              <asp:Label ID="lblSubject" runat="server"
                          Text="Subject*:" CssClass="label" /><br />
              <asp:TextBox ID="txtSubject" runat="server" BorderColor="#000CCC" BorderStyle="Solid" BorderWidth="1px" />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSubject" ErrorMessage="plz provide problem to contact" SetFocusOnError="true">*</asp:RequiredFieldValidator><br />


           </div>
       <div class='contain'>
    <asp:Label ID="lblMessage" runat="server" 
             Text="Feedback:" CssClass="label"/><br/>
    <asp:TextBox ID="txtMessage" runat="server" 
                 TextMode="MultiLine" Width="268px" BorderColor="#000CCC" BorderStyle="Solid" BorderWidth="1px"/>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                                runat="server" 
                                ControlToValidate="txtMessage" 
                                ErrorMessage="Write your feedback" 
                                SetFocusOnError="True">*
    </asp:RequiredFieldValidator><br />
    </div>
     
    <div class='contain'>
    <asp:Button ID="btnSubmit" runat="server" width="120px"
                Text="Submit" onclick="btnSubmit_Click" BackColor="#4CAF50"/>
    </div>
    <asp:ValidationSummary ID="ValidationSummary1" 
                           runat="server" CssClass="error"/>
    </fieldset>
    <asp:Label ID="Label1" runat="server" Text=""/>
    </div>
    <div class="contactdiv">
        <small class="date">10th sep 2019</small>
        <h1>computers tech for IT services vision</h1>
        <p>as compeetness gets biger<br /> technoloy requirement get much bigger, we decided to help that change by adapting your organization with these technological changes at the right way for the customized needs , our services facilitates technological development,through creativity .

to help organizations move from traditional way of doing things<br /> — to technological way — through avaliable IT services and tools, from sw development to hw development</p>
    
    </div>


</asp:Content>

