﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SUP_Admin.master" AutoEventWireup="true" CodeFile="loadevents.aspx.cs" Inherits="Events_loadevents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Load Events Database from the 
        &quot;<asp:Label ID="lblFN1" runat="server" Text="Label"></asp:Label>&quot; file</h2>
    <asp:Label ID="lblFileName" runat="server" Text="FileName">
    </asp:Label>
    <p>        <asp:Button ID="BtnLoadText" runat="server" Text="Load Events from the file" 
            onclick="BtnLoadText_Click" />
    </p>
    <p>       
        <asp:Label ID="lblDbLoadStatus" runat="server"></asp:Label>
    </p>
 </asp:Content>

