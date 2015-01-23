using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected string OrgURL { get; set; }
    public Settings clubSettings { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        clubSettings = new Settings();
        this.clubSettings = (Settings)Session["Settings"];
        OrgURL = clubSettings.ClubInfo.MISGAURL;
        literalOrg.Text = clubSettings.ClubInfo.ClubName;
        NavigationMenu.Items[0].NavigateUrl = "~/Default.aspx?CLUB=" + clubSettings.ClubID;
    }
}
