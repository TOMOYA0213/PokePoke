# Cardデータ
# Card.create([{ name: 'ピカチュウ', card_type: '電気' },
#              { name: 'サンダー', card_type: '電気' },
#              { name: 'ライチュウ', card_type: '電気' },
#              { name: 'ナツメ', card_type: 'サポート' },
#              { name: 'サーナイト', card_type: '超能力' },
#              { name: 'ミュウツー', card_type: '超能力' },
#              { name: '博士の研究', card_type: 'サポート' },
#              { name: 'ゼブライカ', card_type: '電気' },
#              { name: 'スターミー', card_type: '水' },
#              { name: 'フリーザー', card_type: '水' },
#              { name: 'カスミ', card_type: 'サポート' }])
            
Card.create([{ id: 1, name: 'ピカチュウ', card_type: '電気' },
             { id: 2, name: 'サンダー', card_type: '電気' },
             { id: 3, name: 'ライチュウ', card_type: '電気' },
             { id: 4, name: 'ナツメ', card_type: 'サポート' },
             { id: 5, name: 'サーナイト', card_type: '超能力' },
             { id: 6, name: 'ミュウツー', card_type: '超能力' },
             { id: 7, name: '博士の研究', card_type: 'サポート' },
             { id: 8, name: 'ゼブライカ', card_type: '電気' },
             { id: 9, name: 'スターミー', card_type: '水' },
             { id: 10, name: 'フリーザー', card_type: '水' },
             { id: 11, name: 'カスミ', card_type: 'サポート' }])


# Relationデータ
Relation.create([{ main_card_id: 1, sub_card_id: 2, point: 95 },
                 { main_card_id: 1, sub_card_id: 3, point: 50 },
                 { main_card_id: 1, sub_card_id: 4, point: 60 },
                 { main_card_id: 1, sub_card_id: 7, point: 60 },
                 { main_card_id: 1, sub_card_id: 8, point: 70 },
                 { main_card_id: 6, sub_card_id: 4, point: 60 },
                 { main_card_id: 6, sub_card_id: 5, point: 100 },
                 { main_card_id: 6, sub_card_id: 7, point: 60 },
                 { main_card_id: 9, sub_card_id: 10, point: 85 },
                 { main_card_id: 9, sub_card_id: 11, point: 100 },
                 { main_card_id: 9, sub_card_id: 4, point: 60 },
                 { main_card_id: 9, sub_card_id: 7, point: 60 }])

# Packデータ
# Pack.create([{ name: '黄色パック' },
#              { name: '赤色パック' },
#              { name: '紫色パック' }])
Pack.create([{ id: 1, name: '黄色パック' },
             { id: 2, name: '赤色パック' },
             { id: 3, name: '紫色パック' }])

# Includeデータ
Include.create([{ card_id: 1, pack_id: 1 },
                { card_id: 2, pack_id: 1 },
                { card_id: 3, pack_id: 1 },
                { card_id: 4, pack_id: 2 },
                { card_id: 5, pack_id: 3 },
                { card_id: 6, pack_id: 3 },
                { card_id: 7, pack_id: 1 },
                { card_id: 7, pack_id: 2 },
                { card_id: 7, pack_id: 3 },
                { card_id: 8, pack_id: 1 },
                { card_id: 9, pack_id: 2 },
                { card_id: 10, pack_id: 3 },
                { card_id: 11, pack_id: 1 }])
