ファイル受信テストAPI

コマンドラインからrails server

別コマンドラインから
curl -F file={送りたいファイル}　	http://localhost:3000/fileget

とするとテキストファイルを送信できる
app/tmpにファイルは保存される

レイアウト部分でエラーがでるが今回ファイルの受け取りに成功したためOKとする 