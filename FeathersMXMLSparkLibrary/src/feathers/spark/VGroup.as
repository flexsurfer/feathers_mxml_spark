/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import feathers.layout.VerticalLayout;

    public class VGroup extends VHGroup
    {
        public function VGroup()
        {
            super();
        }

        override protected function initLayout():void
        {
            layout = new VerticalLayout();
        }
    }
}
