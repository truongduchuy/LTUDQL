﻿namespace GUI_layer
{
    partial class frmCTHD
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.txtMaHang = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtTongTien = new System.Windows.Forms.TextBox();
            this.btnAddCTHD = new System.Windows.Forms.Button();
            this.txtDonGia = new System.Windows.Forms.TextBox();
            this.txtDVT = new System.Windows.Forms.TextBox();
            this.dtgv2 = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label12 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.nmrSL = new System.Windows.Forms.NumericUpDown();
            this.label15 = new System.Windows.Forms.Label();
            this.cmbTenHang = new System.Windows.Forms.ComboBox();
            this.label16 = new System.Windows.Forms.Label();
            this.cmbLoaiHang = new System.Windows.Forms.ComboBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.dtpkHoaDon = new System.Windows.Forms.DateTimePicker();
            this.txtMaHD = new System.Windows.Forms.TextBox();
            this.btnDeleteHoaDon = new System.Windows.Forms.Button();
            this.cmbKhachHang = new System.Windows.Forms.ComboBox();
            this.btnTaoMoi = new System.Windows.Forms.Button();
            this.cmbNhanVien = new System.Windows.Forms.ComboBox();
            this.btnEditHoaDon = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.btnAddHoaDon = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.dtgv1 = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgv2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nmrSL)).BeginInit();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgv1)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.txtMaHang);
            this.groupBox3.Controls.Add(this.label6);
            this.groupBox3.Controls.Add(this.label5);
            this.groupBox3.Controls.Add(this.txtTongTien);
            this.groupBox3.Controls.Add(this.btnAddCTHD);
            this.groupBox3.Controls.Add(this.txtDonGia);
            this.groupBox3.Controls.Add(this.txtDVT);
            this.groupBox3.Controls.Add(this.dtgv2);
            this.groupBox3.Controls.Add(this.label12);
            this.groupBox3.Controls.Add(this.label13);
            this.groupBox3.Controls.Add(this.label14);
            this.groupBox3.Controls.Add(this.nmrSL);
            this.groupBox3.Controls.Add(this.label15);
            this.groupBox3.Controls.Add(this.cmbTenHang);
            this.groupBox3.Controls.Add(this.label16);
            this.groupBox3.Controls.Add(this.cmbLoaiHang);
            this.groupBox3.Location = new System.Drawing.Point(46, 244);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(545, 306);
            this.groupBox3.TabIndex = 2;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Chi tiết hóa đơn";
            // 
            // txtMaHang
            // 
            this.txtMaHang.Location = new System.Drawing.Point(78, 85);
            this.txtMaHang.Name = "txtMaHang";
            this.txtMaHang.Size = new System.Drawing.Size(121, 20);
            this.txtMaHang.TabIndex = 22;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(17, 88);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(51, 13);
            this.label6.TabIndex = 21;
            this.label6.Text = "Mã Hàng";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(357, 277);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(52, 13);
            this.label5.TabIndex = 20;
            this.label5.Text = "Tổng tiền";
            // 
            // txtTongTien
            // 
            this.txtTongTien.Location = new System.Drawing.Point(428, 270);
            this.txtTongTien.Name = "txtTongTien";
            this.txtTongTien.Size = new System.Drawing.Size(100, 20);
            this.txtTongTien.TabIndex = 19;
            // 
            // btnAddCTHD
            // 
            this.btnAddCTHD.Location = new System.Drawing.Point(236, 100);
            this.btnAddCTHD.Name = "btnAddCTHD";
            this.btnAddCTHD.Size = new System.Drawing.Size(75, 23);
            this.btnAddCTHD.TabIndex = 18;
            this.btnAddCTHD.Text = "Thêm mới";
            this.btnAddCTHD.UseVisualStyleBackColor = true;
            this.btnAddCTHD.Click += new System.EventHandler(this.button1_Click);
            // 
            // txtDonGia
            // 
            this.txtDonGia.Location = new System.Drawing.Point(428, 88);
            this.txtDonGia.Name = "txtDonGia";
            this.txtDonGia.Size = new System.Drawing.Size(100, 20);
            this.txtDonGia.TabIndex = 17;
            // 
            // txtDVT
            // 
            this.txtDVT.Location = new System.Drawing.Point(428, 61);
            this.txtDVT.Name = "txtDVT";
            this.txtDVT.Size = new System.Drawing.Size(100, 20);
            this.txtDVT.TabIndex = 15;
            // 
            // dtgv2
            // 
            this.dtgv2.AllowUserToAddRows = false;
            this.dtgv2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgv2.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3,
            this.Column4,
            this.Column5,
            this.Column6});
            this.dtgv2.Location = new System.Drawing.Point(16, 129);
            this.dtgv2.Name = "dtgv2";
            this.dtgv2.Size = new System.Drawing.Size(512, 135);
            this.dtgv2.TabIndex = 2;
            this.dtgv2.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dtgv2_CellClick);
            // 
            // Column1
            // 
            this.Column1.HeaderText = "Mã Hàng";
            this.Column1.Name = "Column1";
            // 
            // Column2
            // 
            this.Column2.HeaderText = "Tên Hàng";
            this.Column2.Name = "Column2";
            // 
            // Column3
            // 
            this.Column3.HeaderText = "Số lượng";
            this.Column3.Name = "Column3";
            // 
            // Column4
            // 
            this.Column4.HeaderText = "Đơn vị tính";
            this.Column4.Name = "Column4";
            // 
            // Column5
            // 
            this.Column5.HeaderText = "Đơn giá";
            this.Column5.Name = "Column5";
            // 
            // Column6
            // 
            this.Column6.HeaderText = "Loại Hàng";
            this.Column6.Name = "Column6";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(365, 88);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(44, 13);
            this.label12.TabIndex = 13;
            this.label12.Text = "Đơn giá";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(365, 61);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(60, 13);
            this.label13.TabIndex = 12;
            this.label13.Text = "Đơn vị tính";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(365, 24);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(49, 13);
            this.label14.TabIndex = 11;
            this.label14.Text = "Số lượng";
            // 
            // nmrSL
            // 
            this.nmrSL.Location = new System.Drawing.Point(428, 22);
            this.nmrSL.Maximum = new decimal(new int[] {
            100000,
            0,
            0,
            0});
            this.nmrSL.Minimum = new decimal(new int[] {
            100000,
            0,
            0,
            -2147483648});
            this.nmrSL.Name = "nmrSL";
            this.nmrSL.Size = new System.Drawing.Size(100, 20);
            this.nmrSL.TabIndex = 10;
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Location = new System.Drawing.Point(17, 49);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(53, 13);
            this.label15.TabIndex = 7;
            this.label15.Text = "Tên hàng";
            // 
            // cmbTenHang
            // 
            this.cmbTenHang.FormattingEnabled = true;
            this.cmbTenHang.Location = new System.Drawing.Point(78, 49);
            this.cmbTenHang.Name = "cmbTenHang";
            this.cmbTenHang.Size = new System.Drawing.Size(121, 21);
            this.cmbTenHang.TabIndex = 7;
            this.cmbTenHang.SelectedIndexChanged += new System.EventHandler(this.comboBox1_SelectedIndexChanged);
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Location = new System.Drawing.Point(17, 22);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(54, 13);
            this.label16.TabIndex = 6;
            this.label16.Text = "Loại hàng";
            // 
            // cmbLoaiHang
            // 
            this.cmbLoaiHang.FormattingEnabled = true;
            this.cmbLoaiHang.Location = new System.Drawing.Point(78, 19);
            this.cmbLoaiHang.Name = "cmbLoaiHang";
            this.cmbLoaiHang.Size = new System.Drawing.Size(121, 21);
            this.cmbLoaiHang.TabIndex = 6;
            this.cmbLoaiHang.SelectedIndexChanged += new System.EventHandler(this.comboBox2_SelectedIndexChanged);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.dtpkHoaDon);
            this.groupBox1.Controls.Add(this.txtMaHD);
            this.groupBox1.Controls.Add(this.btnDeleteHoaDon);
            this.groupBox1.Controls.Add(this.cmbKhachHang);
            this.groupBox1.Controls.Add(this.btnTaoMoi);
            this.groupBox1.Controls.Add(this.cmbNhanVien);
            this.groupBox1.Controls.Add(this.btnEditHoaDon);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.btnAddHoaDon);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.dtgv1);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(46, 3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(545, 235);
            this.groupBox1.TabIndex = 3;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Thông tin hóa đơn";
            // 
            // dtpkHoaDon
            // 
            this.dtpkHoaDon.CustomFormat = "dd/MM/yyyy";
            this.dtpkHoaDon.Enabled = false;
            this.dtpkHoaDon.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpkHoaDon.Location = new System.Drawing.Point(98, 44);
            this.dtpkHoaDon.Name = "dtpkHoaDon";
            this.dtpkHoaDon.Size = new System.Drawing.Size(180, 20);
            this.dtpkHoaDon.TabIndex = 19;
            // 
            // txtMaHD
            // 
            this.txtMaHD.Location = new System.Drawing.Point(98, 16);
            this.txtMaHD.Name = "txtMaHD";
            this.txtMaHD.ReadOnly = true;
            this.txtMaHD.Size = new System.Drawing.Size(137, 20);
            this.txtMaHD.TabIndex = 18;
            // 
            // btnDeleteHoaDon
            // 
            this.btnDeleteHoaDon.Enabled = false;
            this.btnDeleteHoaDon.Location = new System.Drawing.Point(350, 200);
            this.btnDeleteHoaDon.Name = "btnDeleteHoaDon";
            this.btnDeleteHoaDon.Size = new System.Drawing.Size(75, 29);
            this.btnDeleteHoaDon.TabIndex = 6;
            this.btnDeleteHoaDon.Text = "Xóa";
            this.btnDeleteHoaDon.UseVisualStyleBackColor = true;
            this.btnDeleteHoaDon.Click += new System.EventHandler(this.btnDeleteHoaDon_Click);
            // 
            // cmbKhachHang
            // 
            this.cmbKhachHang.FormattingEnabled = true;
            this.cmbKhachHang.Location = new System.Drawing.Point(407, 43);
            this.cmbKhachHang.Name = "cmbKhachHang";
            this.cmbKhachHang.Size = new System.Drawing.Size(121, 21);
            this.cmbKhachHang.TabIndex = 5;
            // 
            // btnTaoMoi
            // 
            this.btnTaoMoi.Location = new System.Drawing.Point(48, 200);
            this.btnTaoMoi.Name = "btnTaoMoi";
            this.btnTaoMoi.Size = new System.Drawing.Size(75, 29);
            this.btnTaoMoi.TabIndex = 3;
            this.btnTaoMoi.Text = "Tạo mới";
            this.btnTaoMoi.UseVisualStyleBackColor = true;
            this.btnTaoMoi.Click += new System.EventHandler(this.btnTaoMoi_Click);
            // 
            // cmbNhanVien
            // 
            this.cmbNhanVien.FormattingEnabled = true;
            this.cmbNhanVien.Location = new System.Drawing.Point(407, 13);
            this.cmbNhanVien.Name = "cmbNhanVien";
            this.cmbNhanVien.Size = new System.Drawing.Size(121, 21);
            this.cmbNhanVien.TabIndex = 4;
            // 
            // btnEditHoaDon
            // 
            this.btnEditHoaDon.Enabled = false;
            this.btnEditHoaDon.Location = new System.Drawing.Point(248, 200);
            this.btnEditHoaDon.Name = "btnEditHoaDon";
            this.btnEditHoaDon.Size = new System.Drawing.Size(75, 29);
            this.btnEditHoaDon.TabIndex = 5;
            this.btnEditHoaDon.Text = "Sửa";
            this.btnEditHoaDon.UseVisualStyleBackColor = true;
            this.btnEditHoaDon.Click += new System.EventHandler(this.btnEditHoaDon_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(336, 46);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(65, 13);
            this.label3.TabIndex = 3;
            this.label3.Text = "Khách hàng";
            // 
            // btnAddHoaDon
            // 
            this.btnAddHoaDon.Enabled = false;
            this.btnAddHoaDon.Location = new System.Drawing.Point(145, 200);
            this.btnAddHoaDon.Name = "btnAddHoaDon";
            this.btnAddHoaDon.Size = new System.Drawing.Size(75, 29);
            this.btnAddHoaDon.TabIndex = 4;
            this.btnAddHoaDon.Text = "Thêm";
            this.btnAddHoaDon.UseVisualStyleBackColor = true;
            this.btnAddHoaDon.Click += new System.EventHandler(this.btnAddHoaDon_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(336, 16);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(56, 13);
            this.label4.TabIndex = 2;
            this.label4.Text = "Nhân viên";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 46);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(75, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Ngày hóa đơn";
            // 
            // dtgv1
            // 
            this.dtgv1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgv1.Location = new System.Drawing.Point(9, 87);
            this.dtgv1.Name = "dtgv1";
            this.dtgv1.Size = new System.Drawing.Size(519, 107);
            this.dtgv1.TabIndex = 9;
            this.dtgv1.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dtgv1_CellClick);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 19);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(65, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Mã hóa đơn";
            // 
            // frmCTHD
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(640, 556);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBox3);
            this.Name = "frmCTHD";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "CTHD";
            this.Load += new System.EventHandler(this.CTHD_Load);
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgv2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nmrSL)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgv1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Button btnAddCTHD;
        private System.Windows.Forms.TextBox txtDonGia;
        private System.Windows.Forms.TextBox txtDVT;
        private System.Windows.Forms.DataGridView dtgv2;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.NumericUpDown nmrSL;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.ComboBox cmbTenHang;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.ComboBox cmbLoaiHang;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DateTimePicker dtpkHoaDon;
        private System.Windows.Forms.TextBox txtMaHD;
        private System.Windows.Forms.Button btnDeleteHoaDon;
        private System.Windows.Forms.ComboBox cmbKhachHang;
        private System.Windows.Forms.Button btnTaoMoi;
        private System.Windows.Forms.ComboBox cmbNhanVien;
        private System.Windows.Forms.Button btnEditHoaDon;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnAddHoaDon;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView dtgv1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtTongTien;
        private System.Windows.Forms.TextBox txtMaHang;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column5;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column6;
    }
}