/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package spark.preloaders
{
    import feathers.spark.ISparkPreloader;

    import flash.display.Sprite;

    public class SplashScreen extends Sprite implements ISparkPreloader
    {
        public function SplashScreen()
        {
            super();
        }

        public function set splashScreenImage(value:Class):void
        {
            addChild(new value());
        }
    }
}
