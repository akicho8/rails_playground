class Prefecture
  include ApplicationStaticRecord
  static_record [
    {:key => "北海道",   :area_name => "北海道・東北"},
    {:key => "青森県",   :area_name => "北海道・東北"},
    {:key => "岩手県",   :area_name => "北海道・東北"},
    {:key => "宮城県",   :area_name => "北海道・東北"},
    {:key => "秋田県",   :area_name => "北海道・東北"},
    {:key => "山形県",   :area_name => "北海道・東北"},
    {:key => "福島県",   :area_name => "北海道・東北"},
    {:key => "東京都",   :area_name => "関東"},
    {:key => "神奈川県", :area_name => "関東"},
    {:key => "埼玉県",   :area_name => "関東"},
    {:key => "千葉県",   :area_name => "関東"},
    {:key => "茨城県",   :area_name => "関東"},
    {:key => "栃木県",   :area_name => "関東"},
    {:key => "群馬県",   :area_name => "関東"},
    {:key => "山梨県",   :area_name => "関東"},
    {:key => "新潟県",   :area_name => "信越・北陸"},
    {:key => "長野県",   :area_name => "信越・北陸"},
    {:key => "富山県",   :area_name => "信越・北陸"},
    {:key => "石川県",   :area_name => "信越・北陸"},
    {:key => "福井県",   :area_name => "信越・北陸"},
    {:key => "愛知県",   :area_name => "東海"},
    {:key => "岐阜県",   :area_name => "東海"},
    {:key => "静岡県",   :area_name => "東海"},
    {:key => "三重県",   :area_name => "東海"},
    {:key => "大阪府",   :area_name => "近畿"},
    {:key => "兵庫県",   :area_name => "近畿"},
    {:key => "京都府",   :area_name => "近畿"},
    {:key => "滋賀県",   :area_name => "近畿"},
    {:key => "奈良県",   :area_name => "近畿"},
    {:key => "和歌山県", :area_name => "近畿"},
    {:key => "鳥取県",   :area_name => "中国"},
    {:key => "島根県",   :area_name => "中国"},
    {:key => "岡山県",   :area_name => "中国"},
    {:key => "広島県",   :area_name => "中国"},
    {:key => "山口県",   :area_name => "中国"},
    {:key => "徳島県",   :area_name => "四国"},
    {:key => "香川県",   :area_name => "四国"},
    {:key => "愛媛県",   :area_name => "四国"},
    {:key => "高知県",   :area_name => "四国"},
    {:key => "福岡県",   :area_name => "九州・沖縄"},
    {:key => "佐賀県",   :area_name => "九州・沖縄"},
    {:key => "長崎県",   :area_name => "九州・沖縄"},
    {:key => "熊本県",   :area_name => "九州・沖縄"},
    {:key => "大分県",   :area_name => "九州・沖縄"},
    {:key => "宮崎県",   :area_name => "九州・沖縄"},
    {:key => "鹿児島県", :area_name => "九州・沖縄"},
    {:key => "沖縄県",   :area_name => "九州・沖縄"},
  ], :attr_reader_auto => true
end
