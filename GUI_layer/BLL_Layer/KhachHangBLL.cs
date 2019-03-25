using DAL_Layer2;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL_Layer
{
    public class KhachHangBLL
    {
        KhachHangDAL khDAL = new KhachHangDAL();
        private static KhachHangBLL instance;
        public static KhachHangBLL Instance
        {
            get { if (instance == null) instance = new KhachHangBLL(); return KhachHangBLL.instance; }
            set { instance = value; }
        }

        public DataTable KhachHang_Select()
        {
            return khDAL.KhachHang_Select();
        }
        public DataTable KhachHang_SelectByMa(string maLH)
        {
            return khDAL.KhachHang_SelectByMa(maLH);
        }
    }
}
