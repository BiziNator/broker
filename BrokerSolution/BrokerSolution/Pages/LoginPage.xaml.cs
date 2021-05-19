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

namespace BrokerSolution.Pages
{
    /// <summary>
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private void BtnEnter_Click(object sender, RoutedEventArgs e)
        {
            var broker = MainWindow.db.Broker.FirstOrDefault(x => x.Login == TbLogin.Text && x.Password == TbPassword.Password);
            if (broker != null)
            {
                NavigationService.Navigate(new Pages.MenuPage());
            }
            else
            {
                MessageBox.Show("Введите корректные данные!");
                TbPassword.Clear();
            }
            
        }
    }
}
