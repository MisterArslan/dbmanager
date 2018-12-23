namespace DBManager
{
    partial class MainForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dataGridView = new System.Windows.Forms.DataGridView();
            this.SubmitButton = new System.Windows.Forms.Button();
            this.ReloadButton = new System.Windows.Forms.Button();
            this.DBBox = new System.Windows.Forms.ComboBox();
            this.TableBox = new System.Windows.Forms.ComboBox();
            this.checkedListBox = new System.Windows.Forms.CheckedListBox();
            this.WhereButton = new System.Windows.Forms.Button();
            this.SelectButton = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView
            // 
            this.dataGridView.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.dataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView.Location = new System.Drawing.Point(12, 12);
            this.dataGridView.Name = "dataGridView";
            this.dataGridView.RowTemplate.Height = 24;
            this.dataGridView.Size = new System.Drawing.Size(590, 331);
            this.dataGridView.TabIndex = 0;
            // 
            // SubmitButton
            // 
            this.SubmitButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.SubmitButton.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.SubmitButton.Location = new System.Drawing.Point(564, 373);
            this.SubmitButton.Name = "SubmitButton";
            this.SubmitButton.Size = new System.Drawing.Size(100, 35);
            this.SubmitButton.TabIndex = 1;
            this.SubmitButton.Text = "Submit";
            this.SubmitButton.UseVisualStyleBackColor = true;
            this.SubmitButton.Click += new System.EventHandler(this.Submit);
            // 
            // ReloadButton
            // 
            this.ReloadButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.ReloadButton.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.ReloadButton.Location = new System.Drawing.Point(670, 373);
            this.ReloadButton.Name = "ReloadButton";
            this.ReloadButton.Size = new System.Drawing.Size(100, 35);
            this.ReloadButton.TabIndex = 2;
            this.ReloadButton.Text = "Reload";
            this.ReloadButton.UseVisualStyleBackColor = true;
            this.ReloadButton.Click += new System.EventHandler(this.Reload);
            // 
            // DBBox
            // 
            this.DBBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.DBBox.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.DBBox.FormattingEnabled = true;
            this.DBBox.Location = new System.Drawing.Point(12, 374);
            this.DBBox.Name = "DBBox";
            this.DBBox.Size = new System.Drawing.Size(160, 34);
            this.DBBox.TabIndex = 3;
            this.DBBox.SelectedIndexChanged += new System.EventHandler(this.DBBox_SelectedIndexChanged);
            // 
            // TableBox
            // 
            this.TableBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.TableBox.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.TableBox.FormattingEnabled = true;
            this.TableBox.Location = new System.Drawing.Point(178, 374);
            this.TableBox.Name = "TableBox";
            this.TableBox.Size = new System.Drawing.Size(160, 34);
            this.TableBox.TabIndex = 4;
            this.TableBox.SelectedIndexChanged += new System.EventHandler(this.TableBox_SelectedIndexChanged);
            // 
            // checkedListBox
            // 
            this.checkedListBox.FormattingEnabled = true;
            this.checkedListBox.Location = new System.Drawing.Point(608, 12);
            this.checkedListBox.Name = "checkedListBox";
            this.checkedListBox.Size = new System.Drawing.Size(162, 344);
            this.checkedListBox.TabIndex = 5;
            this.checkedListBox.ItemCheck += new System.Windows.Forms.ItemCheckEventHandler(this.checkedListBox_ItemCheck);
            // 
            // WhereButton
            // 
            this.WhereButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.WhereButton.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.WhereButton.Location = new System.Drawing.Point(458, 373);
            this.WhereButton.Name = "WhereButton";
            this.WhereButton.Size = new System.Drawing.Size(100, 35);
            this.WhereButton.TabIndex = 9;
            this.WhereButton.Text = "Where";
            this.WhereButton.UseVisualStyleBackColor = true;
            this.WhereButton.Click += new System.EventHandler(this.WhereButton_Click);
            // 
            // SelectButton
            // 
            this.SelectButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.SelectButton.Font = new System.Drawing.Font("Times New Roman", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.SelectButton.Location = new System.Drawing.Point(352, 373);
            this.SelectButton.Name = "SelectButton";
            this.SelectButton.Size = new System.Drawing.Size(100, 35);
            this.SelectButton.TabIndex = 10;
            this.SelectButton.Text = "Select";
            this.SelectButton.UseVisualStyleBackColor = true;
            this.SelectButton.Click += new System.EventHandler(this.SelectButton_Click);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(782, 420);
            this.Controls.Add(this.SelectButton);
            this.Controls.Add(this.WhereButton);
            this.Controls.Add(this.checkedListBox);
            this.Controls.Add(this.TableBox);
            this.Controls.Add(this.DBBox);
            this.Controls.Add(this.ReloadButton);
            this.Controls.Add(this.SubmitButton);
            this.Controls.Add(this.dataGridView);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "MainForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "MainForm";
            this.Load += new System.EventHandler(this.MainForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView;
        private System.Windows.Forms.Button SubmitButton;
        private System.Windows.Forms.Button ReloadButton;
        private System.Windows.Forms.ComboBox DBBox;
        private System.Windows.Forms.ComboBox TableBox;
        private System.Windows.Forms.CheckedListBox checkedListBox;
        private System.Windows.Forms.Button WhereButton;
        private System.Windows.Forms.Button SelectButton;
    }
}

