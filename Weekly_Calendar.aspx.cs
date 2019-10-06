using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Weekly_Calendar
{
    public partial class Weekly_Calendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();
                if (Page.IsValid)
                {
                    //Get values from user selections
                    
                    string Monday_Selection = Monday.SelectedValue;
                    string Tuesday_Selection = Tuesday.SelectedValue;
                    string Wednesday_Selection = Wednesday.SelectedValue;
                    string Thursday_Selection = Thursday.SelectedValue;
                    string Friday_Selection = Friday.SelectedValue;
                    string Saturday_Selection = Saturday.SelectedValue;
                    string Sunday_Selection = Sunday.SelectedValue;


                    // day of month and weekday counter
                    
                    // loop to print date and day of the week
                    for (int i=1; i<32; i++)
                    {
                        // date function from Rpetrusha. “How to: Extract the Day of the Week from a Specific Date.” Microsoft Docs, docs.microsoft.com/en-us/dotnet/standard/base-types/how-to-extract-the-day-of-the-week-from-a-specific-date.
                        DateTime dateValue = new DateTime(2019, 10, i);
                        if ((dateValue.ToString("dddd")) == "Monday")
                        {
                            schedule_summary.InnerHtml += "October " + i + " is a " + (dateValue.ToString("dddd")) + "! Time to " +Monday_Selection + "<br>";
                        } else if ((dateValue.ToString("dddd"))=="Tuesday") 
                        {
                            schedule_summary.InnerHtml += "October " + i + " is a " + (dateValue.ToString("dddd")) + "! Time to " + Tuesday_Selection + "<br>";
                        }else if ((dateValue.ToString("dddd")) == "Wednesday")
                        {
                            schedule_summary.InnerHtml += "October " + i + " is a " + (dateValue.ToString("dddd")) + "! Time to " + Wednesday_Selection + "<br>";
                        }
                        else if ((dateValue.ToString("dddd")) == "Thursday")
                        {
                            schedule_summary.InnerHtml += "October " + i + " is a " + (dateValue.ToString("dddd")) + "! Time to " + Thursday_Selection + "<br>";
                        }
                        else if ((dateValue.ToString("dddd")) == "Friday")
                        {
                            schedule_summary.InnerHtml += "October " + i + " is a " + (dateValue.ToString("dddd")) + "! Time to " + Friday_Selection + "<br>";
                        }
                        else if ((dateValue.ToString("dddd")) == "Saturday")
                        {
                            schedule_summary.InnerHtml += "October " + i + " is a " + (dateValue.ToString("dddd")) + "! Time to " + Saturday_Selection + "<br>";
                        }
                        else if ((dateValue.ToString("dddd")) == "Sunday")
                        {
                            schedule_summary.InnerHtml += "October " + i + " is a " + (dateValue.ToString("dddd")) + "! Time to " + Sunday_Selection + "<br>";
                        }
                        else
                        {
                            schedule_summary.InnerHtml += "There is something wrong";
                        }

                    }   //I wanted to use (dateValue.ToString("dddd"))._Selection to use as user selection in my loop, 
                        //but that function is impossible. I could not figure out how to loop days of week within
                        //a month.That is why I used else if. Curios to see beautiful solution to this assignment



                }
            }
        }
    }
}