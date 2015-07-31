/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import feathers.utils.math.roundToNearest;

    import flash.text.StyleSheet;

    public class SparkGlobal
    {
        public static var scale:Number;
        public static var cssStyles:StyleSheet;

        public function SparkGlobal()
        {
        }

        public static function scaleValue(value:Number):Number
        {
            return scale ? roundToNearest(scale * value) : value;
        }

        public static function getStyle(value:String):Object
        {
            if (cssStyles)
            {
                return cssStyles.getStyle(value);
            }
            else
            {
                return null;
            }
        }
    }
}
