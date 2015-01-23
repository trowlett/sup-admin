using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class About : System.Web.UI.Page
{
    public string xyz { get; set; }
    public Settings clubSettings;
    protected void Page_Load(object sender, EventArgs e)
    {
        clubSettings = new Settings();
        clubSettings = (Settings)Session["Settings"];
        lblClubName.Text = clubSettings.ClubInfo.ClubName;
        LiteralOrg.Text = clubSettings.ClubInfo.OrgName;
        string link = "http://" + clubSettings.ClubInfo.WebSite;
        HyperLink1.Text = link;
        HyperLink1.NavigateUrl = link;

    }
}
