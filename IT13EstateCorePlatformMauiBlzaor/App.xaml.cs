namespace IT13EstateCorePlatformMauiBlzaor
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();
        }

        protected override Window CreateWindow(IActivationState? activationState)
        {
            return new Window(new MainPage()) { Title = "IT13EstateCorePlatformMauiBlzaor" };
        }
    }
}
