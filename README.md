# アプリケーション名

### グループタスクアプリ

# アプリケーション概要

ユーザー同士でグループを作りスケジュールを共有できるアプリを作成しました。<br>ユーザーを登録するとグループを作成できるようになります。<br>グループに参加しているユーザー全員がグループを編集・削除することができます。<br>また、グループに参加しているユーザーはグループに紐づくイベントをカレンダーに登録出来て、それをグループ内の全てのユーザーが編集・削除できます。<br>一度作成したグループには、ユーザーが途中で参加することも退室することもできます。

# URL

https://grouptask-app.herokuapp.com/

# テスト用アカウント

* メールアドレス：test@com
* パスワード：abcd1234

# 利用方法

* WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。
* グループ作成方法
  * テストアカウントでログイン→トップページからグループ作成ボタン押下→グループ情報入力→グループ作成
* イベント登録方法
  * テストアカウントでログイン→トップページから参加中のグループ選択→スケジュールを開くボタン押下→新規イベントボタン押下→イベント情報入力→イベント登録
* 確認後、ログアウト処理をお願いします。


# 目指した課題解決

組織の中で複数のチームに分かれて作業を行うことは効率的ですが、スケジュール内容を変更する時や新たに課題ができた場合などに意思決定と確認をチーム内のメンバーで瞬時に共有することが出来るアプリケーションがあると便利だなと考えました。

# 洗い出した要件

| 優先順位(高：3、中：2、低：1) | 機能 | 目的 | 詳細 | ストーリー(ユースケース) | 見積もり（所要時間） |
| -- | -- | -- | -- | -- | -- |
| 3 | ユーザー管理機能 | ユーザー登録することで利用できるようにする | 名前、Eメール、パスワードを入力することでユーザー登録できる | ・ユーザーが後から自分のユーザー情報を編集できる<br>・ユーザー登録した後で、ページに表示される自身のアイコンを変更できる | 5 |
| 3 | グループ機能管理 | ユーザー同士でグループを作成できるようにする | グループを作成するときに、メンバーを複数人選択できる | ・グループ作成時に参加していないユーザーも、後から参加できる<br>・グループを削除しなくても、自分だけグループから退室することが出来る | 8 |
| 3 | イベント管理機能 | グループでイベントを共有できるようにする | グループの中のユーザー全員が同じイベントを共有できる | ・登録したイベントは後から編集、削除できる<br>・登録したイベントはグループのページ上に一覧表示される| 8 |
| 2 | カレンダー表示 | 登録したイベントの日程を確認し易くする | 登録したイベントを、カレンダー上に表示させる | ・カレンダー上にイベントが表示されて、クリックすると詳細ページへ遷移する | 3 |
| 2 | メッセージ機能 | グループ内でメッセージのやり取りをできるようにする | メッセージを送信したらグループのページに表示される | ・イベント管理機能とメッセージ機能をグループページで切り替えて表示できる | 3 |

# 実装した機能についてのGIFと説明

## ユーザー管理機能
ユーザーはアカウントにアイコンを登録することができます。<br>ユーザー同士の距離が密接なアプリケーションになっているので、この機能によってユーザー同士でコミュニケーションがし易くなると思います。<br>
![59ac3d2fd9cfcfbad1c746125a9a1bf4](https://user-images.githubusercontent.com/76470390/108147318-f690ce80-7111-11eb-8ee8-fa5220bb5f44.gif)

## グループ管理機能
ユーザーはアプリケーションに登録しているユーザーから参加者を選んでグループを作成できます。<br>また、作成したグループからは参加・退室が任意で行えるので、他のグループに移動することとなった場合や間違えてメンバーを選んでしまった場合なども柔軟に対応できます。<br>
![a536e38f19fb6d3f3ad8338524d3d679](https://user-images.githubusercontent.com/76470390/108146916-5fc41200-7111-11eb-954f-b72e69aad29e.gif)


## イベント管理機能
作成したグループに紐づくイベントを作成できます。<br>一度作成したイベントは、グループ内の参加者であればいつでも編集・削除ができます。<br>
![99823d17630fc377eda383b7d75b0598](https://user-images.githubusercontent.com/76470390/108147682-aa925980-7112-11eb-9677-2cc875abff54.gif)

## カレンダー表示
作成したイベントはカレンダー上に表示されます。<br>カレンダー上に表示されたイベント名をクリックすることで、詳細ページに遷移して確認することができます。<br>
![709333219f6fac80adf1f487304963cb](https://user-images.githubusercontent.com/76470390/108147837-f93ff380-7112-11eb-87a3-c79363fc82ed.gif)

## メッセージ機能
グループではスケジュールとメッセージのページを自由に切り替えることができます。<br>イベントの登録・変更・確認の連絡をグループ内で出来るのでスケジュールを共有し易くなります。<br>
![12902390a63d536833e3e766eead4b9f](https://user-images.githubusercontent.com/76470390/108147999-4ae87e00-7113-11eb-9e26-04226ab9e48e.gif)

# 実装予定の機能

現状、イベントが始まる日時は登録できますが終了日時を登録することができていません。<br>開始したイベントがいつ終了するのかが分からないと次の計画も立て辛いと考えます。<br>今後、終了日時も登録できるようにしてカレンダー上にイベントを期間でライン表示できるようにしたいと考えています。

# データベース設計

![group_task-app-ER](https://user-images.githubusercontent.com/76470390/108070784-420e9280-70a8-11eb-8349-1ebee856b8dd.png)

## users　テーブル

| Column             | Type     | Options                       |
| ------------------ | -------- | ----------------------------- |
| image              | text     |                               |
| name               | string   | null: false                   |
| email              | string   | null: false, uniqueness: true |
| encrypted_password | string   | null: false                   |

### Association

- has_many :group_users
- has_many :messages
- has_many :groups, through: :group_users

## groups

| Column  | Type       | Options           |
| ------- | ---------- | ----------------- |
| name    | string     | null: false       |

### Association

- has_many :group_users
- has_many :messages
- has_many :meetings
- has_many :users, through: :group_users

## group_users

| Column | Type       | Options           |
| ------ | ---------- | ----------------- |
| user   | references | foreign_key: true |
| group  | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :group

## messages

| Column  | Type       | Options           |
| ------- | ---------- | ----------------- |
| user    | references | foreign_key: true |
| group   | references | foreign_key: true |
| content | string     |                   |

- belongs_to :user
- belongs_to :group

## meetings

| Column     | Type       | Options           |
| -----------| ---------- | ------------------|
| title      | string     |                   |
| content    | text       |                   |
| start_time | datetime   |                   |
| group      | references | foreign_key: true |

### Association

- belongs_to :group

# ローカルでの動作方法

## 開発環境

Ruby on Rails ver 6.0.0

## インストール後に行うコマンド

% bundle install<br>
% rails db:create<br>
% rails db:migrate<br>
% rails s