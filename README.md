#What is this?
coffeescriptを使用したhtml5アプリケーションのためのボイラープレート。
jasmineを使用したテストの自動化,coffeescriptの自動コンパイルを
インストールと同時に始めるためのテンプレートです。

#How to install - インストール方法
*要Node.js,Grunt

Gruntのインストール

```
sudo npm install -g grunt-cli
```

このボイラープレートのインストール

```
$ git clone git@github.com:yss44/html5_app_boilerplate.git
$ cd html5_app_boilerplate
$ npm install
```

#How to use
`spec/coffee`以下にテストケースを、`src/coffee`以下にアプリケーション本体を記述してください。

coffeescriptのコンパイルとjasmineによるテストは以下のコマンドで使用します。

```
$ grunt
```

`src/coffee`、`spec/coffee`でgruntが以下の`*.coffee`ファイルの変更を監視し始めます。
ファイルに変更があった場合、coffeescriptをコンパイルし`src/js/`,`spec/js`以下にコンパイルされたjavascriptファイルを吐き出します。
その後自動でjasmineによるテストが走ります。

サンプルとして`src/js/Player.js`,`src/js/Song.js`,`spec/js/PlayerSpec.js`,`spec/js/SpecHeler.js`が最初に入っているので、`src`,`spec`,`SpecRunnber.html`から、サンプル部分を削除してから開発を始めてください。
