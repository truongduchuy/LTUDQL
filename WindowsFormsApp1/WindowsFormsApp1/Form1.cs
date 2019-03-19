using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        //Them vao 1 doi tuong combobox va 1 doi tuong button
        SqlConnection cn;
        SqlDataAdapter adapter;
        DataSet ds;
        DataTable dt;
        string sql;
        SqlCommand command;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            
            sql = "Select * from LoaiHang ";
            cn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=QLBH; Integrated Security=True");
            cn.Open();
            adapter = new SqlDataAdapter(sql, cn);
            //ds = new DataSet();
            ////da.Fill(ds, "HANGHOA");
            dt = new DataTable();
            adapter.Fill(dt);
            ////dataGridView1.DataSource = ds;
            ////dataGridView1.DataMember = "HANGHOA";
            //dataGridView1.DataSource = dt;

            cmbDemo.DataSource = dt;
            cmbDemo.DisplayMember = "TenLoaiHang";
            cmbDemo.ValueMember = "MaLoaiHang";



            
            cn.Close();
            cn.Dispose();

        }

        private void btDemo_Click(object sender, EventArgs e)
        {
            ShowList();
        }
        public void ShowList()
        {
            string sql = "Select * from HangHoa where MaLoaiHang = '" + cmbDemo.SelectedValue + "' ";
            cn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=QLBH; Integrated Security=True");
            //SqlCommand command = new SqlCommand(sql, cn);
            //adapter = new SqlDataAdapter(command);
            adapter = new SqlDataAdapter(sql, cn);
            dt = new DataTable();
            adapter.Fill(dt);
            dataGridView1.DataSource = dt;
            cn.Close();
        }
        private void cmbDemo_SelectionChangeCommitted(object sender, EventArgs e)
        {
            
        }

        private void cmbDemo_SelectedIndexChanged(object sender, EventArgs e)
        {
            //switch (cmbDemo.SelectedIndex)
            //{
            //    case 0: sql = "Select * from HoaDon"; break;
            //    case 1: sql = "Select * from HangHoa"; break;
            //    case 2: sql = "Select * from CTHD"; break;
            //    case 3: sql = "Select * from LoaiHang"; break;
            //    case 4: sql = "Select * from NhanVien"; break;
            //    default: sql = "Select * from KhachHang"; break;
            //}
            
            //da = new SqlDataAdapter(sql, cn);
            //dt = new DataTable();
            //da.Fill(dt);
            //dataGridView1.DataSource = dt;
            //cn.Close();
            //cn.Dispose();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow row = this.dataGridView1.Rows[e.RowIndex];
                txtMaHang.Text = row.Cells[0].Value.ToString();
                txtTenHang.Text = row.Cells[1].Value.ToString();
                txtDVT.Text = row.Cells[2].Value.ToString();
                txtDonGia.Text = row.Cells[3].Value.ToString();
                txtSLCon.Text = row.Cells[4].Value.ToString();
            } 
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtMaHang.Clear();
            txtTenHang.Clear();
            txtDVT.Clear();
            txtDonGia.Clear();
            txtSLCon.Clear();
            txtMaHang.Focus();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            string sql = "insert into HangHoa values (N'" + txtMaHang.Text + "',N'" + txtTenHang.Text + "'," +
                "N'" + txtDVT.Text + "'," + txtDonGia.Text + "," + txtSLCon.Text + ",N'" + cmbDemo.SelectedValue + "')";
            cn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=QLBH; Integrated Security=True");
            cn.Open();
            command = new SqlCommand(sql, cn);
            command.CommandType = CommandType.Text;
            command.ExecuteNonQuery();
            cn.Close();
            cn.Dispose();
            ShowList();

        }

        private void btnEdit_Click(object sender, EventArgs e)
        {
            string sql = "Update HangHoa set TenHang = N'" + txtTenHang.Text + "'" +
                ",DVT = N'" + txtDVT.Text + "',DonGia =" + txtDonGia.Text + ",SLcon = "+txtSLCon.Text+"" +
                "where MaHang = N'" + txtMaHang.Text + "'";
            cn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=QLBH; Integrated Security=True");
            cn.Open();
            command = new SqlCommand(sql, cn);
            command.CommandType = CommandType.Text;
            command.ExecuteNonQuery();
            cn.Close();
            cn.Dispose();
            ShowList();
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            string sql = "Delete from HangHoa where MaHang = '" + txtMaHang.Text + "'";
            cn = new SqlConnection(@"Data Source=.\SQLEXPRESS; Initial Catalog=QLBH; Integrated Security=True");
            cn.Open();
            command = new SqlCommand(sql, cn);
            command.CommandType = CommandType.Text;
            command.ExecuteNonQuery();
            cn.Close();
            cn.Dispose();
            ShowList();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}

