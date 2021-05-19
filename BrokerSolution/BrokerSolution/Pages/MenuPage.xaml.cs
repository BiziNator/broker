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
    /// Логика взаимодействия для ContractPage.xaml
    /// </summary>
    public partial class MenuPage : Page
    {
        public MenuPage()
        {
            InitializeComponent();
        }

        private void BtnAddClient_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Pages.AddClientPage());
        }

        private void BtnContract_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Pages.ShowContract());
        }

        private void BtnDeal_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Pages.ShowDealPage());
        }

        private void BtnShowClients_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Pages.ShowClientsPage());
        }
    }
}
