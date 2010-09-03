<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<OssPledge.InventoryItemListDto>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <img src="./Content/Images/Pledge.png" />
        <%: Html.ActionLink("Pledge","Pledge/Add") %>
        <img src="./Content/Images/AddProject.png" alt="Add Project" />
        <%: Html.ActionLink("Add Project", "Project/Add")%>
    </div>

    <hr />
    <!-- Pledges -->
    <h2>Pledges</h2>
    <ul><% foreach (var inventoryItemListDto in Model)
        {%><li>
            <%: Html.ActionLink("Name: " + inventoryItemListDto.Name,"Details",new{Id=inventoryItemListDto.Id}) %>
        </li>
    <%} %></ul>
    

    <!-- Projects -->
    <h2>Projects</h2>
    <ul><% foreach (var inventoryItemListDto in Model)
        {%><li>
            <%: Html.ActionLink("Name: " + inventoryItemListDto.Name,"Details",new{Id=inventoryItemListDto.Id}) %>
        </li>
    <%} %></ul>

</asp:Content>
