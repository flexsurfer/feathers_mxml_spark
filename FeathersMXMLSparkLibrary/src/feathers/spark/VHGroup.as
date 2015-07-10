/**
 * Created by Andrey Shovkoplyas on 09.07.2015.
 * motor4ik@gmail.com
 */
package feathers.spark
{
    public class VHGroup extends Group
    {
        public function VHGroup()
        {
            super();
        }

        [Inspectable(type="String", enumeration="left,center,right,justify")]
        public function set horizontalAlign(value:String):void
        {
            _sparkLayout.horizontalAlign = value;
        }

        public function get horizontalAlign():String
        {
            return _sparkLayout.horizontalAlign;
        }

        [Inspectable(type="String", enumeration="top,middle,bottom")]
        public function get verticalAlign():String
        {
            return _sparkLayout.verticalAlign;
        }

        public function set verticalAlign(value:String):void
        {
            _sparkLayout.verticalAlign = value;
        }

        public function set gap(value:Number):void
        {
            _sparkLayout.gap = value;
        }

        public function get gap():Number
        {
            return _sparkLayout.gap;
        }

        public function get padding():Number
        {
            return _sparkLayout.padding;
        }

        public function set padding(value:Number):void
        {
            _sparkLayout.padding = value;
        }

        public function get paddingTop():Number
        {
            return _sparkLayout.paddingTop;
        }

        public function set paddingTop(value:Number):void
        {
            _sparkLayout.paddingTop = value;
        }

        public function get paddingRight():Number
        {
            return _sparkLayout.paddingRight;
        }

        public function set paddingRight(value:Number):void
        {
            _sparkLayout.paddingRight = value;
        }

        public function get paddingBottom():Number
        {
            return _sparkLayout.paddingBottom;
        }

        public function set paddingBottom(value:Number):void
        {
            _sparkLayout.paddingBottom = value;
        }

        public function get paddingLeft():Number
        {
            return _sparkLayout.paddingLeft;
        }

        public function set paddingLeft(value:Number):void
        {
            _sparkLayout.paddingLeft = value;
        }
    }
}
