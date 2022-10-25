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
using System.IO.Ports;

using System.Threading;

namespace bluetooth_test
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        SerialPort port;

        public MainWindow()
        {
            InitializeComponent();

            
            
        }

        // filling the ports available
        private void getPortsBtn_Click(object sender, RoutedEventArgs e)
        {
            string[] ports = SerialPort.GetPortNames();
            foreach (string port in ports)
            {
                PortsCBox.Items.Add(ports);
            }

            PortsCBox.SelectedIndex = 0;
        }

        private void connectBtn_Click(object sender, RoutedEventArgs e)
        {
            string portnbr = PortsCBox.SelectedItem.ToString();
            int bautrate = int.Parse(baudRateBox.Text);

            try
            {
                this.port.PortName = portnbr;
                this.port.BaudRate = bautrate;
                this.port.Open();

                this.port.DataReceived += new SerialDataReceivedEventHandler(dataReceived);
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }
            

        }

        private void dataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            try
            {
                SerialPort spl = (SerialPort)sender;
                content.Text = spl.ReadLine() + " \n";
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }
        }

        private void disconnectBtn_Click(object sender, RoutedEventArgs e)
        {
            port.Close();
        }

        private void emptyField_Click(object sender, RoutedEventArgs e)
        {
            content.Text = "";
        }
    }
}
