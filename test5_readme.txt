API にsolverを実装

lib/solver/dic に lex.csv matrix.bin  unidic.db を追加
しなければ実行できない

コマンドラインからrails server

別コマンドラインから
curl  -F file={送りたいファイル} http://localhost:3000/solver

とするとファイルを送信できる
ファイルの拡張子はjson
cspファイルをruby のto_jsonを利用してjsonに変換したものを使用
public/docs/jsonに受信ファイルは保存
拡張子が異なる場合はファイルを受け取るだけで終了

josnファイルをhash変換する
hashの各要素をsymbol型に変換しようとしたが、配列を含んでいると既存のライブラリでは処理できないため
自作のメソッドを作成して対応
元のcspファイルと同じように戻せることは確認済

hashに変換したcspファイルはpublic/docs/cspに保存
そのファイルをsolverに渡す

そのほかのパラメータはあらかじめサーバ側で指定しているので
クライアントから指定できるようにする必要あり

サーバ側のコマンドラインに結果が表示される
今後はこれを送信できるようにしたい