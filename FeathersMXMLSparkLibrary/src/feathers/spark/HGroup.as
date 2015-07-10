/**
 * Created by Andrey Shovkoplyas on 09.07.2015.
 * motor4ik@gmail.com
 */
package feathers.spark
{
    import feathers.layout.HorizontalLayout;

    public class HGroup extends VHGroup
    {
        public function HGroup()
        {
            super();
        }

        override protected function initLayout():void
        {
            layout = new HorizontalLayout();
        }
    }
}
