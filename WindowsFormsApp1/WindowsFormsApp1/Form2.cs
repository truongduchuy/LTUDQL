using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Form2 : Form
    {
        string strCon = @"Data Source =.\SQLEXPRESS; Initial Catalog = QLBH; Integrated Security = True";
        string sql;
        SqlConnection con;
        SqlDataAdapter adapter;
        SqlCommand command;
        DataTable dt;
        DataTable dt2;
        SqlDataReader reader;
        public Form2()
        {
            InitializeComponent();
            ShowHoaDon();
            loadNV();
            loadKH();
            loadLH();
        }

        void ShowHoaDon()
        {
            sql = "select MaHD, NgayHD,TenKH,TenNV from HOADON hh,KHACHHANG kh, NHANVIEN nv " +
                "where hh.MaKH = kh.MaKH and hh.MaNV = nv.MaNV";
            con = new SqlConnection(strCon);
            con.Open();
            adapter = new SqlDataAdapter(sql, con);
            dt = new DataTable();
            adapter.Fill(dt);
            dtgv1.DataSource = dt;
            con.Close();
        
        }

        void loadNV()
        {
            sql = "select * from NHANVIEN";
            con = new SqlConnection(strCon);
            con.Open();
            adapter = new SqlDataAdapter(sql, con);
            dt = new DataTable();
            adapter.Fill(dt);
            cmbNhanVien.DataSource = dt;
            cmbNhanVien.DisplayMember = "TenNV";
            cmbNhanVien.ValueMember = "MaNV";
            con.Close();
        }
        void loadKH()
        {
            sql = "select * from KHACHHANG";
            con = new SqlConnection(strCon);
            con.Open();
            adapter = new SqlDataAdapter(sql, con);
            dt = new DataTable();
            adapter.Fill(dt);
            cmbKhachHang.DataSource = dt;
            cmbKhachHang.DisplayMember = "TenKH";
            cmbKhachHang.ValueMember = "MaKH";
            con.Close();
        }
        void loadLH()
        {
            sql = "select * from LoaiHang";
            con = new SqlConnection(strCon);
            con.Open();
            adapter = new SqlDataAdapter(sql, con);
            dt = new DataTable();
            adapter.Fill(dt);
            cmbLoaiHang.DataSource = dt;
            cmbLoaiHang.DisplayMember = "TenLoaiHang";
            cmbLoaiHang.ValueMember = "MaLoaiHang";
            con.Close();
        }
        private void button6_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void dtgvHoaDon_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int i = dtgv1.CurrentRow.Index;
            txtMaHD.Text = dtgv1.Rows[i].Cells[0].Value.ToString();
            dtpkHoaDon.Value = Convert.ToDateTime(dtgv1.Rows[i].Cells[1].Value.ToString());
            cmbKhachHang.Text = dtgv1.Rows[i].Cells[2].Value.ToString();
            cmbNhanVien.Text = dtgv1.Rows[i].Cells[3].Value.ToString();   
            string maHD = dtgv1.Rows[i].Cells[0].Value.ToString();
            sql = "Select TenLoaiHang, TenHang, SL, DVT, DonGia from LoaiHang lh, HangHoa hh, CTHD " +
                 "where lh.MaLoaiHang = hh.MaLoaiHang and hh.MaHang = CTHD.MaHang and CTHD.MaHD ='" + maHD+"'";
            using (con = new SqlConnection(strCon))
            {
                con.Open();
                adapter = new SqlDataAdapter(sql,con);
                dt = new DataTable();
                adapter.Fill(dt);
                dtgv2.DataSource = dt;
                con.Close();
            }

        }

        private void btnAddHoaDon_Click(object sender, EventArgs e)
        {
            string sql = "insert into HoaDon values (N'" + txtMaHD.Text + "','" + dtpkHoaDon.Value + "',N'" + cmbKhachHang.SelectedValue + "',N'" + cmbNhanVien.SelectedValue + "')";
            con = new SqlConnection(strCon);
            con.Open();
            command = new SqlCommand(sql, con);
            command.CommandType = CommandType.Text;
            command.ExecuteNonQuery();
            con.Close();
            ShowHoaDon();
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void cmbNhanVien_SelectedIndexChanged(object sender, EventArgs e)
        {
            label8.Text = cmbNhanVien.SelectedValue.ToString();
        }

        private void cmbKhachHang_SelectedIndexChanged(object sender, EventArgs e)
        {
            label11.Text = cmbKhachHang.SelectedValue.ToString();
        }

        private void btnEditHoaDon_Click(object sender, EventArgs e)
        {
            sql = "update HoaDon set NgayHD = '" + dtpkHoaDon.Value.ToString() + "', " +
                "MaKH = '" + cmbKhachHang.SelectedValue + "', MaNV = '" + cmbNhanVien.SelectedValue + "'" +
                "where MaHD = '" + txtMaHD.Text + "'";
            con = new SqlConnection(strCon);
            con.Open();
            command = new SqlCommand(sql, con);
            command.CommandType = CommandType.Text;
            command.ExecuteNonQuery();
            con.Close();
            ShowHoaDon();
        }

        private void btnDeleteHoaDon_Click(object sender, EventArgs e)
        {
            sql = "Delete from HoaDon where MaHD = '" + txtMaHD.Text + "'";
            con = new SqlConnection(strCon);
            con.Open();
            command = new SqlCommand(sql, con);
            command.CommandType = CommandType.Text;
            command.ExecuteNonQuery();
            con.Close();
            ShowHoaDon();
        }

        private void cmbLoaiHang_SelectedIndexChanged(object sender, EventArgs e)
        {
            //cmbLoaiHang.Items.Clear();
            sql = "Select * from HangHoa where MaLoaiHang = '"+cmbLoaiHang.SelectedValue+"'";
            con = new SqlConnection(strCon);
            con.Open();
            dt = new DataTable();
            adapter = new SqlDataAdapter(sql, con);
            adapter.Fill(dt);
            cmbHangHoa.DataSource = dt;
            cmbHangHoa.DisplayMember = "TenHang";
            cmbHangHoa.ValueMember = "MaHang";
            con.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            
            sql = "exec proc_ThemMoiCTHD '"+cmbHangHoa.SelectedValue+"', '"+nmrSoLuong.Value+"'";
            con = new SqlConnection(strCon);
            con.Open();
            adapter = new SqlDataAdapter(sql, con);
            dt = new DataTable();
            adapter.Fill(dt);
            dtgv2.DataSource = dt;
            con.Close();
            con.Dispose();
            

        }

        private void cmbTenHang_SelectedIndexChanged(object sender, EventArgs e)
        {
            sql = "Select * from HangHoa where MaHang = '" + cmbHangHoa.SelectedValue.ToString() + "'";
            con = new SqlConnection(strCon);
            adapter = new SqlDataAdapter(sql, con);
            dt = new DataTable();
            adapter.Fill(dt);
            txtDVT.Text = dt.Rows[0]["DVT"].ToString();
            txtDonGia.Text = dt.Rows[0]["DonGia"].ToString();
        }

        private void dataGridView2_CellClick(object sender, DataGridViewCellEventArgs e)
        {

        }

       
    }
}
