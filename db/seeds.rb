# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# coding: utf-8

Pref.create(
  [
    { name: "北海道" },
    { name: "青森" },
    { name: "秋田" },
    { name: "岩手" },
    { name: "宮城" },
    { name: "山形" },
    { name: "福島" },
    { name: "栃木" },
    { name: "茨城" },
    { name: "群馬" },
    { name: "埼玉" },
    { name: "千葉" },
    { name: "東京" },
    { name: "神奈川" },
    { name: "新潟" },
    { name: "富山" },
    { name: "石川" },
    { name: "福井" },
    { name: "山梨" },
    { name: "長野" },
    { name: "岐阜" },
    { name: "静岡" },
    { name: "愛知" },
    { name: "三重" },
    { name: "滋賀" },
    { name: "京都" },
    { name: "大阪" },
    { name: "兵庫" },
    { name: "奈良" },
    { name: "和歌山" },
    { name: "鳥取" },
    { name: "島根" },
    { name: "岡山" },
    { name: "広島" },
    { name: "山口" },
    { name: "徳島" },
    { name: "香川" },
    { name: "愛媛" },
    { name: "高知" },
    { name: "福岡" },
    { name: "佐賀" },
    { name: "長崎" },
    { name: "熊本" },
    { name: "大分" },
    { name: "宮崎" },
    { name: "鹿児島" },
    { name: "沖縄" },
    { name: "その他" },
  ]
)
Job.create(
  [
    { name: "営業" },
    { name: "事務・オフィスワーク" },
    { name: "販売" },
    { name: "飲食・フード" },
    { name: "サービス・警備・清掃" },
    { name: "イベント・レジャー・娯楽" },
    { name: "教育・カルチャー・スポーツ" },
    { name: "理・美容" },
    { name: "医療・介護・福祉" },
    { name: "ドライバー・配達" },
    { name: "製造・工場・倉庫" },
    { name: "IT・エンジニア" },
    { name: "クリエイティブ・編集・出版" },
    { name: "専門職" },
    { name: "土木・建設・農水産" },
  ]
)
