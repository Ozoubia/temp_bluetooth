   M S B A M L   `   `   `  ????I  Ebluetooth test, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:bluetooth_testbluetooth_test  5   	       bluetooth_test.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:bluetooth_test     5   	     ? Title$  	Bluetooth??5   	   $	??450??6   $	??300??6(   .??5	      ?? $??20q?6    ?? Orientation$ Vertical=?6   .+?5
   
   ?? $ 
Horizontal=?6   $??0 20 0 0q?6.   .+?5      ?? -   5         ??Name$ 	PortsCBox??5      
???  ??$	??100??6;   $??20??6G   5      ?? 5      -   5         ??Name$ getPortsBtn??5      $??	Get ports??6D   $??20??6Y   $??60??6e   $??10 0 0 0q?6p   6?   5      ?? 5   
   $ 
Horizontal=?6   $??0 20 0 0q?6.   .+?5      ?? $??	Baud Rate??6   6+   ?? 5      -   5         ??Name$ baudRateBox??5      $??50??6+   $??20 0 0 0q?66   6J   5      ?? 5   
   $ 
Horizontal=?6   $??0 20 0 0q?6.   .+?5      ?? -   5        $ 
connectBtn??5      $??Connect??6B   $??70??6T   $??20??6_   6n   ?? 5      -   5        $ disconnectBtn??5      $??
Disconnect??6H   $??70??6]   $??20??6h   $??20 0 0 0q?6t   6?   5      ?? 5   
   -   5         ??Name$ content??5      $	??100??6%   $??0 20 0 0q?62   6H   ?? 5   
   -   5        $ 
emptyField??5   #   $??0 20 0 0q?6   $??70??6P   $??20??6[   $??Reset??6g   6y   5      5       