# ログイン時に使用する「メールアドレス」と「パスワード」が分かりやすいよう一番上に配置
email = "test@example.com"
password = "password"

# users テーブルを再生成（関連付いたテーブルを含む）
ActiveRecord::Base.connection.execute("TRUNCATE TABLE users RESTART IDENTITY CASCADE")

# 以下，開発用の初期データ
user1 = User.create!(email: "satou@example.com", password: "password")
user2 = User.create!(email: "suzuki@example.com", password: "password")
user3 = User.create!(email: "tanaka@example.com", password: "password")

# ***** 以下を編集(変数に代入) *****
food1 = user2.foods.create!(name: "沖縄そば")
food2 = user1.foods.create!(name: "海ぶどう")
food3 = user3.foods.create!(name: "ゴーヤーチャンプルー")
food4 = user3.foods.create!(name: "サーターアンダギー")
food5 = user1.foods.create!(name: "タコライス")

# ***** 以下を追加 *****
food1.likes.create!(user_id: user1.id)
food1.likes.create!(user_id: user3.id)
food2.likes.create!(user_id: user2.id)
food3.likes.create!(user_id: user1.id)
food4.likes.create!(user_id: user1.id)
food4.likes.create!(user_id: user2.id)
food5.likes.create!(user_id: user3.id)
# ***** 以上を編集・追加 *****

# ログイン時に使用するアカウント（変数への代入は不要）
User.create!(email: email, password: password)

puts "初期データの投入に成功しました！"# rubocop:disable all
