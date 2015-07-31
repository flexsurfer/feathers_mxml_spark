/**
 * Copyright Andrey Shovkoplyas [motor4ik@gmail.com]
 */
package feathers.spark
{
    import feathers.controls.LayoutGroup;
    import feathers.controls.StackScreenNavigator;

    import flash.display.StageScaleMode;
    import flash.errors.IllegalOperationError;
    import flash.text.StyleSheet;

    import starling.core.Starling;

    [Frame(factoryClass="feathers.spark.SparkBootstrap")]

    public class StackScreenNavigatorApplication extends StackScreenNavigator
    {
        public var theme:Class;
        public var splashScreenImage:Class;
        public var preloader:Class;

        public var originalWidth:Number;
        public var originalHeight:Number;

        [Inspectable(type="String", enumeration="noBorder,exactFit", defaultValue="noBorder")]
        public var scaleMode:String = StageScaleMode.NO_BORDER;

        public function StackScreenNavigatorApplication()
        {
            super();
            this.autoSizeMode = LayoutGroup.AUTO_SIZE_MODE_STAGE;
        }

        /**
         * @private
         */
        protected var _context3DProfile:String;

        [Inspectable(type="String",enumeration="baselineConstrained,baseline,baselineExtended,standardConstrained,standard,standardExtended")]
        /**
         * @copy feathers.core.IApplication#context3DProfile
         */
        public function get context3DProfile():String
        {
            if(this._context3DProfile !== null)
            {
                return this._context3DProfile;
            }
            return Starling.current.profile;
        }

        /**
         * @private
         */
        public function set context3DProfile(value:String):void
        {
            if(this._isInitialized)
            {
                throw new IllegalOperationError("context3DProfile can only be set before an application has initialized.");
            }
            this._context3DProfile = value;
        }

        public function set cssSource(value:Class):void
        {
            var ss:StyleSheet = new StyleSheet();
            ss.parseCSS(new value());
            trace("Spark: CSS Styles \n"+ss.styleNames);

            SparkGlobal.cssStyles = ss;
        }
    }
}
