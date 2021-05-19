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
    /// Логика взаимодействия для EditClients.xaml
    /// </summary>
    public partial class EditClients : Page
    {
        Data.Client contextClient;
        public EditClients(Data.Client oldClient)
        {
            InitializeComponent();
            contextClient = oldClient;
            this.DataContext = contextClient;
            CbBroker.ItemsSource = MainWindow.db.Broker.ToList();
        }

        private void BtnChange_Click(object sender, RoutedEventArgs e)
        {
            if (contextClient.ID == 0)
            {
                MainWindow.db.Client.Add(contextClient);
                MainWindow.db.SaveChanges();
            }
            NavigationService.GoBack();
        }

        private void BtnCancel_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void TbSurname_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = (Char.IsDigit(e.Text, 0));
        }

        private void TbName_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = (Char.IsDigit(e.Text, 0));
        }

        private void TbPatronymic_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = (Char.IsDigit(e.Text, 0));
        }
    }
}
