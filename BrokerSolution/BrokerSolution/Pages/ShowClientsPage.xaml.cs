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
    /// Логика взаимодействия для ShowClientsPage.xaml
    /// </summary>
    public partial class ShowClientsPage : Page
    {
        public ShowClientsPage()
        {
            InitializeComponent();
            Refresh();
        }

        private void Refresh()
        {
            DGClients.ItemsSource = MainWindow.db.Client.ToList();
        }

        private void btnBack_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {
            var selected = DGClients.SelectedItem as Data.Client;
            if (selected == null)
                MessageBox.Show("Выберите клиента");
            else
                NavigationService.Navigate(new Pages.EditClients(selected));
        }
    }
}
