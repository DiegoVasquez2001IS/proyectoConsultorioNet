﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Medico/Medico.Master" AutoEventWireup="true"
    CodeBehind="RecetaMedica.aspx.cs" Inherits="consultorioWeb.Medico.RecetaMedica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style3
        {
            width: 230px;
        }
        .style4
        {
            width: 179px;
        }
        .style5
        {
            width: 442px;
        }
        .style7
        {
            width: 14px;
        }
        .style8
        {
            width: 18px;
        }
        .style9
        {
            width: 19px;
        }
        .style10
        {
            width: 20px;
        }
        .style11
        {
            width: 337px;
        }
        .style13
        {
            width: 69px;
        }
        .style16
        {
            height: 12px;
            width: 69px;
        }
        .style17
        {
            width: 221px;
        }
        .style18
        {
            width: 140px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td class="style18">
                    &nbsp;
                </td>
                <td class="style7">
                    <asp:Label ID="Label1" runat="server" Text="Ficha Paciente - Medicamentos" Style="font-weight: 700;
                        font-size: xx-large; color: #FFFFFF; text-align: center; background-color: #003366;"></asp:Label>
                </td>
                <td class="style7">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;
                </td>
                <td class="style7">
                    <center>
                        <asp:Label ID="lblMensaje" runat="server" Style="font-weight: 700; color: #FF5050;
                            font-size: xx-large;" Text=""></asp:Label>
                    </center>
                </td>
                <td class="style7">
                </td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;
                </td>
                <td>
                    <table style="width: 100%; height: 130px;">
                        <tr>
                            <td class="style5">
                                <asp:Label ID="lbl" runat="server" Text="N° Ficha " Style="color: #003366; font-size: x-large"></asp:Label>
                                <asp:Label ID="lblID" runat="server" Style="font-weight: 700; color: #3399FF; font-size: xx-large"
                                    Text=""></asp:Label>
                            </td>
                            <td class="style3">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label2" runat="server" Text="Nombre:"></asp:Label>
                                &nbsp;<asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="style3">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label14" runat="server" Text="Rut"></asp:Label>
                                :
                                <asp:Label ID="lblRut" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="style3">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Label ID="Label15" runat="server" Text="Fecha"></asp:Label>
                                :
                                <asp:Label ID="lblFecha" runat="server" Text=""></asp:Label>
                            </td>
                            <td class="style3">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;
                </td>
                <td>
                    <table style="width: 98%; height: 379px;">
                        <tr>
                            <td class="style4">
                                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="ReadAll"
                                    TypeName="capaNegocio.MedicamentosColeccion"></asp:ObjectDataSource>
                            </td>
                            <td class="style8">
                                &nbsp;
                            </td>
                            <td class="style17">
                                <asp:Label ID="lblMedicamento" runat="server" Style="font-weight: 700; color: #FF6600;
                                    font-size: large" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                    CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None"
                                    OnPageIndexChanging="paginacion" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:CommandField ShowSelectButton="True" />
                                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                        <asp:BoundField DataField="Glosa" HeaderText="Glosa" SortExpression="Glosa" />
                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                            <td class="style8">
                                &nbsp;
                            </td>
                            <td class="style17">
                                <table style="width: 108%;">
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                            <td class="style17">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;
                            </td>
                            <td class="style8">
                                &nbsp;
                            </td>
                            <td class="style17">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                    <table style="width: 96%;">
                        <tr>
                            <td class="style9">
                                <a href="PanelConsultaM.aspx" style="font-weight: 700; font-size: x-large">Volver</a>
                            </td>
                            <td class="style10">
                                <asp:Button ID="btnGuardarMedico" runat="server" Text="Guardar" Height="54px" OnClick="btnGuardarMedico_Click"
                                    Width="236px" />
                            </td>
                            <td class="style11">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
