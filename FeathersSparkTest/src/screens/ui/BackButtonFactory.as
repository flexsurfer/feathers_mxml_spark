package screens.ui
{
    import feathers.controls.Button;
    import feathers.controls.Header;

    import starling.display.DisplayObject;

    import starling.events.Event;

    public class BackButtonFactory
    {
        public function BackButtonFactory()
        {
        }

        public static function customHeaderFactory(handler:Function):Function
        {
            return function():Header
            {
                var header:Header = new Header();

                var backButton:Button = new Button();
                backButton.styleNameList.add(Button.ALTERNATE_STYLE_NAME_BACK_BUTTON);
                backButton.label = "Back";
                backButton.addEventListener(Event.TRIGGERED, handler);
                header.leftItems = new <DisplayObject>[backButton];
                return header;
            };
        }
    }
}
