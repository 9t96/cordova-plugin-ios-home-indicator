---
title: Home Indicator
description: Hides or shows the iOS home indicator
---
<!--
# license: Licensed to the Apache Software Foundation (ASF) under one
#         or more contributor license agreements.  See the NOTICE file
#         distributed with this work for additional information
#         regarding copyright ownership.  The ASF licenses this file
#         to you under the Apache License, Version 2.0 (the
#         "License"); you may not use this file except in compliance
#         with the License.  You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#         Unless required by applicable law or agreed to in writing,
#         software distributed under the License is distributed on an
#         "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
#         KIND, either express or implied.  See the License for the
#         specific language governing permissions and limitations
#         under the License.
-->

# cordova-plugin-ios-home-indicator

This plugin allows you to manually show or hide the home indicator on iOS.

## Installation

    cordova plugin add cordova-plugin-ios-home-indicator

### Usage

Call these methods after Cordova's `deviceready` event.

```javascript
// Hide the home indicator

HomeIndicator.hideHomeIndicator(function() {
    console.log("Home indicator hidden");
}, function(error) {
    console.error(error);
});

// Show the home indicator

HomeIndicator.showHomeIndicator(function() {
    console.log("Home indicator shown");
}, function(error) {
    console.error(error);
});
```

You can also access the plugin as `window.HomeIndicator`.

### Supported Platforms

- iOS 11 or later on devices with a home indicator.

Hiding requests iOS to automatically hide the indicator; iOS controls when it
disappears and may show it again after user interaction.
