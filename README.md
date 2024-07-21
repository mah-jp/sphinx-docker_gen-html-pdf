# sphinx-docker_gen-html-pdfとは

- Date: 2024-07-21

Sphinxでのドキュメンテーション環境の構築で楽するための、各種設定を実施済みのSphinxのDockerコンテナです。設定済みの内容は次の表の通りです。

|項目|設定内容|備考|
|---|---|---|
|入力ファイル|reStructuredText形式|Markdown形式への対応も少しの改変で可能でしょう|
|出力ファイル|HTML形式, LaTeX経由でのPDF形式||
|対応している図の記法|Mermaid記法, PlantUML記法||

本リポジトリのDockerコンテナの動作確認は次の環境で行っています。

|ホストOS|詳細|
|---|---|
|Ubuntu|CPU: amd64, Rancher Desktop|
|Ubuntu|CPU: arm64, Docker (rootless mode)|
|macOS|CPU: arm64 (M1), Rancher Desktop|

P.S. 私個人としては、このリポジトリをベースとして用いて、様々なドキュメンテーションを今後真面目に、Sphinxを使って始めていきたいと思います。

## セットアップ方法・使い方

1. sphinx-docker_gen-html-pdfを動作させたいサーバ・パソコンにDocker環境を整えます (`docker compose`が使えるようにします)
2. 本リポジトリをcloneします
	```
	$ git clone https://github.com/mah-jp/sphinx-docker_gen-html-pdf
	$ cd sphinx-docker_gen-html-pdf
	```
3. [docsディレクトリ](./docs/)内の、ドキュメントのソース (原稿) となるrstファイルや、各種設定を行うconf.pyを、Sphinxの作法にしたがって編集します (とりあえず実行を試す場合は初期状態のままで大丈夫です)
4. 次のコマンドを実行します
	```
	$ docker compose up
	```
5. Dockerコンテナ内でSphinxが動作して、生成されたドキュメントがdocs/_build/ディレクトリ内に保存されます
	- HTML形式の保存場所: docs/_build/html/index.html
	- PDF形式の保存場所: docs/_build/latex/*.pdf

上記の動作が確認できたら、ドキュメントの内容を自分自身のものへ変えたり、お好みで (conf.pyやrequirements.txtを改変して)、Sphinx拡張機能を追加したりLaTeXの設定を充実させたりしてみてください。

### 注意事項

- スクリプトを改造したり更新した後は、Dockerコンテナの再構築が必要となります。`--build`を付けた次のコマンドを実行してください。
  ```
	$ docker compose up --build
  ```

## AUTHOR

大久保 正彦 (Masahiko OHKUBO)
