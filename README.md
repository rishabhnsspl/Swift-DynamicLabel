# Swift-DynamicLabel

A subclass of UILabel written in Swift 3. Provides automatic height adjustment by calculating the string height in text property of UILabel.

Usage:
  let lblExample = DynamicLabel()
  lblExample.frame = CGRect(x: 0, y: 60, width: 100, height: 40) //this height is just a placeholder, frame.height = 60 here
  lblExample.textColor = UIColor.black
  lblExample.text = "Hello1\nHello2\nHello3\nHello4\nHello5"
  self.view.addSubview(lblExample)
  ///> frame.height returns the actual height after adjustment once label is added to a superview.
