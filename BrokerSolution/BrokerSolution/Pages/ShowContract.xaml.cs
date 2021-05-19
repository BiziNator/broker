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
    /// Логика взаимодействия для ShowContract.xaml
    /// </summary>
    public partial class ShowContract : Page
    {
        public ShowContract()
        {
            InitializeComponent();
            Refresh();
        }

        private void Refresh()
        {
           DGContracts.ItemsSource = MainWindow.db.Contract.ToList();
        }

        private void btnBack_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        
    }
}
