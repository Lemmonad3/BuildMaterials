   M S B A M L   `   `   `  ����L  HBuildingMaterials, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:BuildingMaterialsBuildingMaterials  5   	   "    BuildingMaterials.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:BuildingMaterials     5   	     � 
ResizeMode$  CanMinimize=�5   	    � WindowStartupLocation$ CenterScreen=�5	   	    � Title$ Авторизация��5
   	   $	��300��6   $	��250��6*    � Icon$ /Icon/icon.ico��66   .��5      � .+�5   
   � 
�������$��2��6"    � RowDefinitions 5      �� 5      $��* �6    �� 5      $
��auto �6    .+�5      �� $��15q�6   $��Center=�6%   .+�5      �� $��Center=�6   $��15(�5      $��Italic$�5      
���   �.��67   Авторизация5      �� 5      $ ��Введите логин:��6   $��Italic$�5      �� 5      -   5         ��Name$ tbLogin��5      �� 5      $"��Введите пароль:��6   $��Italic$�5       G� 5!      -   5         G�Name$ 
tbPassword��5!      5"      �� 5#      -   5         ��Name$ 	btnSingin��5#      $��Italic$�5$      $��1��5%      $��
Войти��5&      
���/��� � Cursor$
 Hand��5)      $
��Left=�5*      $��15q�6,   $��84��68   5-      5.      5/      