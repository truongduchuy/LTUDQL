﻿namespace GUI_layer
{
    partial class frmNhanVien
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
            this.panel6 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.rdbtnNu = new System.Windows.Forms.RadioButton();
            this.rdbtnNam = new System.Windows.Forms.RadioButton();
            this.label4 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.dtpkBirthDay = new System.Windows.Forms.DateTimePicker();
            this.label5 = new System.Windows.Forms.Label();
            this.panel9 = new System.Windows.Forms.Panel();
            this.txtSDT = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.panel8 = new System.Windows.Forms.Panel();
            this.txtTenNV = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.panel7 = new System.Windows.Forms.Panel();
            this.txtMaNV = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.panel5 = new System.Windows.Forms.Panel();
            this.txtSearchNV = new System.Windows.Forms.TextBox();
            this.btnSearchNV = new System.Windows.Forms.Button();
            this.panel4 = new System.Windows.Forms.Panel();
            this.dtgvNhanVien = new System.Windows.Forms.DataGridView();
            this.panel3 = new System.Windows.Forms.Panel();
            this.btnShowNhanVien = new System.Windows.Forms.Button();
            this.btnDeleteNhanVien = new System.Windows.Forms.Button();
            this.btnEditNhanVien = new System.Windows.Forms.Button();
            this.btnAddNhanVien = new System.Windows.Forms.Button();
            this.panel6.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel1.SuspendLayout();
            this.panel9.SuspendLayout();
            this.panel8.SuspendLayout();
            this.panel7.SuspendLayout();
            this.panel5.SuspendLayout();
            this.panel4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgvNhanVien)).BeginInit();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel6
            // 
            this.panel6.Controls.Add(this.panel2);
            this.panel6.Controls.Add(this.panel1);
            this.panel6.Controls.Add(this.panel9);
            this.panel6.Controls.Add(this.panel8);
            this.panel6.Controls.Add(this.panel7);
            this.panel6.Location = new System.Drawing.Point(455, 119);
            this.panel6.Name = "panel6";
            this.panel6.Size = new System.Drawing.Size(333, 362);
            this.panel6.TabIndex = 7;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.rdbtnNu);
            this.panel2.Controls.Add(this.rdbtnNam);
            this.panel2.Controls.Add(this.label4);
            this.panel2.Location = new System.Drawing.Point(3, 170);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(300, 46);
            this.panel2.TabIndex = 4;
            // 
            // rdbtnNu
            // 
            this.rdbtnNu.AutoSize = true;
            this.rdbtnNu.Location = new System.Drawing.Point(242, 10);
            this.rdbtnNu.Name = "rdbtnNu";
            this.rdbtnNu.Size = new System.Drawing.Size(39, 17);
            this.rdbtnNu.TabIndex = 2;
            this.rdbtnNu.Text = "Nữ";
            this.rdbtnNu.UseVisualStyleBackColor = true;
            // 
            // rdbtnNam
            // 
            this.rdbtnNam.AutoSize = true;
            this.rdbtnNam.Checked = true;
            this.rdbtnNam.Location = new System.Drawing.Point(130, 10);
            this.rdbtnNam.Name = "rdbtnNam";
            this.rdbtnNam.Size = new System.Drawing.Size(47, 17);
            this.rdbtnNam.TabIndex = 1;
            this.rdbtnNam.TabStop = true;
            this.rdbtnNam.Text = "Nam";
            this.rdbtnNam.UseVisualStyleBackColor = true;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(4, 10);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(78, 19);
            this.label4.TabIndex = 0;
            this.label4.Text = "Giới Tính";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.dtpkBirthDay);
            this.panel1.Controls.Add(this.label5);
            this.panel1.Location = new System.Drawing.Point(3, 118);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(300, 46);
            this.panel1.TabIndex = 3;
            // 
            // dtpkBirthDay
            // 
            this.dtpkBirthDay.CustomFormat = "dd/MM/yyyy";
            this.dtpkBirthDay.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpkBirthDay.Location = new System.Drawing.Point(134, 8);
            this.dtpkBirthDay.Name = "dtpkBirthDay";
            this.dtpkBirthDay.Size = new System.Drawing.Size(150, 20);
            this.dtpkBirthDay.TabIndex = 1;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(4, 10);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(88, 19);
            this.label5.TabIndex = 0;
            this.label5.Text = "Ngày Sinh";
            // 
            // panel9
            // 
            this.panel9.Controls.Add(this.txtSDT);
            this.panel9.Controls.Add(this.label6);
            this.panel9.Location = new System.Drawing.Point(3, 222);
            this.panel9.Name = "panel9";
            this.panel9.Size = new System.Drawing.Size(300, 46);
            this.panel9.TabIndex = 3;
            // 
            // txtSDT
            // 
            this.txtSDT.Location = new System.Drawing.Point(134, 11);
            this.txtSDT.Name = "txtSDT";
            this.txtSDT.Size = new System.Drawing.Size(147, 20);
            this.txtSDT.TabIndex = 1;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(4, 10);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(116, 19);
            this.label6.TabIndex = 0;
            this.label6.Text = "Số Điện Thoại";
            // 
            // panel8
            // 
            this.panel8.Controls.Add(this.txtTenNV);
            this.panel8.Controls.Add(this.label2);
            this.panel8.Location = new System.Drawing.Point(3, 66);
            this.panel8.Name = "panel8";
            this.panel8.Size = new System.Drawing.Size(300, 46);
            this.panel8.TabIndex = 2;
            // 
            // txtTenNV
            // 
            this.txtTenNV.Location = new System.Drawing.Point(134, 9);
            this.txtTenNV.Name = "txtTenNV";
            this.txtTenNV.Size = new System.Drawing.Size(147, 20);
            this.txtTenNV.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(4, 10);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(121, 19);
            this.label2.TabIndex = 0;
            this.label2.Text = "Tên Nhân Viên";
            // 
            // panel7
            // 
            this.panel7.Controls.Add(this.txtMaNV);
            this.panel7.Controls.Add(this.label1);
            this.panel7.Location = new System.Drawing.Point(3, 14);
            this.panel7.Name = "panel7";
            this.panel7.Size = new System.Drawing.Size(300, 46);
            this.panel7.TabIndex = 1;
            // 
            // txtMaNV
            // 
            this.txtMaNV.Location = new System.Drawing.Point(134, 9);
            this.txtMaNV.Name = "txtMaNV";
            this.txtMaNV.ReadOnly = true;
            this.txtMaNV.Size = new System.Drawing.Size(147, 20);
            this.txtMaNV.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(4, 10);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(114, 19);
            this.label1.TabIndex = 0;
            this.label1.Text = "Mã Nhân Viên";
            // 
            // panel5
            // 
            this.panel5.Controls.Add(this.txtSearchNV);
            this.panel5.Controls.Add(this.btnSearchNV);
            this.panel5.Location = new System.Drawing.Point(455, 50);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(333, 63);
            this.panel5.TabIndex = 8;
            // 
            // txtSearchNV
            // 
            this.txtSearchNV.Location = new System.Drawing.Point(3, 22);
            this.txtSearchNV.Name = "txtSearchNV";
            this.txtSearchNV.Size = new System.Drawing.Size(208, 20);
            this.txtSearchNV.TabIndex = 5;
            // 
            // btnSearchNV
            // 
            this.btnSearchNV.Location = new System.Drawing.Point(229, 3);
            this.btnSearchNV.Name = "btnSearchNV";
            this.btnSearchNV.Size = new System.Drawing.Size(74, 57);
            this.btnSearchNV.TabIndex = 4;
            this.btnSearchNV.Text = "Tìm ";
            this.btnSearchNV.UseVisualStyleBackColor = true;
            this.btnSearchNV.Click += new System.EventHandler(this.btnSearchNV_Click);
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.dtgvNhanVien);
            this.panel4.Location = new System.Drawing.Point(39, 119);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(410, 362);
            this.panel4.TabIndex = 9;
            // 
            // dtgvNhanVien
            // 
            this.dtgvNhanVien.AllowUserToAddRows = false;
            this.dtgvNhanVien.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgvNhanVien.Location = new System.Drawing.Point(6, 3);
            this.dtgvNhanVien.Name = "dtgvNhanVien";
            this.dtgvNhanVien.Size = new System.Drawing.Size(401, 346);
            this.dtgvNhanVien.TabIndex = 0;
            this.dtgvNhanVien.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dtgvNhanVien_CellClick);
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.btnShowNhanVien);
            this.panel3.Controls.Add(this.btnDeleteNhanVien);
            this.panel3.Controls.Add(this.btnEditNhanVien);
            this.panel3.Controls.Add(this.btnAddNhanVien);
            this.panel3.Location = new System.Drawing.Point(39, 50);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(410, 63);
            this.panel3.TabIndex = 6;
            // 
            // btnShowNhanVien
            // 
            this.btnShowNhanVien.Location = new System.Drawing.Point(292, 3);
            this.btnShowNhanVien.Name = "btnShowNhanVien";
            this.btnShowNhanVien.Size = new System.Drawing.Size(74, 57);
            this.btnShowNhanVien.TabIndex = 3;
            this.btnShowNhanVien.Text = "Xem";
            this.btnShowNhanVien.UseVisualStyleBackColor = true;
            this.btnShowNhanVien.Click += new System.EventHandler(this.btnShowNhanVien_Click);
            // 
            // btnDeleteNhanVien
            // 
            this.btnDeleteNhanVien.Location = new System.Drawing.Point(101, 3);
            this.btnDeleteNhanVien.Name = "btnDeleteNhanVien";
            this.btnDeleteNhanVien.Size = new System.Drawing.Size(74, 57);
            this.btnDeleteNhanVien.TabIndex = 2;
            this.btnDeleteNhanVien.Text = "Xóa";
            this.btnDeleteNhanVien.UseVisualStyleBackColor = true;
            this.btnDeleteNhanVien.Click += new System.EventHandler(this.btnDeleteNhanVien_Click);
            // 
            // btnEditNhanVien
            // 
            this.btnEditNhanVien.Location = new System.Drawing.Point(194, 3);
            this.btnEditNhanVien.Name = "btnEditNhanVien";
            this.btnEditNhanVien.Size = new System.Drawing.Size(74, 57);
            this.btnEditNhanVien.TabIndex = 1;
            this.btnEditNhanVien.Text = "Sửa";
            this.btnEditNhanVien.UseVisualStyleBackColor = true;
            this.btnEditNhanVien.Click += new System.EventHandler(this.btnEditNhanVien_Click);
            // 
            // btnAddNhanVien
            // 
            this.btnAddNhanVien.Location = new System.Drawing.Point(6, 3);
            this.btnAddNhanVien.Name = "btnAddNhanVien";
            this.btnAddNhanVien.Size = new System.Drawing.Size(74, 57);
            this.btnAddNhanVien.TabIndex = 0;
            this.btnAddNhanVien.Text = "Thêm";
            this.btnAddNhanVien.UseVisualStyleBackColor = true;
            this.btnAddNhanVien.Click += new System.EventHandler(this.btnAddNhanVien_Click);
            // 
            // QLNhanVien
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 530);
            this.Controls.Add(this.panel6);
            this.Controls.Add(this.panel5);
            this.Controls.Add(this.panel4);
            this.Controls.Add(this.panel3);
            this.Name = "QLNhanVien";
            this.Text = "QLNhanVien";
            this.Load += new System.EventHandler(this.QLNhanVien_Load);
            this.panel6.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel9.ResumeLayout(false);
            this.panel9.PerformLayout();
            this.panel8.ResumeLayout(false);
            this.panel8.PerformLayout();
            this.panel7.ResumeLayout(false);
            this.panel7.PerformLayout();
            this.panel5.ResumeLayout(false);
            this.panel5.PerformLayout();
            this.panel4.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dtgvNhanVien)).EndInit();
            this.panel3.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel6;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Panel panel9;
        private System.Windows.Forms.TextBox txtSDT;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Panel panel8;
        private System.Windows.Forms.TextBox txtTenNV;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Panel panel7;
        private System.Windows.Forms.TextBox txtMaNV;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.TextBox txtSearchNV;
        private System.Windows.Forms.Button btnSearchNV;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.DataGridView dtgvNhanVien;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Button btnShowNhanVien;
        private System.Windows.Forms.Button btnDeleteNhanVien;
        private System.Windows.Forms.Button btnEditNhanVien;
        private System.Windows.Forms.Button btnAddNhanVien;
        private System.Windows.Forms.RadioButton rdbtnNu;
        private System.Windows.Forms.RadioButton rdbtnNam;
        private System.Windows.Forms.DateTimePicker dtpkBirthDay;
    }
}