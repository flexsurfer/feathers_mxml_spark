/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import feathers.controls.Header;

    import starling.display.DisplayObject;

    public class Header extends feathers.controls.Header
    {
        public function Header()
        {
            super();
        }

        public function set leftContent(value:Array):void
        {
            super.leftItems = Vector.<DisplayObject>(value);
        }

        public function set rightContent(value:Array):void
        {
            super.rightItems = Vector.<DisplayObject>(value);
        }
    }
}
