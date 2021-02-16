## アプリケーション名

グループタスクアプリ

## アプリケーション概要

ユーザー同士でグループを作りタスクを共有することができます

## URL



## テスト用アカウント



## 利用方法

* WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。
* グループ作成方法
  * テストアカウントでログイン→トップページからグループ作成ボタン押下→グループ情報入力→グループ作成
* イベント登録方法
  * テストアカウントでログイン→トップページから参加中のグループ選択→スケジュールを開くボタン押下→新規イベントボタン押下→イベント情報入力→イベント登録
* 確認後、ログアウト処理をお願いします。


## 目指した課題解決

| 優先順位 | 機能 | 目的 | 詳細 | ストーリー(ユースケース) | 見積もり（所要時間） |
| -- | -- | -- | -- | -- | -- |
| 3 | ユーザー管理機能 | ユーザー登録することで利用できるようにする | 名前、Eメール、パスワードを入力することでユーザー登録できる | "・ユーザーが後から自分のユーザー情報を編集できる
・ユーザー登録した後で、ページに表示される自身のアイコンを変更できる" | 5 |
| 3 | グループ機能管理 | ユーザー同士でグループを作成できるようにする | グループを作成するときに、メンバーを複数人選択できる | "・グループ作成時に参加していないユーザーも、後から参加できる
・グループを削除しなくても、自分だけがグループから退室できる" | 8 |
| 3 | イベント管理機能 | グループでイベントを共有できるようにする | グループの中のユーザー全員が同じイベントを共有できる | "・登録したイベントは後から編集、削除できる
・登録したイベントはグループのページ上に一覧表示される"| 8 |
| 2 | カレンダー表示 | 登録したイベントの日程を確認し易くする | 登録したイベントを、カレンダー上に表示させる | ・カレンダー上にイベントが表示されて、クリックすると詳細ページへ遷移する | 3 |
| 2 | メッセージ機能 | グループ内でメッセージのやり取りをできるようにする | メッセージを送信したらグループのページに表示される | ・イベント管理機能とメッセージ機能をグループページで切り替えて表示できる | 3 |

## 洗い出した要件



## 実装した機能についてのGIFと説明



## 実装予定の機能



## データベース設計



## ローカルでの動作方法





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

-belongs_to :group