using BuildingMaterials.Vm;
using System.Windows;


namespace BuildingMaterials.View
{
    /// <summary>
    /// Логика взаимодействия для AppWindow.xaml
    /// </summary>
    public partial class AppWindow : Window
    {
        public AppWindow()
        {
            InitializeComponent();
            DataContext = new AppVM();
        }
    }
}
