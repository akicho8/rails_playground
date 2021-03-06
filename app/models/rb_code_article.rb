class RbCodeArticle
  include ApplicationMemoryRecord
  memory_record [
    {
      model: Type005Article,
      confirm: true,
      tables: 2,
      desc: "画像一つ一つに説明を入れられるアルバム機能のようなもの。複数アップロード対応。説明と合わせて1つだけアップロード対応。順序入れ替え対応。個別削除対応。高機能。コンテンツ管理の仕組みになる。応用範囲が広い。確認処理は綺麗に外せる。Vue.Draggableまたはフォームsubmitによる並び替え対応",
    },
    {
      model: Type001Article,
      confirm: true,
      tables: 1,
      desc: "とてもシンプル",
    },
    {
      model: Type035Article,
      tables: 1,
      desc: "acts_as_list で has_many の子を入れ替える。深いコントローラーの場合は Type005Article の方を参考にすること",
    },
    {
      model: Type036Ship,
      tables: 1,
      desc: "異なるモデルを並び換える。対象モデルを参照する中間モデルを入れ替え対象にする",
    },
    {
      model: Type002Article,
      confirm: true,
      tables: 2,
      desc: "画像認証対応。ボットを防げる。シンプルだが確認画面でリロードすると画像認証が作動して元に戻ってしまう。",
    },
    {
      model: Type015Article,
      confirm: true,
      tables: 2,
      desc: "画像認証対応。ボットを防げる。認証は一回だけにしたバージョン。確認画面でリロードしても元に戻らない。",
    },
    {
      model: Type003Article,
      confirm: true,
      tables: 1,
      desc: "氏名・住所・連絡先。確認画面はスマホにも対応",
    },
    {
      model: Type004Article,
      confirm: true,
      tables: 1,
      desc: "従来の単一ファイルアップロードフォーム。詳細はいろんなファイル形式に対応",
    },
    {
      model: Type009Article,
      confirm: false,
      tables: 2,
      desc: "不親切。エラー時に再アップが必要。だが、とてもシンプル",
    },
    {
      model: Type037Article,
      confirm: false,
      tables: 2,
      desc: "リモートアップロード",
    },
    {
      model: Type010Article,
      confirm: false,
      tables: 2,
      desc: "1:N。オークション商品画像などを想定。位置重要。画像に説明を追加可。",
    },
    {
      model: Type006Article,
      confirm: false,
      tables: 3,
      desc: "1:N。とてもシンプル。中間情報は単に 1:1 で結ぶだけに使っている。別の情報を持たない。別の情報を持つ場合は Type096Article を参考にすること。",
    },
    {
      model: Type007Article,
      confirm: true,
      tables: 3,
      desc: "1対多。確認画面対応で一気にコードが煩雑になる",
    },
    {
      model: Type096Article,
      confirm: false,
      tables: 3,
      desc: "
Type006 の中間情報に別の情報を持つ場合バージョン。
ロール(Type096Article)と権限(Team)があり権限の状態を選択(legal_accept_key)を中間情報(Type096TeamShip)に持つような場合のサンプルになっている
チェックボックスで権限を選択するだけでなく、その権限の状態をどうするかまで個別に、かつ一括で設定する場合の例。
",
    },
    {
      model: Type016Article,
      confirm: false,
      tables: 3,
      desc: "1:N:1。collection_check_boxes / collection_radio_buttons / collection_select (+multiple) の例",
    },
    {
      model: Type008Article,
      confirm: true,
      tables: 3,
      desc: "1対多。モデルはチェックボックスの場合と同じコードで良い",
    },
    {
      model: Type011Article,
      confirm: false,
      tables: 2,
      desc: "スレッドの作成と同時に1を自分で書き込む。親の更新で子もまとめて更新できる。has_one か has_many か曖昧な仕様でもうまく対応できる。掲示板のイメージが強いがいろんな用途に応用できる",
    },
    {
      model: Type012Article,
      confirm: false,
      tables: 3,
      desc: "異なる3つのモデルで構成する木構造。向こうの向こうまで一気に作る。2ch形式スレッドに似ているがもっと深い",
    },
    {
      model: Type013Article,
      confirm: false,
      tables: 1,
      desc: "自分にもコメントできるツリー構造。フォームは再帰",
    },
    {
      model: Type014Article,
      confirm: false,
      tables: 1,
      desc: "HTML5の特殊入力列挙。month, week の受け取りはスムーズにいかない。iPhoneでcolorは非対応",
    },
    {
      model: Type017Article,
      confirm: false,
      tables: 1,
      desc: "GoogleMap対応のテスト。_show.html.slim が汚い",
    },
    {
      model: Type018User,
      confirm: false,
      tables: 3,
      url: proc {|h| [:new, :name_space1, :type018_email_activation] },
      desc: "メールアドレスから登録する。いきなり登録もある。パスワードリセットあり",
      link_list: proc {|h| [
          h.link_to("メールで登録", [:new, :name_space1, :type018_email_activation]),
          h.link_to("いきなり登録", [:new, :name_space1, :type018_user]),
          h.link_to("ログイン", [:new, :name_space1, :type018_session]),
          h.link_to("ホーム", [:name_space1, :type018_home]),
          h.link_to("ログアウト", [:name_space1, :type018_session], method: :delete),
          h.link_to("ユーザー一覧(admin用)", [:name_space1, :type018_users]),
          h.link_to("パス再設定通知(admin用)", [:name_space1, :type018_password_reset_url_notifications]),
          h.link_to("パス変更履歴(admin用)", [:name_space1, :type018_password_reseters]),
        ] },
    },
    {
      name: "BASIC認証のみを使ったログイン",
      url: proc {|h| [:name_space1, :type019_home] },
      search_key: "Type019",
      desc: "名前は何でもよい。パスワードはa。ログアウトできない。DBも使わない。だから user_id がない",
      link_list: proc {|h|
        [
          h.link_to("ホーム", [:name_space1, :type019_home]),
        ]
      },
    },
    {
      model: Type020User,
      tables: 1,
      desc: "BASIC認証で名前にメールアドレスを入れてPWを空にするとメールアドレスにPWが届く",
      link_list: proc {|h|
        [
          h.link_to("ホーム", [:name_space1, :type020_home]),
        ]
      },
    },
    {
      name: "チャット雛形(保存なし)", url: proc {|h| [:name_space1, :type021_chat_room] },
      search_key: "Type021",
      desc: "「発言」を type021_room.coffee#perform から ruby の Type021RoomChannel#type021_say に渡し、加工して ActionCable.server.broadcast でブロードキャストすると、再び type021_room.coffee#received で受け取って jQuery で append する",
    },
    {
      name: "チャット雛形(保存あり)",
      url: proc {|h| [:name_space1, :type022_chat_room] },
      search_key: "Type022",
      desc: "「発言」を type022_room.coffee#perform から ruby の Type022RoomChannel#type022_say に渡し、Type022Article に保存して、after_create_commit でジョブに投げて、そこで加工して ActionCable.server.broadcast でブロードキャストすると、再び type022_room.coffee#received で受け取って jQuery で append する",
    },
    {
      name: "スプラトゥーン的なキャンバス共有",
      url: proc {|h| [:name_space1, :type023_chat_room] },
      search_key: "Type023",
      desc: "保存しないチャットの派生で、キャンバス上でのマウスの「動き」と各自の「色」を共有する"
    },
    {
      name: "React動作確認用",
      url: proc {|h| [:frontend, :type024_article] },
      search_key: "Type024",
    },
    {
      name: "Vue動作確認用",
      url: proc {|h| [:frontend, :type025_article] },
      search_key: "Type025",
    },
    {name: "Vueサンプル・計算機",       url: proc {|h| [:frontend, :type026_article] }, search_key: "Type026", desc: ""},
    {name: "Vueサンプル・ランダム出題", url: proc {|h| [:frontend, :type027_article] }, search_key: "Type027", desc: ""},

    {
      name: "DHH流ルーティング",
      url: proc {|h| [:type028_foo, :type028_bars, type028_foo_id: 1] },
      search_key: "Type028",
      desc: "inbox_pendings GET /inboxes/:inbox_id/pendings(.:format) inboxes/pendings#index の形にする。詳しくは routes.rb を見ること。",
      link_list: proc {|h|
        [
          h.link_to("親", [:type028_foos]),
          h.link_to("子", [:type028_foo, :type028_bars, type028_foo_id: 1]),
        ]
      },
    },
    {
      model: Type029Article,
      url: proc {|h| [:name_space1, Type029Article.first] },
      desc: [
        "1. params を確認する例",
        "2. よくあるpartial更新例",
        "3. スライダー(jQuery使用・シンプル)",
        "4. スライダー(jQueryの $.ajax を激しく利用・煩雑)",
      ].join(" ")
    },

    {
      name: "lodash 使用例",
      url: proc {|h| [:frontend, :type031_article] },
      search_key: "Type031",
      desc: "ES6 の機能を先取りしていたライブラリ",
    },
    {
      name: "chart.js 使用例",
      url: proc {|h| [:frontend, :type032_article] },
      search_key: "Type032",
      desc: "グラフ表示用のライブラリ",
    },
    {
      name: "sortablejs 使用例",
      url: proc {|h| [:frontend, :type033_article] },
      search_key: "Type033",
      desc: "ドラッグ・アンド・ドロップ用のライブラリ",
    },
    {
      name: "select2 使用例",
      url: proc {|h| [:frontend, :type034_article] },
      search_key: "Type034",
      desc: "プルダウンを改良するライブラリ",
    },
  ]

  def self.to_html(h)
    collect{|e|e.to_row(h)}.to_html
  end

  def to_row(h)
    {}.tap do |row|
      begin
        row["名前"]       = h.link_to(name, url2(h))
        row["確認機能"]   = confirm ? "★" : ""
        row["テーブル数"] = tables
        row["説明"]       = formated_desc(h)
        row["リンク"]     = link_list ? h.content_tag(:span, link_list.call(h).join(" ").html_safe, style: "white-space: normal") : nil
        row["スコープ"]   = search_key
        row[""]           = Array(links(h)).join(" ").html_safe
        # rescue => error
        #   row["名前"] = name
        #   row["ERROR"] = error.inspect
      end
    end
  end

  def name
    v = nil
    v ||= attributes[:name]
    if model
      v ||= model.model_name.human
    end
    v
  end

  def url2(h)
    v = nil
    if url
      v ||= url.(h)
    end
    if model
      v ||= [:new, :name_space1, model.name.demodulize.underscore.to_sym]
    end
    v
  end

  def links(h)
    if model
      h.link_to("一覧", [:name_space1, model.name.demodulize.underscore.pluralize.to_sym], class: "btn btn-default btn-xs")
    end
  end

  def search_key
    v ||= super
    if model
      v ||= model.name
    end
    if v
      v.slice(/\d+/)
    end
  end

  def formated_desc(h)
    if desc
      if desc.kind_of?(Array)
        s = h.tag.ul { desc.collect{|e|h.tag.li{e}}.join.html_safe }
      else
        s = desc
      end
      h.tag.span(s.to_s.html_safe, style: "white-space: normal")
    end
  end
end
