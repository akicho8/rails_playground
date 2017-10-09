current_records.reject{|e|e.commentable}.collect {|e|
  {
    "タイトル" => link_to(e.comment, [:name_space1, e]),
    "コメント数" => e.comments.count,
    "操作" => [
      link_to("編集", [:edit, :name_space1, e]),
      (controller.respond_to_destroy? ? link_to("削除", [:name_space1, e], method: :delete) : nil),
    ].compact.join(" ").html_safe,
  }
}.to_html
