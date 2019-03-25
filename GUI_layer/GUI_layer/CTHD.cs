using BLL_Layer;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GUI_layer
{
    public partial class CTHD : Form
    {
        DataTable dt;
        public CTHD()
        {
            InitializeComponent();
            LoadHoaDon();
            dtpkHoaDon.Value = DateTime.Now;
        }

        private void dtgv1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            LoadKhachHang();
            LoadNhanVien();
            LoadLoaiHang();
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = dtgv1.Rows[e.RowIndex];
                txtMaHD.Text = row.Cells[0].Value.ToString();
                dtpkHoaDon.Value = Convert.ToDateTime(row.Cells[1].Value.ToString());
                cmbKhachHang.Text = row.Cells[2].Value.ToString();
                cmbNhanVien.Text = row.Cells[3].Value.ToString();
            }

            dtgv2.DataSource = CTHD_BLL.Instance.CTHD_SelectByMaHD(txtMaHD.Text);
            if (dtgv2.Rows.Count > 0)
            {
                DataGridViewRow row2 = dtgv2.Rows[0];
                cmbLoaiHang.Text = row2.Cells[0].Value.ToString();
                cmbTenHang.Text = row2.Cells[1].Value.ToString();
                nmrSL.Value = Convert.ToInt32(row2.Cells[2].Value.ToString());
                txtDVT.Text = row2.Cells[3].Value.ToString();
                txtDonGia.Text = row2.Cells[4].Value.ToString();
            }
            //set button
            btnEditHoaDon.Enabled = true;
            btnDeleteHoaDon.Enabled = true;
            btnAddHoaDon.Enabled = false;
            btnAddCTHD.Enabled = true;

        }
        void LoadKhachHang()
        {
            cmbKhachHang.DataSource = KhachHangBLL.Instance.KhachHang_Select();
            cmbKhachHang.DisplayMember = "TenKH";
            cmbKhachHang.ValueMember = "MaKH";
        }
        void LoadNhanVien()
        {
            cmbNhanVien.DataSource = NhanVienBLL.Instance.NhanVien_Select();
            cmbNhanVien.DisplayMember = "TenNV";
            cmbNhanVien.ValueMember = "MaNV";
        }
        void LoadLoaiHang()
        {
            cmbLoaiHang.DataSource = LoaiHangBLL.Instance.LoaiHang_Select();
            cmbLoaiHang.DisplayMember = "TenLoaiHang";
            cmbLoaiHang.ValueMember = "MaLoaiHang";
        }
        void LoadHoaDon()
        {
            dtgv1.DataSource = HoaDonBLL.Instance.HoaDon_Select();
        }
        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            cmbTenHang.DataSource = HangHoaBLL.Instance.HangHoa_SelectByMaLH(cmbLoaiHang.SelectedValue.ToString());
            cmbTenHang.DisplayMember = "TenHang";
            cmbTenHang.ValueMember = "MaHang";
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            dt = HangHoaBLL.Instance.HangHoa_SelectByMa(cmbTenHang.SelectedValue.ToString());
            txtDVT.Text = dt.Rows[0]["DVT"].ToString();
            txtDonGia.Text = dt.Rows[0]["DonGia"].ToString();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            dtgv2.DataSource = CTHD_BLL.Instance.CTHD_Insert(txtMaHD.Text, cmbTenHang.SelectedValue.ToString(), Convert.ToInt32(nmrSL.Value.ToString()));
        }

        private void dtgv2_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            
            if(e.RowIndex >= 0)
            {
                DataGridViewRow row = dtgv2.Rows[e.RowIndex];
                cmbLoaiHang.Text = row.Cells[0].Value.ToString();
                cmbTenHang.Text = row.Cells[1].Value.ToString();
                nmrSL.Value = Convert.ToInt32(row.Cells[2].Value.ToString());
                txtDVT.Text = row.Cells[3].Value.ToString();
                txtDonGia.Text = row.Cells[4].Value.ToString();
            }
        }
        void Clear()
        {
            txtMaHD.Text = "";
            dtpkHoaDon.Value = DateTime.Now;
            cmbKhachHang.Text = "";
            cmbNhanVien.Text = "";
            cmbLoaiHang.Text = "";
            cmbTenHang.Text = "";
            nmrSL.Value = 0;
            txtDVT.Text = "";
            txtDonGia.Text = "";
            dtgv2.DataSource = new DataTable();
        }
        private void btnTaoMoi_Click(object sender, EventArgs e)
        {
            btnAddHoaDon.Enabled = true;
            btnEditHoaDon.Enabled = false;
            btnDeleteHoaDon.Enabled = false;
            Clear();
            dt = HoaDonBLL.Instance.HoaDon_SelectNewID();
            txtMaHD.Text = dt.Rows[0][0].ToString();
            
        }
        DataGridViewRow lastSelected;
        private void btnAddHoaDon_Click(object sender, EventArgs e)
        {
            if (cmbKhachHang.Text != "" && cmbNhanVien.Text != "")
            {
                HoaDonBLL.Instance.HoaDon_Insert(cmbKhachHang.SelectedValue.ToString(), cmbNhanVien.SelectedValue.ToString());
                LoadHoaDon();
                dtgv1.ClearSelection();
                int nRowIndex = dtgv1.Rows.Count - 1;

                dtgv1.Rows[nRowIndex].Selected = true;
                dtgv1.Rows[nRowIndex].Cells[0].Selected = true;
            }
            else
            {
                MessageBox.Show("Chọn Khách Hàng và Nhân Viên để thêm");
            }
        }

        private void btnEditHoaDon_Click(object sender, EventArgs e)
        {
            HoaDonBLL.Instance.HoaDon_Update(txtMaHD.Text, cmbKhachHang.SelectedValue.ToString(), cmbNhanVien.SelectedValue.ToString());
            LoadHoaDon();
        }

        private void btnDeleteHoaDon_Click(object sender, EventArgs e)
        {
            HoaDonBLL.Instance.HoaDon_Delete(txtMaHD.Text);
            LoadHoaDon();
        }
    }
}
