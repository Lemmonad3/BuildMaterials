using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace BuildingMaterials
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            AppDataBase.db = new Database.Trade1Entities();
        }

        private void btnSingin_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var user = AppDataBase.db.User.FirstOrDefault(x => x.UserLogin == tbLogin.Text && x.UserPassword == tbPassword.Password);
                if (user == null)
                {
                    MessageBox.Show("Неверный Логин или пароль");

                }
                else
                {

                    MessageBox.Show("Вы вошли в систему");


                }
            }
            catch (Exception EX)
            {

                MessageBox.Show("Ошибка");
            }
        }

    }
 }

