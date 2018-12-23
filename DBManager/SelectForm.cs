using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Windows.Forms;
using Microsoft.SqlServer.TransactSql.ScriptDom;

namespace DBManager
{
    public partial class SelectForm : Form
    {
        public SelectForm()
        {
            InitializeComponent();
        }

        private void EnterButton_Click(object sender, EventArgs e)
        {
            var owner = Owner as MainForm;
            owner.GetData(queryBox.Text);
            this.Close();
        }

        private void CheckButton_Click(object sender, EventArgs e)
        {
            var valid = (IsSQLQueryValid(queryBox.Text, out List<string> errors));
            var error = string.Empty;
            foreach (var err in errors)
                error += string.Concat(err, "\n");
            MessageBox.Show(valid ? "Query validated" : error);
        }

        public bool IsSQLQueryValid(string sql, out List<string> errors)
        {
            errors = new List<string>();
            TSql140Parser parser = new TSql140Parser(false);
            TSqlFragment fragment;
            IList<ParseError> parseErrors;

            using (TextReader reader = new StringReader(sql))
            {
                fragment = parser.Parse(reader, out parseErrors);
                if (parseErrors != null && parseErrors.Count > 0)
                {
                    errors = parseErrors.Select(e => e.Message).ToList();
                    return false;
                }
            }
            return true;
        }
    }
}