using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace DBManager
{
    public partial class ConditionsForm : Form
    {
        private List<Condition> conditions;

        public ConditionsForm(DataGridViewColumnCollection columns)
        {
            InitializeComponent();
            conditions = new List<Condition>();
            Initialize(columns);
        }

        private void Initialize(DataGridViewColumnCollection columns)
        {
            var y = 10;
            foreach (DataGridViewColumn column in columns)
            {
                var label = new Label()
                {
                    Text = column.Name,
                    Location = new Point(10, y),
                    Width = 80
                };
                var sign = new Label()
                {
                    Text = " = ",
                    Font = new Font("Times New Roman", 14),
                    Location = new Point(90, y),
                    Width = 30,
                };
                sign.Click += new EventHandler(ChangeSign);
                var textBox = new TextBox()
                {
                    Location = new Point(150, y)
                };
                this.Controls.Add(label);
                this.Controls.Add(sign);
                this.Controls.Add(textBox);
                conditions.Add(new Condition(label, sign, textBox));
                y += 30;
            }
        }

        private void ChangeSign(object sender, EventArgs e)
        {
            var sign = sender as Label;
            switch (sign.Text)
            {
                case " = ":
                    sign.Text = " > ";
                    break;
                case " > ":
                    sign.Text = " >= ";
                    break;
                case " >= ":
                    sign.Text = " < ";
                    break;
                case " < ":
                    sign.Text = " <= ";
                    break;
                case " <= ":
                    sign.Text = " = ";
                    break;
            }
        }

        private void EnterButton_Click(object sender, EventArgs e)
        {
            var owner = Owner as MainForm;
            owner.Conditions.Clear();
            foreach (var condition in conditions)
                if (condition.TextBox.Text != string.Empty)
                    owner.Conditions.Add(condition.Get());
            owner.ReloadWithConditions();
            this.Close();
        }

        private class Condition
        {
            public Label Label;
            public Label Sign;
            public TextBox TextBox;

            public Condition(Label label, Label sign, TextBox text)
            {
                Label = label;
                Sign = sign;
                TextBox = text;
            }

            public string Get()
            {
                return Label.Text + Sign.Text + TextBox.Text;
            }
        }
    }
}