/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import feathers.controls.Screen;

    import mx.core.IFactory;

    public class Screen extends feathers.controls.Screen implements IFactory
    {
        public function Screen()
        {
            super();
        }

        public function newInstance():*
        {
            return null;
        }
    }
}
