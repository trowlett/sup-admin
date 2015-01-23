<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/SUP_Admin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Maintenance_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .items {
            visibility: hidden;
        }
            .items ol {
                visibility: hidden;
            }
        .auto-style1 {
            font-size: large;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 100%;">
    <tr>
    <td style="width: 70%;">
        <h2>Site Maintenace Main Page</h2></td>
    <td>
        <h4 style="text-align: right;"> 
            Jan. 21, 2015
        Update
        </h4></td></tr></table>
    <div id="welcome">
        <p class="auto-style1"><strong>Welcome to the MISGA Sign Up Database maintenance.    
           </strong>    
           </p>
        <p>Select from the menu items above, what you would like to do.  
           </p>
        <ul>
            <li>
            Signup List -&nbsp; Prepare Players Lists to email, or edit the Signup Database.
            </li>
            <li>
                Events -&nbsp; Add, Edit, or Delete an event from ther Events Database, and load the Schedule Text file. </li>
            <li>
                Members -&nbsp; Change the information about a member, and update the handicaps. </li>
            <li>
                Parameters - &nbsp; Change the parameters for the system. </li>
            <li>
                About -&nbsp; Contact information if you have questions, comments, suggestions or problems.
            </li>
        </ul>
    </div>
    <div class="items">
    <ol>
        <li>
        <asp:HyperLink ID="hlSelectDelete" runat="server" 
                Text="Selectively Delete Members with No Current Signups" 
                NavigateUrl="~/InactiveMembers.aspx"></asp:HyperLink>
        </li>
        <li>
        <asp:HyperLink ID="hlClearSignups" runat="server" Text="Purge Marked Records in Signup List (PlayersList) Database." NavigateUrl="~/Signups/Clear.aspx"></asp:HyperLink>
        </li>
<!--        <li>
            <asp:HyperLink ID="hlNotification" runat="server" NavigateUrl="~/notification/Default.aspx" Visible="True">Manage Notifications</asp:HyperLink>
        </li> -->

<!--        <li>more Things To Do</li> -->
    </ol>
        </div>
    <div class="gohome">
        <p>
            Go to the 
            <asp:HyperLink ID="hlOrgURL" runat="server" 
                NavigateUrl="~/Default.aspx" 
                Text="Site URL"></asp:HyperLink>
             
        </p>
    </div>
    <br />
    <br />
    
    <br />

    </asp:Content>

