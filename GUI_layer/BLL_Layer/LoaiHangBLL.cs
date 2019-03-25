using DAL_Layer2;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL_Layer
{
    public class LoaiHangBLL
    {
        LoaiHangDAL lhDAL = new LoaiHangDAL();
        private static LoaiHangBLL instance;
        public static LoaiHangBLL Instance
        {
            get { if (instance == null) instance = new LoaiHangBLL(); return LoaiHangBLL.instance; }
            set { instance = value; }
        }
        
        public DataTable LoaiHang_Select()
        {
            return lhDAL.LoaiHang_Select();
        }
        public DataTable LoaiHang_SelectByMa(string maLH)
        {
            return lhDAL.LoaiHang_SelectByMa(maLH);
        }
    }
}
