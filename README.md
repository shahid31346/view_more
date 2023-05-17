# readmore

An interactive text container that supports collapsible and expandable content.

![](view-more-text-view-flutter.gif)

## usage:
add to your pubspec

```
view_more: ^0.0.1
```
and import:
```
import 'package:view_more/view_more.dart';
```

```dart
ViewMore(
  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
  trimLines: 2,
  colorClickableText: Colors.pink,
  trimMode: TrimMode.line,
  trimCollapsedText: 'View more',
  trimExpandedText: 'View less',
  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
);
```

