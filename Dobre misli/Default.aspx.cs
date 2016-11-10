using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dobre_misli
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["Misli"] == null)
            {
                Application["Misli"] = new List<string>();
            }
        }

        protected void dodajMisel_Click(object sender, EventArgs e)
        {   
            String dobraMisel = misel.Text;
            /**
            misli.Controls.Add(new Literal() { Text = dobraMisel });
            **/

           
            var misliTabela = (List<string>)Application["Misli"];
            bool alreadyExists = misliTabela.Contains(dobraMisel);
            if (!alreadyExists)
            {
                misliTabela.Insert(0, dobraMisel);
            }
            

            foreach (var pMisel in misliTabela)
            {
                var label = new Label();
                label.Text = pMisel + new HtmlString("<br />");
                FindControl("misli").Controls.Add(label);
            }
        }
    }
    
}