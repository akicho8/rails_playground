class ShowCaseInfo
  include ApplicationStaticRecord
  static_record [
    {:model => Type001Article, :confirm => true,  :tables => 1, :desc => proc {|h| "とてもシンプル" },                                                                                         },
    {:model => Type002Article, :confirm => true,  :tables => 2, :desc => proc {|h| "画像認証対応。ボットを防げる。シンプルだが確認画面でリロードすると画像認証が作動して元に戻ってしまう。" }, },
    {:model => Type015Article, :confirm => true,  :tables => 2, :desc => proc {|h| "画像認証対応。ボットを防げる。認証は一回だけにしたバージョン。確認画面でリロードしても元に戻らない。" },   },
    {:model => Type003Article, :confirm => true,  :tables => 1, :desc => proc {|h| "氏名・住所・連絡先。確認画面はスマホにも対応" },                                                           },
    {:model => Type004Article, :confirm => true,  :tables => 1, :desc => proc {|h| "従来の単一ファイルアップロードフォーム。詳細はいろんなファイル形式に対応" },                               },
    {:model => Type009Article, :confirm => false, :tables => 2, :desc => proc {|h| "不親切。エラー時に再アップが必要。だが、とてもシンプル" },                                                 },
    {:model => Type005Article, :confirm => true,  :tables => 2, :desc => proc {|h| "個別の削除にも対応。いちばん高機能" },                                                                     },
    {:model => Type010Article, :confirm => false, :tables => 2, :desc => proc {|h| "1:N。オークション商品画像などを想定。位置重要。画像に説明を追加可。" },                                  },
    {:model => Type006Article, :confirm => false, :tables => 3, :desc => proc {|h| "1:N。とてもシンプル。" },                                                                                },
    {:model => Type016Article, :confirm => false, :tables => 3, :desc => proc {|h| "1:N:1。collection_check_boxes / collection_radio_buttons / collection_select (+multiple) の例" },          },
    {:model => Type007Article, :confirm => true,  :tables => 3, :desc => proc {|h| "1対多。確認画面対応で一気にコードが煩雑になる" },                                                          },
    {:model => Type008Article, :confirm => true,  :tables => 3, :desc => proc {|h| "1対多。モデルはチェックボックスの場合と同じコードで良い" },                                                },
    {:model => Type011Article, :confirm => false, :tables => 2, :desc => proc {|h| "スレッドの作成と同時に1を自分で書き込むタイプ。" },                                                        },
    {:model => Type012Article, :confirm => false, :tables => 3, :desc => proc {|h| "異なる3つのモデルで構成する木構造。向こうの向こうまで一気に作る。" },                                      },
    {:model => Type013Article, :confirm => false, :tables => 1, :desc => proc {|h| "自分にもコメントできるツリー構造。フォームは再帰" },                                                       },
    {:model => Type014Article, :confirm => false, :tables => 1, :desc => proc {|h| "HTML5の特殊入力列挙。month, week の受け取りはスムーズにいかない。iPhoneでcolorは非対応" },                 },
    {:model => Type017Article, :confirm => false, :tables => 1, :desc => proc {|h| "GoogleMap対応のテスト。_show.html.slim が汚い" },                                                          },
    {:model => Type018User,    :confirm => false, :tables => 2, :desc => proc {|h| [
          h.link_to("メール認証から開始", [:new, :name_space1, :type018_email_activation]),
          h.link_to("いきなり登録", [:new, :name_space1, :type018_user]),
          h.link_to("ユーザー一覧", [:name_space1, :type018_users]),
          h.link_to("ログイン", [:new, :name_space1, :type018_session]),
          h.link_to("ホーム", [:name_space1, :type018_home]),
          h.link_to("ログアウト", [:name_space1, :type018_session], :method => :delete),
          h.link_to("メールプレビュー", "/rails/mailers/type018_foo/activation_mail"),
        ].join(" ") },                                                                                         },
    # {:name  => "ログイン",  :url => proc {|h| [:new, :name_space1, :type018_session] } , :desc => "ユーザー登録",                                                                                         },
  ], :attr_reader_auto => true

  def self.to_html(h)
    collect { |e|
      {}.tap do |row|
        row["名前"] = h.link_to(e.model.model_name.human, [:new, :name_space1, e.model.name.demodulize.underscore.to_sym])
        row["確認機能"] = e.confirm ? "★" : ""
        row["テーブル数"] = e.tables
        row["説明"] = e.desc.call(h).html_safe
        if Rails.env.development?
          row["対応モデル"] = e.model.name
        end
        row[""] = [
          h.link_to("一覧", [:name_space1, e.model.name.demodulize.underscore.pluralize.to_sym], :class => "btn btn-default btn-xs"),
        ].join(" ").html_safe
      end
    }.to_quick_table
  end
end
