using System;
using System.Collections;
using System.Data;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Maintenance_Default : System.Web.UI.Page
{
    private string clubID;

    protected void Page_Load(object sender, EventArgs e)
    {
        Settings clubSettings = new Settings();
        if (Request.QueryString["CLUB"] == null)
        {
            string url = "GetClubID.aspx";
            Response.Redirect(url);
        }
        clubID = Request.QueryString["CLUB"].Trim();
        clubSettings.ClubID = clubID;
        string x = clubSettings.ClubID;
        clubSettings.ClubInfo = ClubManager.GetSetting(clubSettings.ClubID);
        Session["Settings"] = clubSettings;
        hlOrgURL.NavigateUrl = "http://"+clubSettings.ClubInfo.WebSite;
        hlOrgURL.Text = clubSettings.ClubInfo.OrgName;

    }

}