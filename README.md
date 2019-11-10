
# react-native-comunicacao-nativa

## Getting started

`$ npm install react-native-comunicacao-nativa --save`

### Mostly automatic installation

`$ react-native link react-native-comunicacao-nativa`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-comunicacao-nativa` and add `RNComunicacaoNativa.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNComunicacaoNativa.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.m3n0r.reactnative.RNComunicacaoNativaPackage;` to the imports at the top of the file
  - Add `new RNComunicacaoNativaPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-comunicacao-nativa'
  	project(':react-native-comunicacao-nativa').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-comunicacao-nativa/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-comunicacao-nativa')
  	```


## Usage
```javascript
import RNComunicacaoNativa from 'react-native-comunicacao-nativa';

// TODO: What to do with the module?
RNComunicacaoNativa;
```
  