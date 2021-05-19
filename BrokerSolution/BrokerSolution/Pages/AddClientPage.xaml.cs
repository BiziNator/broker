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
    /// Логика взаимодействия для AddClientPage.xaml
    /// </summary>
    public partial class AddClientPage : Page
    {
        public AddClientPage()
        {
            InitializeComponent();
            CbBroker.ItemsSource = MainWindow.db.Client.ToList();
        }
        public void Refresh()
        {
        }

        private void BtnAddClient_Click(object sender, RoutedEventArgs e)
        {
            Data.Client client = new Data.Client()
            { 
                Name = TbName.Text,
                Surname = TbSurname.Text,
                Patronymic = TbPatronymic.Text,
                IdBroker = (CbBroker.SelectedItem as Data.Client).IdBroker
            };
            MainWindow.db.Client.Add(client);
            MainWindow.db.SaveChanges();
            MessageBox.Show("Успешно добавлен");
            NavigationService?.GoBack();

        }

        private void BtnCancel_Click(object sender, RoutedEventArgs e)
        {
            NavigationService?.GoBack();

        }
    }
}
