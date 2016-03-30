using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TextEditor
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_IncreaseRows_Click(object sender, EventArgs e)
        {
            int rows = txt_Editor.Rows+1;
            txt_Editor.Rows = rows;
            lbl_ColRowCout.Text = txt_Editor.Columns.ToString() + " x "+txt_Editor.Rows.ToString();
        }

        protected void btn_DecreaseRows_Click(object sender, EventArgs e)
        {
            int rows = txt_Editor.Rows - 1;
            if (rows < 0)
                rows = 0;
            txt_Editor.Rows = rows;
            lbl_ColRowCout.Text = txt_Editor.Columns.ToString() + " x " + txt_Editor.Rows.ToString();
        }

        protected void btn_IncreaseWidth_Click(object sender, EventArgs e)
        {
            int cols = txt_Editor.Columns+1;
            txt_Editor.Columns = cols;
            lbl_ColRowCout.Text = txt_Editor.Columns.ToString() + " x " + txt_Editor.Rows.ToString();
        }

        protected void btn_DecreaseWidth_Click(object sender, EventArgs e)
        {
            int cols = txt_Editor.Columns - 1;
            if (cols < 0)
                cols = 0;
            txt_Editor.Columns = cols;
            lbl_ColRowCout.Text = txt_Editor.Columns.ToString() + " x " + txt_Editor.Rows.ToString();
        }

        protected void chk_Wrap_CheckedChanged(object sender, EventArgs e)
        {
            txt_Editor.Wrap = chk_Wrap.Checked;
        }

        protected void rbtn_Multiline_CheckedChanged(object sender, EventArgs e)
        {
            txt_Editor.TextMode = TextBoxMode.MultiLine;
            if (ViewState["originalText"] != null)
            {
                string originalText = ViewState["originalText"].ToString();
                txt_Editor.Text = originalText;
            }
        }

        protected void rbtn_SingleLine_CheckedChanged(object sender, EventArgs e)
        {
            txt_Editor.TextMode = TextBoxMode.SingleLine;
            string myText = txt_Editor.Text;
            ViewState["originalText"] = myText;
        }

        protected void btn_Duplicate_Click(object sender, EventArgs e)
        {
            string myText = txt_Editor.Text;
            txt_Editor.Text = myText + myText;
        }

        protected void btn_Clear_Click(object sender, EventArgs e)
        {
            txt_Editor.Text = String.Empty;
        }
    }
}