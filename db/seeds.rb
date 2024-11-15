# Cardデータ
Card.create([{ name: 'ピカチュウ', card_type: '電気' },
             { name: 'サンダー', card_type: '電気' },
             { name: 'ライチュウ', card_type: '電気' },
             { name: 'ナツメ', card_type: 'サポート' },
             { name: 'フシギダネ', card_type: '草' },
             { name: 'リザードン', card_type: '炎' },
             { name: 'カメックス', card_type: '水' },
             { name: 'ゲンガー', card_type: 'ゴースト' },
             { name: 'ミュウ', card_type: '超能力' },
             { name: 'イーブイ', card_type: 'ノーマル' }])

# Relationデータ
Relation.create([{ main_card_id: 1, sub_card_id: 2, point: 50 },
                 { main_card_id: 1, sub_card_id: 3, point: 80 },
                 { main_card_id: 1, sub_card_id: 4, point: 60 },
                 { main_card_id: 5, sub_card_id: 6, point: 120 },
                 { main_card_id: 5, sub_card_id: 7, point: 90 },
                 { main_card_id: 8, sub_card_id: 9, point: 110 },
                 { main_card_id: 8, sub_card_id: 10, point: 70 },
                 { main_card_id: 2, sub_card_id: 4, point: 50 },
                 { main_card_id: 3, sub_card_id: 7, point: 40 },
                 { main_card_id: 6, sub_card_id: 10, point: 30 }])

# Packデータ
Pack.create([{ name: '黄色パック' },
             { name: '赤色パック' },
             { name: '青色パック' },
             { name: '緑色パック' },
             { name: '紫色パック' }])

# Includeデータ
Include.create([{ card_id: 1, pack_id: 1 },
                { card_id: 1, pack_id: 4 },
                { card_id: 2, pack_id: 1 },
                { card_id: 2, pack_id: 5 },
                { card_id: 3, pack_id: 1 },
                { card_id: 4, pack_id: 2 },
                { card_id: 5, pack_id: 3 },
                { card_id: 6, pack_id: 2 },
                { card_id: 7, pack_id: 3 },
                { card_id: 8, pack_id: 4 },
                { card_id: 9, pack_id: 5 },
                { card_id: 10, pack_id: 5 }])
