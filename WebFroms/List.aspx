<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="WebFroms.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="content-container">
        <div id="accordion" class="panel-group">
            <%//grid view %>
            <div class="panel panel-default">
                <%//header %>
                <div class="panel-heading">
                    <div class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                            <asp:Label runat="server" Text="GridView"></asp:Label>
                        </a>
                    </div>
                </div>
                <%//content %>
                <div id="collapseOne" class="panel-collapse collapse in">
                    <div class="panel-body">

                        <asp:GridView ID="GwPersons" CssClass="table table-hover" runat="server" AutoGenerateColumns="false" OnRowEditing="GwPersons_RowEditing" OnRowUpdating="GwPersons_RowUpdating" OnRowCancelingEdit="GwPersons_RowCancelingEdit">
                            <Columns>
                                <asp:TemplateField Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="lblId" runat="server" Text='<%# Bind("IDPerson") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="FirstName" HeaderText="First name" />
                                <asp:BoundField DataField="Surname" HeaderText="Surname" />
                                <asp:BoundField DataField="Telephone" HeaderText="Telephone" />
                                <asp:BoundField DataField="Admin" HeaderText="Is Admin" />
                                <asp:CommandField ShowEditButton="true" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
