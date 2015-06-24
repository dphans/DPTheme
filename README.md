# DPTheme
DPTheme help you set default theme color for your app.
Shorten the time customization for UIControls with just one line of code.

![alt tag](https://raw.githubusercontent.com/dphans/DPTheme/master/Screenshot.png)

# Setup
- Import "DPTheme.swift" into your project.

- Just one simple line of code inside 'didFinishLaunchingWithOptions':
``` swift
var mainColor: UIColor = DPTheme.color(0x009688, alpha: 1.0)
var secondColor: UIColor = DPTheme.color(0xE0F2F1, alpha: 1.0)
let fontName = "Avenir"

DPTheme.setupTheme(
	mainColor,
	secondaryColor: secondColor,
	fontName: fontName,
	lightStatusBar: true)
```

- (Optional) Go to your Info.plist file and set value for key 'View controller-based status bar appearance' is 'NO' for the status bar to be set to light content.

# Contact
Email: baophan94@icloud.com. Website: http://www.dinophan.com
