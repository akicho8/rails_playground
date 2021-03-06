# -*- coding: utf-8 -*-
# == Schema Information ==
#
# AJAX例(partial更新。スライダー)テーブル (type029_articles as Type029Article)
#
# |--------------+--------------+----------+-------------+------+-------|
# | カラム名     | 意味         | タイプ   | 属性        | 参照 | INDEX |
# |--------------+--------------+----------+-------------+------+-------|
# | id           | ID           | integer  | NOT NULL PK |      |       |
# | show_counter | Show counter | integer  |             |      |       |
# | created_at   | 作成日時     | datetime | NOT NULL    |      |       |
# | updated_at   | 更新日時     | datetime | NOT NULL    |      |       |
# |--------------+--------------+----------+-------------+------+-------|

module NameSpace1
  class Type029ArticlesController < ApplicationController
    include ModulableCrud::All

    # remote: true で来たときビューに show.js.coffee があれば自動的に実行される
    def show
      current_record.update!(show_counter: current_record.show_counter.to_i + 1)
    end

    # ajax_params_inspector.js.coffee があるので自動的に反応
    # def ajax_params_inspector
    # end
  end
end
