using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GirdView
{
    public partial class GridviewExample : System.Web.UI.Page
    {
        BLL_GridView objBLL_GridView = new BLL_GridView();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        public void BindData()
        {
            DataTable dtEmployees = null;
            dtEmployees = objBLL_GridView.GetEmployeeData();

            if (dtEmployees.Rows.Count > 0)
            {
                gvExample.DataSource = dtEmployees;
                gvExample.DataBind();
            }
            else
            {
                dtEmployees.Rows.Add(dtEmployees.NewRow());
                gvExample.DataSource = dtEmployees;
                gvExample.DataBind();
                gvExample.Rows[0].Cells.Clear();
                gvExample.Rows[0].Cells.Add(new TableCell());
                gvExample.Rows[0].Cells[0].ColumnSpan = dtEmployees.Columns.Count;
                gvExample.Rows[0].Cells[0].Text = "No Data found...!";
                gvExample.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
        }
    }
}