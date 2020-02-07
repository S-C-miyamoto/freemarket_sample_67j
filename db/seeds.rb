[
  ['ナイキ', 1],
  ['アディダス', 1],
  ['シャネル', 1],
  ['ルイヴィトン', 1],
  ['シュプリーム', 1],
  ['エルメス', 1],
  ['プラダ', 1],
  ['クリスチャン・ディオール', 1],
  ['イヴ・サンローラン', 1],
  ['ロエベ', 1],
  ['セリーヌ', 1],
  ['クロエ', 1],
  ['ティファニー', 1],
  ['ユニクロ', 1],
  ['その他', 1],
  ['ナイキ', 2],
  ['アディダス', 2],
  ['プーマ', 2],
  ['リーバイス', 2],
  ['グローバルワーク', 2],
  ['ユニクロ', 2],
  ['ギャップ', 2],
  ['ナノユニバース', 2],
  ['ポールスミス', 2],
  ['ラルフローレン', 2],
  ['ディーゼル', 2],
  ['その他', 2],
  ['ナイキ', 3],
  ['アディダス', 3],
  ['プーマ', 3],
  ['ミキハウス', 3],
  ['チャンピオンキッズ', 3],
  ['ユニクロ', 3],
  ['ベビードール', 3],
  ['ディズニーピクサー', 3],
  ['その他', 3],
  ['イヴサンローラン', 4],
  ['イケア', 4],
  ['エルメス', 4],
  ['グッチ', 4],
  ['コーチ', 4],
  ['コストコ', 4],
  ['バーバリー', 4],
  ['パイロット', 4],
  ['ベルーナ', 4],
  ['アイリスオーヤマ', 4],
  ['イケア', 4],
  ['オリエント', 4],
  ['花王', 4],
  ['その他', 4],
  ['集英社', 5],
  ['講談社', 5],
  ['幻冬舎', 5],
  ['中央新書', 5],
  ['ソニー', 5],
  ['任天堂', 5],
  ['スクエア・エニックス', 5],
  ['CAPCOM', 5],
  ['コナミ', 5],
  ['その他', 5],
  ['タカラトミー', 6],
  ['LEGO', 6],
  ['乃木坂', 6],
  ['その他', 6],
  ['アーキレイ', 7],
  ['いち髪', 7],
  ['エコ', 7],
  ['エスケーツー', 7],
  ['大塚製薬', 7],
  ['資生堂', 7],
  ['ジーアール', 7],
  ['その他', 7],
  ['アップル', 8],
  ['ソニー', 8],
  ['パナソニック', 8],
  ['カシオ', 8],
  ['シャープ', 8],
  ['京セラ', 8],
  ['LG', 8],
  ['サムスン', 8],
  ['東芝', 8],
  ['ファーウェイ', 8],
  ['その他', 8],
  ['アウトドア', 9],
  ['ナイキ', 9],
  ['アディダス', 9],
  ['プーマ', 9],
  ['ニューバランス', 9],
  ['バタフライ', 9],
  ['その他', 9],
  ['ハンドメイド', 10],
  ['チケット', 11],
  ['トヨタ', 12],
  ['日産', 12],
  ['三菱', 12],
  ['スズキ', 12],
  ['スバル', 12],
  ['ホンダ', 12],
  ['その他', 12],
  ['その他', 13],
  ['なし', 14]
].each do |name, classification|
  Brand.create(
    { name: name, classification: classification }
  )
end





















ladys = Category.create(name: "レディース")
mens = Category.create(name: "メンズ")
kids = Category.create(name: "ベビー・キッズ")
interiors = Category.create(name: "インテリア・住まい・小物")
books = Category.create(name: "本・音楽・ゲーム")
hobbys = Category.create(name: "おもちゃ・ホビー・グッズ")
cosmetics = Category.create(name: "コスメ・香水・美容")
home_appliances = Category.create(name: "家電・スマホ・カメラ")
sports = Category.create(name: "スポーツ・レジャー")
handmades = Category.create(name: "ハンドメイド")
tickets = Category.create(name: "チケット")
cars = Category.create(name: "自動車・オートバイ")
others = Category.create(name: "その他")

ladys_tops = ladys.children.create(name: "トップス")
ladys_jacket = ladys.children.create(name: "ジャケット/アウター")
ladys_pants = ladys.children.create(name: "パンツ")
ladys_skirt = ladys.children.create(name: "スカート")
ladys_onepiece = ladys.children.create(name: "ワンピース")
ladys_shoes = ladys.children.create(name: "シューズ")
ladys_roomwear = ladys.children.create(name: "ルームウェア/パジャマ")
ladys_legwear = ladys.children.create(name: "レッグウェア")
ladys_hat = ladys.children.create(name: "帽子")
ladys_bag = ladys.children.create(name: "バッグ")
ladys_accessory = ladys.children.create(name: "アクセサリー")
ladys_hairaccessory = ladys.children.create(name: "ヘアアクセサリー")
ladys_article = ladys.children.create(name: "小物")
ladys_watch = ladys.children.create(name: "時計")

mens_tops = mens.children.create(name: "トップス")
mens_jacket = mens.children.create(name: "ジャケット/アウター")
mens_pants = mens.children.create(name: "パンツ")
mens_shoes = mens.children.create(name: "靴")
mens_bag = mens.children.create(name: "バッグ")
mens_suit = mens.children.create(name: "スーツ")
mens_hat = mens.children.create(name: "帽子")
mens_accessory = mens.children.create(name: "アクセサリー")
mens_article = mens.children.create(name: "小物")
mens_watch = mens.children.create(name: "時計")
mens_legwear = mens.children.create(name: "レッグウェア")

kids_babyg = kids.children.create(name: "ベビー服(女の子)")
kids_babyb = kids.children.create(name: "ベビー服(男の子)")
kids_kid = kids.children.create(name: "キッズ服")


interiors_kitchen = interiors.children.create(name: "キッチン/食器")
interiors_bed = interiors.children.create(name: "ベッド/マットレス")
interiors_table = interiors.children.create(name: "机/テーブル")

ladys_tops.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"},
                            {name: "Tシャツ/カットソー(七分/長袖)"},
                            {name: "シャツ/ブラウス(半袖/袖なし)"},
                            {name: "Tシャツ/ブラウス(七分/長袖)"},
                            {name: "ポロシャツ"},
                            {name: "キャミソール"},
                            {name: "タンクトップ"},
                            {name: "ホルターネック"},
                            {name: "ニット/セーター"},
                            {name: "チュニック"},
                            {name: "カーティガン/ボレロ"},
                            {name: "アンサンブル"},
                            {name: "ベスト/ジレ"},
                            {name: "パーカー"}])
ladys_jacket.children.create([{name: "テーラードジャケット"},
                              {name: "ノーカラージャケット"},
                              {name: "Gジャン/デニムジャケット"},
                              {name: "レザージャケット"},
                              {name: "ダウンジャケット"},
                              {name: "ライダースジャケット"},
                              {name: "ミリタリージャケット"},
                              {name: "ダウンベスト"},
                              {name: "ジャンパー/ブルゾン"},
                              {name: "ポンチョ"},
                              {name: "ロングコート"},
                              {name: "トレンチコート"},
                              {name: "ダッフルコート"},
                              {name: "チェスターコート"}])
ladys_pants.children.create([{name: "デニム/ジーンズ"},
                              {name: "ショートパンツ"},
                              {name: "カジュアルパンツ"},
                              {name: "ハーフパンツ"},
                              {name: "チノパン"},
                              {name: "ワークパンツ/カーゴパンツ"},
                              {name: "クロップドパンツ"},
                              {name: "サロペット/オーバーオール"},
                              {name: "オールインワン"},
                              {name: "サルエルパンツ"},
                              {name: "ガウチョパンツ"}])
ladys_skirt.children.create([{name: "ミニスカート"},
                              {name: "ひざ丈スカート"},
                              {name: "ロングスカート"},
                              {name: "キュロット"}])
ladys_onepiece.children.create([{name: "ミニワンピース"},
                              {name: "ひざ丈ワンピース"},
                              {name: "ロングワンピース"}])
ladys_shoes.children.create([{name: "ハイヒール/パンプス"},
                              {name: "ブーツ"},
                              {name: "サンダル"},
                              {name: "スニーカー"},
                              {name: "ミュール"},
                              {name: "モカシン"},
                              {name: "ローファー/革靴"},
                              {name: "フラットシューズ/バレエシューズ"},
                              {name: "長靴/レインシューズ"}])
ladys_roomwear.children.create([{name: "パジャマ"},
                              {name: "ルームウェア"}])
ladys_legwear.children.create([{name: "ソックス"},
                              {name: "スパッツ/レギンス"},
                              {name: "ストッキング/タイツ"},
                              {name: "レッグウォーマー"}])
ladys_hat.children.create([{name: "ニットキャップ/ビーニー"},
                              {name: "ハット"},
                              {name: "ハンチング/ベレー帽"},
                              {name: "キャップ"},
                              {name: "キャスケット"},
                              {name: "麦わら帽子"}])
ladys_bag.children.create([{name: "ハンドバック"},
                              {name: "トートバッグ"},
                              {name: "エコバッグ"},
                              {name: "リュック/バクパック"},
                              {name: "ボストンバッグ"},
                              {name: "スポーツバッグ"},
                              {name: "ショルダーバッグ"},
                              {name: "クラッチバッグ"},
                              {name: "ポーチ／バニディ"},
                              {name: "ボディバッグ/ウェストバッグ"},
                              {name: "マザーズバッグ"}])
ladys_accessory.children.create([{name: "ネックレス"},
                              {name: "ブレスレット"},
                              {name: "バングル/リストバンド"},
                              {name: "リング"},
                              {name: "ピアス"},
                              {name: "イヤリング"},
                              {name: "アンクレット"},
                              {name: "ブローチ"},
                              {name: "チャーム"}])
ladys_hairaccessory.children.create([{name: "ヘアゴム/シュシュ"},
                              {name: "ヘアバンド/カチューシャ"},
                              {name: "ヘアピン"}])
ladys_article.children.create([{name: "長財布"},
                              {name: "折り財布"},
                              {name: "コインケース"},
                              {name: "キーケース"},
                              {name: "ハンカチ"},
                              {name: "ベルト"},
                              {name: "マフラー/ショール"},
                              {name: "手帳"},
                              {name: "傘"},
                              {name: "キーホルダー"}])
ladys_watch.children.create([{name: "腕時計"},
                              {name: "ラバーベルト"},
                              {name: "レザーベルト"},
                              {name: "金属ベルト"}])

mens_tops.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"},
                              {name: "Tシャツ/カットソー(七分/長袖)"},
                              {name: "シャツ/ブラウス(半袖/袖なし)"},
                              {name: "Tシャツ/ブラウス(七分/長袖)"},
                              {name: "ポロシャツ"},
                              {name: "タンクトップ"},
                              {name: "ジャージ"},
                              {name: "ホルターネック"},
                              {name: "ニット/セーター"},
                              {name: "チュニック"},
                              {name: "カーティガン"},
                              {name: "パーカー"}])                              
mens_jacket.children.create([{name: "テーラードジャケット"},
                              {name: "ノーカラージャケット"},
                              {name: "Gジャン/デニムジャケット"},
                              {name: "レザージャケット"},
                              {name: "ダウンジャケット"},
                              {name: "ライダースジャケット"},
                              {name: "ミリタリージャケット"},
                              {name: "ダウンベスト"},
                              {name: "ナイロンジャケット"},
                              {name: "ピーコート"},
                              {name: "ロングコート"},
                              {name: "トレンチコート"},
                              {name: "ダッフルコート"},
                              {name: "チェスターコート"}])
mens_pants.children.create([{name: "デニム/ジーンズ"},
                              {name: "ショートパンツ"},
                              {name: "カジュアルパンツ"},
                              {name: "ハーフパンツ"},
                              {name: "チノパン"},
                              {name: "ワークパンツ/カーゴパンツ"},
                              {name: "オーバーオール"},
                              {name: "オールインワン"},
                              {name: "サルエルパンツ"},
                              {name: "ジャージ"}])
mens_shoes.children.create([{name: "ブーツ"},
                              {name: "サンダル"},
                              {name: "スニーカー"},
                              {name: "ドレス/ビジネス"},
                              {name: "モカシン"},
                              {name: "ローファー/革靴"},
                              {name: "長靴/レインシューズ"}])
mens_bag.children.create([{name: "ハンドバック"},
                              {name: "トートバッグ"},
                              {name: "エコバッグ"},
                              {name: "リュック/バクパック"},
                              {name: "ボストンバッグ"},
                              {name: "スポーツバッグ"},
                              {name: "ショルダーバッグ"},
                              {name: "ビジネスバッグ"},
                              {name: "ウェストポーチ"},
                              {name: "トラベルバッグ"}])
mens_suit.children.create([{name: "スーツジャケット"},
                              {name: "スーツベスト"},
                              {name: "スラックス"},
                              {name: "セットアップ"}])
mens_hat.children.create([{name: "ニットキャップ/ビーニー"},
                              {name: "ハット"},
                              {name: "ハンチング/ベレー帽"},
                              {name: "キャップ"},
                              {name: "キャスケット"},
                              {name: "麦わら帽子"},
                              {name: "サンバイザー"}])
mens_accessory.children.create([{name: "ネックレス"},
                              {name: "ブレスレット"},
                              {name: "バングル/リストバンド"},
                              {name: "リング"},
                              {name: "ピアス"},
                              {name: "イヤリング"},
                              {name: "アンクレット"}])
mens_article.children.create([{name: "長財布"},
                              {name: "折り財布"},
                              {name: "コインケース"},
                              {name: "キーケース"},
                              {name: "ハンカチ"},
                              {name: "ベルト"},
                              {name: "マフラー/ショール"},
                              {name: "手帳"},
                              {name: "傘"},
                              {name: "キーホルダー"}])
mens_watch.children.create([{name: "腕時計"},
                              {name: "ラバーベルト"},
                              {name: "レザーベルト"},
                              {name: "金属ベルト"}])
mens_legwear.children.create([{name: "ソックス"},
                              {name: "スパッツ/レギンス"},
                              {name: "ストッキング/タイツ"},
                              {name: "レッグウォーマー"}])
kids_babyg.children.create([{name: "トップス"},
                            {name: "アウター"},
                            {name: "パンツ"},
                            {name: "スカート"},
                            {name: "ワンピース"},
                            {name: "ベビードレス"},
                            {name: "おくるみ"},
                            {name: "パジャマ"},])
kids_babyb.children.create([{name: "トップス"},
                            {name: "アウター"},
                            {name: "パンツ"},
                            {name: "ロンパース"},
                            {name: "パジャマ"}])
kids_kid.children.create([{name: "トップス"},
                            {name: "アウター"},
                            {name: "パンツ"},
                            {name: "ロンパース"},
                            {name: "パジャマ"}])

interiors_kitchen.children.create([{name: "食器"},
                              {name: "調理器具"},
                              {name: "収納"},
                              {name: "テーブル用品"},
                              {name: "エプロン"},
                              {name: "浄水機"},
                              {name: "エプロン"}])
interiors_bed.children.create([{name: "セミシングルベッド"},
                              {name: "シングルベッド"},
                              {name: "ダブルベッド"},
                              {name: "クイーンベッド"},
                              {name: "キングベッド"},])
interiors_table.children.create([{name: "こたつ"},
                              {name: "カウンターテーブル"},
                              {name: "ダイニングテーブル"},
                              {name: "アウトドア用"},
                              {name: "学習机"},])

books_book = books.children.create(name: "本")
books_music = books.children.create(name: "音楽")
books_game = books.children.create(name: "ゲーム")
books_magazine = books.children.create(name: "雑誌")

books_book.children.create([{name: "小説"},
                              {name: "漫画"},
                              {name: "趣味"},
                              {name: "ビジネス書"},
                              {name: "参考書"}])
books_music.children.create([{name: "邦楽"},
                                {name: "洋楽"},
                                {name: "クラシック"},
                                {name: "アニメ"},
                                {name: "キッズ/ファミリー"}])
books_game.children.create([{name: "家庭用ゲーム(本体)"},
                            {name: "家庭用ゲーム(ソフト)"},
                            {name: "携帯用ゲーム(本体)"},
                            {name: "携帯用ゲーム(ソフト)"},
                            {name: "PCゲーム"}])
books_magazine.children.create([{name: "アート/エンタメ/ホビー"},
                            {name: "ファッション"},
                            {name: "ニュース/総合"},
                            {name: "趣味/スポーツ"}])

hobbys_toy = hobbys.children.create(name: "おもちゃ")
hobbys_goods = hobbys.children.create(name: "グッズ")
hobbys_musical_instrument = hobbys.children.create(name: "楽器")
hobbys_card = hobbys.children.create(name: "トレーディングカード")

hobbys_toy.children.create([{name: "キャラクターグッズ"},
                              {name: "ぬいぐるみ"},
                              {name: "小物/アクセサリー"},
                              {name: "ミニカー"},
                              {name: "鉄道モデル"},
                              {name: "模型/プラモデル"},
                              {name: "ラジコン"}])
hobbys_goods.children.create([{name: "ミュージシャン"},
                                {name: "スポーツ選手"},
                                {name: "アイドル"},
                                {name: "お笑い芸人"}])
hobbys_musical_instrument.children.create([{name: "ギター"},
                                            {name: "ベース"},
                                            {name: "ドラム"},
                                            {name: "弦楽器"},
                                            {name: "管楽器"}])
hobbys_card.children.create([{name: "遊戯王"},
                              {name: "マジック:ザ・ギャザリング"},
                              {name: "ポケモンカードゲーム"},
                              {name: "デュエル・マスターズ"},
                              {name: "ドラゴンボール"},
                              {name: "プロ野球オーナーズリーグ"}])                                            

cosmetics_perfume = cosmetics.children.create(name: "香水")
cosmetics_base = cosmetics.children.create(name: "ベースメイク")
cosmetics_skin = cosmetics.children.create(name: "スキンケア")

cosmetics_perfume.children.create([{name: "香水(女性用)"},
                              {name: "香水(男性用)"},
                              {name: "ボディミスト"}])
cosmetics_base.children.create([{name: "ファンデーション"},
                                {name: "化粧下地"},
                                {name: "コントロールカラー"},
                                {name: "コンシーラー"},
                                {name: "BBクリーム"},
                                {name: "CCクリーム"},
                                {name: "フェイスパウダー"}])
cosmetics_skin.children.create([{name: "化粧水"},
                                {name: "乳液"},
                                {name: "美容液"},
                                {name: "洗顔料"},
                                {name: "パック"},
                                {name: "フェイスクリーム"},
                                {name: "アイケア"}])

sports_golf = sports.children.create(name: "ゴルフ")
sports_soccer = sports.children.create(name: "サッカー")
sports_tennis = sports.children.create(name: "テニス")
sports_basket = sports.children.create(name: "バスケットボール")
sports_snowboard = sports.children.create(name: "スノーボード")

sports_golf.children.create([{name: "クラブ"},
                              {name: "ウエア"},
                              {name: "バッグ"},
                              {name: "アクセサリー"}])
sports_soccer.children.create([{name: "ウェア"},
                                {name: "シューズ"},
                                {name: "ボール"},
                                {name: "記念グッズ"},
                                {name: "応援グッズ"}])
sports_tennis.children.create([{name: "ラケット"},
                                {name: "ウェア"},
                                {name: "ボール"},
                                {name: "アクセサリー"},
                                {name: "シューズ"}])
sports_basket.children.create([{name: "バッシュ"},
                                {name: "ウェア"},
                                {name: "バッグ"},
                                {name: "ビブス"},
                                {name: "アクセサリー"}])
sports_snowboard.children.create([{name: "ボード"},
                                {name: "バインディング"},
                                {name: "ウェア(男性用)"},
                                {name: "ウェア(女性用)"},
                                {name: "ブーツ"},
                                {name: "アクセサリー"},
                                {name: "バッグ"}])

home_appliances_smartphone = home_appliances.children.create(name: "スマートフォン/携帯電話")
home_appliances_pc = home_appliances.children.create(name: "PC/タブレット")
home_appliances_camera = home_appliances.children.create(name: "カメラ")
home_appliances_tv = home_appliances.children.create(name: "テレビ")
home_appliances_life = home_appliances.children.create(name: "スキンケア")

home_appliances_smartphone.children.create([{name: "スマートフォン"},
                                            {name: "バッテリー/充電器"},
                                            {name: "携帯電話本体"}])
home_appliances_pc.children.create([{name: "タブレット"},
                                    {name: "ノートPC"},
                                    {name: "テスクトップPC"},
                                    {name: "ディスプレイ"}])
home_appliances_camera.children.create([{name: "デジタルカメラ"},
                                        {name: "ビデオカメラ"},
                                        {name: "レンズ"},
                                        {name: "フィルムカメラ"}])
home_appliances_tv.children.create([{name: "テレビ"},
                                    {name: "プロジェクター"},
                                    {name: "ブルーレイレコーダー"},
                                    {name: "DVDレコーダー"}])
home_appliances_life.children.create([{name: "冷蔵庫"},
                                      {name: "洗濯機"},
                                      {name: "炊飯器"},
                                      {name: "アイロン"},
                                      {name: "調理器具"},
                                      {name: "掃除機"},
                                      {name: "電子レンジ"}])

handmades_accessory = handmades.children.create(name: "アクセサリー")
handmades_fashion = handmades.children.create(name: "ファッション")
handmades_watch = handmades.children.create(name: "時計")

handmades_accessory.children.create([{name: "ピアス"},
                              {name: "イヤリング"},
                              {name: "チャーム"},
                              {name: "アンクレット"},
                              {name: "ネックレス"},
                              {name: "ヘアゴム"},
                              {name: "ブレスレット"}])
handmades_fashion.children.create([{name: "ウェア"},
                                {name: "バッグ(女性用)"},
                                {name: "バッグ(男性用)"},
                                {name: "財布(女性用)"},
                                {name: "財布(男性用)"},
                                {name: "ファッション雑貨"}])
handmades_watch.children.create([{name: "時計(女性用)"},
                                {name: "時計(男性用)"},
                                {name: "アクセサリー"}])

tickets_music = tickets.children.create(name: "音楽")
tickets_sports = tickets.children.create(name: "スポーツ")
tickets_dance = tickets.children.create(name: "演劇/芸能")
tickets_events = tickets.children.create(name: "イベント")
tickets_movie = tickets.children.create(name: "映画")

tickets_music.children.create([{name: "男性アイドル"},
                              {name: "女性アイドル"},
                              {name: "韓流"},
                              {name: "国内アーティスト"},
                              {name: "海外アーティスト"},
                              {name: "音楽フェス"},
                              {name: "声優/アニメ"}])
tickets_sports.children.create([{name: "サッカー"},
                                {name: "野球"},
                                {name: "テニス"},
                                {name: "格闘技/プロレス"},
                                {name: "バレーボール"},
                                {name: "バスケットボール"}])
tickets_dance.children.create([{name: "ミュージカル"},
                                {name: "演劇"},
                                {name: "伝統芸能"}])
tickets_events.children.create([{name: "声優/アニメ"},
                              {name: "キッズ/ファミリー"},
                              {name: "トークショー/講演会"}])
tickets_movie.children.create([{name: "邦画"},
                                {name: "洋画"}])
            
cars_body = cars.children.create(name: "自動車本体")
cars_whoel = cars.children.create(name: "自動車タイヤ/ホイール")
cars_parts = cars.children.create(name: "自動車パーツ")
cars_acce = cars.children.create(name: "自動車アクセサリー")
cars_bike = cars.children.create(name: "オートバイ")

cars_body.children.create([{name: "国内自動車本体"},
                              {name: "外国自動車本体"}])
cars_whoel.children.create([{name: "タイヤ"},
                                {name: "ホイール"},
                                {name: "タイヤ/ホイール"}])
cars_parts.children.create([{name: "サスペンション"},
                            {name: "ブレーキ"},
                            {name: "外装"},
                            {name: "ライト"},
                            {name: "内装品、シート"},
                            {name: "ステアリング"},
                            {name: "マフラー、排気系"},
                            {name: "エンジン"}])
cars_acce.children.create([{name: "車内アクセサリー"},
                            {name: "カーナビ"},
                            {name: "カーオーディオ"},
                            {name: "車外アクセサリー"},
                            {name: "メンテナンス用品"},
                            {name: "チャイルドシート"},
                            {name: "ETC"}])
cars_bike.children.create([{name: "タイヤ"},
                            {name: "マフラー"},
                            {name: "外装"},
                            {name: "エンジン"},
                            {name: "シート"},
                            {name: "ライト、ウィンカー"},
                            {name: "マフラー、排気系"}])

others_art = others.children.create(name: "芸術品")
others_pets = others.children.create(name: "ペット用品")
others_eats = others.children.create(name: "食品")
others_sake = others.children.create(name: "飲料/酒")
others_trip = others.children.create(name: "日用品/生活雑貨")

others_art.children.create([{name: "絵画"},
                            {name: "絵巻"},
                            {name: "陶器/陶芸"},
                            {name: "家具"}])
others_pets.children.create([{name: "ペットフード"},
                                {name: "犬用品"},
                                {name: "魚用品/水草"},
                                {name: "小動物用品"},
                                {name: "かご/おり"},
                                {name: "鳥用品"},
                                {name: "猫用品"}])
others_eats.children.create([{name: "菓子"},
                            {name: "米"},
                            {name: "果実"},
                            {name: "野菜"},
                            {name: "果物"},
                            {name: "調味料"},
                            {name: "肉類"},
                            {name: "魚類"}])
others_sake.children.create([{name: "コーヒー"},
                            {name: "ソフトドリンク"},
                            {name: "ミネラルウォーター"},
                            {name: "お茶"},
                            {name: "ウイスキー"},
                            {name: "ワイン"},
                            {name: "日本酒"}])
others_trip.children.create([{name: "タオル"},
                            {name: "日用品"},
                            {name: "洗剤"},
                            {name: "旅行用品"},
                            {name: "防災グッズ"}])