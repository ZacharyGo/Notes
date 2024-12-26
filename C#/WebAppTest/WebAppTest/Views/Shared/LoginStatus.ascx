<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginStatus.ascx.cs" Inherits="WebAppTest.Views.Shared.LoginStatus" %>
<%
    if (Request.IsAuthenticated) {
%>
        Welcome <strong><%: Page.User.Identity.Name %></strong>!
        [ <%: Html.ActionLink("Logout", "Logout", "Home") %> ]
<%
    }
    else {
%>
        [ <%: Html.ActionLink("LogIn", "Login", "Home") %> ]
<%
    }
%>