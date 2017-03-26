current_records.collect {|e|
  {
    "タイトル" => link_to(e.comment0, [controller.class.parent_name.underscore, e]),
    "コメント数" => e.type012_s1_articles.count,
    "操作" => [
      link_to("編集", [:edit, controller.class.parent_name.underscore, e]),
      (controller.respond_to_destroy? ? link_to("削除", [controller.class.parent_name.underscore, e], :method => :delete) : nil),
    ].compact.join(" ").html_safe,
  }
}.to_quick_table
