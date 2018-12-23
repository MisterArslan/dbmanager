using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Windows.Forms;

namespace DBManager
{
    public partial class MainForm : Form
    {
        private bool Initialized = false;
        private BindingSource bindingSource = new BindingSource();
        private NpgsqlDataAdapter dataAdapter;

        public List<string> Conditions;

        public MainForm()
        {
            InitializeComponent();
            Conditions = new List<string>();
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            // Fill datagrid
            dataGridView.DataSource = bindingSource;
            GetData("select * from employee");
            // Fill databases combobox
            var dbs = DBList.Data.Keys.ToArray();
            this.DBBox.Items.AddRange(dbs);
            this.DBBox.SelectedItem = this.DBBox.Items[0];
            // Fill tables combobox
            var tables = DBList.Data[this.DBBox.SelectedItem.ToString()].ToArray();
            this.TableBox.Items.AddRange(tables);
            this.TableBox.SelectedItem = this.TableBox.Items[0];
            // Fill column list
            ReloadColumnList();
            Initialized = true;
        }

        private void Reload(object sender, EventArgs e)
        {
            // Forming select according to checkboxes
            var select = "select ";
            foreach (string item in checkedListBox.CheckedItems)
            {
                select += string.Concat(item, ",");
            }
            select = select.Remove(select.Length - 1, 1);
            select += string.Concat(" from ", this.TableBox.SelectedItem.ToString());
            // Reload the data from the database.
            GetData(select);
            dataGridView.AutoResizeColumns(DataGridViewAutoSizeColumnsMode.AllCells);
        }

        public void ReloadWithConditions()
        {
            if (Conditions.Count == 0) return;
            // Forming select according to checkboxes
            var select = "select ";
            foreach (string item in checkedListBox.CheckedItems)
            {
                select += string.Concat(item, ",");
            }
            select = select.Remove(select.Length - 1, 1);
            select += string.Concat(" from ", this.TableBox.SelectedItem.ToString());
            select += " where ";
            foreach (var condition in Conditions)
            {
                select += string.Concat(condition, ",");
            }
            select = select.Remove(select.Length - 1, 1);
            // Reload the data from the database.
            GetData(select);
            dataGridView.AutoResizeColumns(DataGridViewAutoSizeColumnsMode.AllCells);
        }

        private void Submit(object sender, EventArgs e)
        {
            try
            {
                // Update the database with the user's changes.
                dataAdapter.Update((DataTable)bindingSource.DataSource);
                MessageBox.Show("All Done Successfully");
            }
            catch (NpgsqlException ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        public void GetData(string selectCommand)
        {
            try
            {
                // Create a new data adapter based on the specified query.
                dataAdapter = new NpgsqlDataAdapter(selectCommand, DBConnection.Connection);
                // Create a command builder to generate SQL update, insert, and
                // delete commands based on selectCommand. These are used to
                // update the database.
                var commandBuilder = new NpgsqlCommandBuilder(dataAdapter);
                // Populate a new data table and bind it to the BindingSource.
                DataTable table = new DataTable();
                table.Locale = System.Globalization.CultureInfo.InvariantCulture;
                dataAdapter.Fill(table);
                bindingSource.DataSource = table;
                // Resize the DataGridView columns to fit the newly loaded content.
                dataGridView.AutoResizeColumns(
                    DataGridViewAutoSizeColumnsMode.AllCellsExceptHeader);
            }
            catch (NpgsqlException ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void DBBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!Initialized) return;
            var box = sender as ComboBox;
            // Change db connection
            DBConnection.Database = box.SelectedText;
            // Change tablesbox
            ReloadTablesBox();
            // Change data
            ReloadGridFromTable();
            // Change columns list
            ReloadColumnList();
        }

        private void TableBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!Initialized) return;
            var box = sender as ComboBox;
            // Change data
            ReloadGridFromTable();
            // Change columns list
            ReloadColumnList();
        }

        private void ReloadTablesBox()
        {
            var tables = DBList.Data[this.DBBox.SelectedItem.ToString()].ToArray();
            this.TableBox.Items.Clear();
            this.TableBox.Items.AddRange(tables);
            this.TableBox.SelectedItem = this.TableBox.Items[0];
        }

        private void ReloadGridFromTable()
        {
            GetData(string.Concat("select * from ", this.TableBox.SelectedItem.ToString()));
            dataGridView.AutoResizeColumns(DataGridViewAutoSizeColumnsMode.AllCells);
        }

        private void ReloadColumnList()
        {
            this.checkedListBox.Items.Clear();
            foreach (DataGridViewColumn column in dataGridView.Columns)
            {
                this.checkedListBox.Items.Add(column.Name);
            }
            for (int i = 0; i < checkedListBox.Items.Count; i++)
            {
                checkedListBox.SetItemChecked(i, true);
            }
        }

        private void checkedListBox_ItemCheck(object sender, ItemCheckEventArgs e)
        {

        }

        private void WhereButton_Click(object sender, EventArgs e)
        {
            var conditions = new ConditionsForm(dataGridView.Columns);
            conditions.Owner = this;
            conditions.StartPosition = FormStartPosition.CenterParent;
            conditions.ShowDialog();
        }

        private void SelectButton_Click(object sender, EventArgs e)
        {
            var select = new SelectForm();
            select.Owner = this;
            select.StartPosition = FormStartPosition.CenterParent;
            select.ShowDialog();
        }
    }
}