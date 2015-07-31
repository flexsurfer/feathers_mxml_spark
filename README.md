# Feathers MXML Spark Library

The library with components extended Feathers components [Feathers SDK](http://feathersui.com/sdk/), to work like with Flex Spark components

![alt tag](https://raw.githubusercontent.com/flexsurfer/feathers_mxml_spark/master/feathers.png)

```XML
<?xml version="1.0"?>
<spark:Application xmlns:fx="http://ns.adobe.com/mxml/2009" xmlns:spark="feathers.spark.*"
                   theme="feathers.themes.MetalWorksMobileTheme"
                   originalHeight="700" originalWidth="300" splashScreenImage="TestSymb"
                   cssSource="@Embed(source='assets/css/test.css', mimeType='application/octet-stream')">

    <spark:VGroup top="0" left="0" right="0" bottom="0"
                  verticalAlign="middle" horizontalAlign="center" gap="20">
        <spark:Label text="Default style"/>
        <spark:Label text="CSS Style" styleName="myFontStyle"/>
        <spark:Label text="Control style" fontWeight="bold" fontSize="30" color="0xFF0000"/>

        <spark:Button width="80%" label="Percent width"/>
        <spark:Button width="140" label="Width in pt"/>
    </spark:VGroup>

</spark:Application>
```

### Known issues

The Intellij Idea will highlight percent values in red. However, the compiler will compile this file without issues. Unfortunately this issue can be fixed only in the Starling library, because this issue in the Idea https://youtrack.jetbrains.com/issue/IDEA-70677

[Workaround](https://github.com/flexsurfer/feathers_mxml_spark/wiki/Percent-dimensions-in-IntellijIdea)