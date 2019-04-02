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
    public partial class frmLogin : Form
    {
        public frmLogin()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {

            if(TaiKhoanBLL.Instance.TaiKhoan_Login(txtUserName.Text, txtPassWord.Text) > 0)
            {
                frmCTHD frm = new frmCTHD();
                this.Hide();
                frm.Show();
            }
        }
    }
}
