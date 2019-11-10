
# Criação da bridge RN

## instalando dependencias
`npm install -g react-native-create-library`

## criando a Lib
`react-native-create-library --package-indentifier com.wesleysd1989.reactnative --plataforms android,ios comunicacao-nativa`

## editando versao do react-native
no arquivo package.json coloque a versao do react-native no meu caso coloquei versão 0.61.4.
```
"peerDependencies": {
    "react-native": "0.61.4"
  }
```

## criando um método Android
```
@ReactMethod
  public void checkBridge(Promise promise) {
    promise.resolve("modulo nativo android");
  }
```

## criando um método IOS
```
RCT_EXPORT_METHOD(checkBridge:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
  resolve(@"modulo nativo ios");
}
```

## configurando arquivo podspec
dentro do projeto na pasta ios terá um arquivo <nome_da_lib>.podspec, mova esse arquivo para raiz do projeto.
edite as seguintes tags.
```
mude de ->
s.homepage     = ""
para -> 
s.homepage     = "https://github.com/wesleysd1989/comunicacao-nativa" //esse link e do seu diretorio do github

mude de ->
s.source       = { :git => "https://github.com/author/comunicacao-nativa.git", :tag => "master" }
s.source_files  = "RNTComunicacaoNativa/**/*.{h,m}"
para ->
s.source       = { :git => "https://github.com/wesleysd1989/comunicacao-nativa", :tag => "master" } //esse link e do seu diretorio do github
s.source_files = "ios/*.{h,m}"
```
## editando arquivos
inclua o seguinte method na lib IOS - ios/RNComunicacaoNativa.m
```
RCT_EXPORT_METHOD(checkBridge:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
  resolve(@"modulo nativo ios");
}
```
inclua o seguinte method na lib Android - android/src/main/java/com/username/reactnative/RNComunicacaoNativaModule.java
```
import com.facebook.react.bridge.Promise; //comeco do arquivo

@ReactMethod
  public void checkBridge(Promise promise) {
    promise.resolve("modulo nativo android");
  }
```

## testando sua lib de forma local
no projeto react-native que você deseja incluir sua lib digite o seguinte comando.
`npm install <caminho do diretorio>`
exemplo do caminho "../../comunicacao-nativa"
na pasta ios apos a instalacao
`pod install`

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
  
