﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QLKhoa.aspx.cs" Inherits="WebQLDaoTao.QLKhoa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Contents/Paging.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <h2>Quản lý sinh viên </h2>
    <hr />

    <!-- Modal -->
    <div class="modal fade" id="modalOpenAddButton" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">THÊM MỚI SINH VIÊN</h4>
                </div>
                <div class="modal-body">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="control-label col-md-2">Mã SV</label>
                            <div class="col-md-2">
                                <asp:TextBox ID="txtMaSV" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-2">Họ SV</label>
                            <div class="col-md-2">
                                <asp:TextBox ID="txtHoSv" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <label class="control-label col-md-2">Tên SV</label>
                            <div class="col-md-2">
                                <asp:TextBox ID="txtTenSV" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
                                <link href="Contents/Paging.css" rel="stylesheet" />
                                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css">
                                <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
                            </asp:Content>
                            <asp:Content ID="Content4" ContentPlaceHolderID="Main" runat="server">
                                <h2>Quản LÝ KHOA </h2>
                                <hr />
                                <div>
                                    <button type="button" class="btn btn-info btn-lg" style="margin-bottom: 5px;" data-toggle="modal" data-target="#modalOpenAddButton">Thêm</button>
                                    <!-- Modal -->
                                    <div class="modal fade" id="modalOpenAddButton" role="dialog">
                                        <div class="modal-dialog">

                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h4 class="modal-title">DANH SÁCH KHOA</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <div>
                                                        <div class="form-group">
                                                            <label>Mã khoa</label>
                                                            <asp:TextBox ID="txtMakh" CssClass="form-control" runat="server"></asp:TextBox>
                                                        </div>

                                                        <div class="form-group">
                                                            <label>Tên khoa</label>
                                                            <asp:TextBox ID="txtTenkh" CssClass="form-control" runat="server" ControlToValidate="txtTenmh"></asp:TextBox>
                                                        </div>

                                                        <div class="form-group">
                                                            <asp:Button ID="btnThem" class="btn btn-success" OnClick="btnThem_Click" runat="server" Text="Thêm" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <asp:ValidationSummary ID="vsKq" runat="server" ForeColor="#FF3300" Font-Size="Medium" />
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Huỷ</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <asp:GridView CssClass="table table-bordered" ID="gvKhoa" runat="server" AutoGenerateColumns="False" DataKeyNames="MaKH"
                                        OnRowEditing="gvKhoa_RowEditing" OnRowCancelingEdit="gvKhoa_RowCancelingEdit" OnRowDeleting="gvKhoa_RowDeleting"
                                        OnRowUpdating="gvKhoa_RowUpdating" AllowPaging="true" PageSize="5" OnPageIndexChanging="gvKhoa_PageIndexChanging">
                                        <columns>
                                            <asp:BoundField HeaderText="Mã khoa" DataField="MaKH" ReadOnly="true" />
                                            <asp:BoundField HeaderText="Tên khoa" DataField="TenKH" />
                                            <asp:TemplateField HeaderText="Chọn tác vụ">
                                                <itemtemplate>
                                                    <asp:Button ID="btnSua" runat="server" Text="Sửa" CommandName="Edit" CssClass="btn btn-primary" />
                                                    <asp:LinkButton ID="btnXoa" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa môn học này ra khỏi danh sách?')"
                                                        runat="server" CommandName="Delete" CssClass="btn btn-danger">
                                                        <i class="bi bi-trash"></i>Xóa
                                                    </asp:LinkButton>
                                                </itemtemplate>
                                                <edititemtemplate>
                                                    <asp:Button ID="btnUpdate" runat="server" Text="Cập nhật" CssClass="btn btn-success" CommandName="Update" />
                                                    <asp:Button ID="btnCancel" runat="server" Text="Hủy" CssClass="btn btn-warning" CommandName="Cancel" />
                                                </edititemtemplate>
                                            </asp:TemplateField>
                                        </columns>
                                        <headerstyle backcolor="#0066cc" forecolor="#ffffff" />
                                        <pagerstyle horizontalalign="Center" cssclass="pager-style" />
                                    </asp:GridView>
                                </div>
                            </asp:Content>
