using BuildingMaterials.Database;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BuildingMaterials.Vm
{
    public class AppVM : BaseVM
    {
        private ObservableCollection<Product> _products;
        public ObservableCollection<Product> Products
        {
            get { return _products; }
            set
            {
                _products = value;
                OnPropertyChanged(nameof(Products));
            }
        }

        public AppVM()
        {
            Initialine();
            LoadDate();
        }

        private void Initialine()
        {
            Products = new ObservableCollection<Product>();
        }

        private void LoadDate()
        {
            using (Trade1Entities context = new Trade1Entities())
            {
                var _productList = context.Product.ToList();
                _productList.ForEach(p => Products.Add(p));
            }
        }
    }
}
