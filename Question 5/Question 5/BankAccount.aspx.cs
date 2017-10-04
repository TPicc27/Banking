using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Question_5
{
    public partial class BankAccount : System.Web.UI.Page
    {
        double savings = 30345.90;
        double checking = 40785.22;
        double student = 5643.23;

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                BankAccountDD.Items.Add("Savings Account");
                BankAccountDD.Items.Add("Checking Account");
                BankAccountDD.Items.Add("Student Account");

            }
        }
        
        public double bankBalance()
        {
            double balance;
            if(BankAccountDD.SelectedIndex == 0)
            {
                balance = savings - Convert.ToDouble(WithdrawTB.Text);
            }
            else if(BankAccountDD.SelectedIndex == 1)
            {
                balance = checking - Convert.ToDouble(WithdrawTB.Text);
            }
            else
            {
                balance = student - Convert.ToDouble(WithdrawTB.Text);
            }
            return balance;
        }



        protected void WithdrawButton_Click(object sender, EventArgs e)
        {
            if(BankAccountDD.SelectedIndex == 0 && savings > Convert.ToDouble(WithdrawTB.Text))
            {
                WithdrawLabel.Text = "Withdraw amount is greater than the balance which is " + Convert.ToString(savings);
            }
            if (BankAccountDD.SelectedIndex == 1 && checking > Convert.ToDouble(WithdrawTB.Text))
            {
                WithdrawLabel.Text = "Withdraw amount is greater than the balance which is " + Convert.ToString(checking);
            }
            if (BankAccountDD.SelectedIndex == 2 && student > Convert.ToDouble(WithdrawTB.Text))
            {
                WithdrawLabel.Text = "Withdraw amount is greater than the balance which is " + Convert.ToString(student);
            }
            else
            {
                WithdrawLabel.Text = "Withdraw successful. Your new balance is " + Convert.ToString(bankBalance());
            }
        }
    }
} 