twitterもどき
ブラウザで実行する用のAPI
DBを使用
ツイートとユーザデータはDBに保持している
ツイートとユーザ情報はまだ連動させていない

簡単なAPIの作り方、DBの利用法の一例を理解できた

get 'test1/tweets/index' ツイート一覧を取得

get 'test1/tweets/new' 新しいツイートの入力フォーム

post 'test1/tweets' 　ツイートの追加

get 'test1/users/show/:username' usernameのユーザの情報を表示