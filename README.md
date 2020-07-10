# is_24_hour_format

This project makes it possible to check whether the device is using 12 or 24 hour time.

## Supported Platforms
* Android API 16+ (4.1+, the minimum version supported by Flutter).
* iOS 8.0+ (the minimum version supported by Flutter).


## Getting Started

There is only one getter which is static and can be called anywhere.

```dart
//returns bool indicative of whether the device is using 24-hour time format
await Respect24Hour.get24HourFormat;
```

## New valid package name for the pubspec.yaml
`is_24_hour_format`, `respect_24_hour` is discontinued