# SimpleDocApp

This app is an attempt to build a very simple document-based SwiftUI app.

I have filed Feedback FB8205080 with Apple because this basic setup does not seem to work on iOS of macOS as of Xcode/Big Sur beta 3.

I am posting this project here since it is quite possible I am doing something wrong, since I am not yet well-versed in SwiftUI.

This app follows the steps in the WWDC20 session ‘Build document-based apps in SwiftUI’.

The data model is an Array of items of type SimpleItem. A SimpleItem has a constant UUID id, a constant String name, and a variable Int.

The app is a list-detail showing items in the source list and editing the SimpleItem’s Int property with a Stepper.

You can build and run the macOS app on BigSur beta 3, or build the iOS app and run it on an iPad/iPad sim in landscape to see the issue:  
Updating the user interface and updating the data model fail after the first edit.

Feel free to post any hints as to what I might be doing wrong to @jamesdempsey on Twitter. Or submit a pull request with a fix if I'm doing something wrong.

Thanks!
