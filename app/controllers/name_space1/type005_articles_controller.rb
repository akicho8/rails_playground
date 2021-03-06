# -*- coding: utf-8 -*-
# == Schema Information ==
#
# 複数ファイルアップロード(確認付き)テーブル (type005_articles as Type005Article)
#
# |------------+----------+----------+-------------+------+-------|
# | カラム名   | 意味     | タイプ   | 属性        | 参照 | INDEX |
# |------------+----------+----------+-------------+------+-------|
# | id         | ID       | integer  | NOT NULL PK |      |       |
# | title      | タイトル | string   |             |      |       |
# | created_at | 作成日時 | datetime | NOT NULL    |      |       |
# | updated_at | 更新日時 | datetime | NOT NULL    |      |       |
# |------------+----------+----------+-------------+------+-------|

module NameSpace1
  class Type005ArticlesController < ApplicationController
    include ModulableCrud::AllWithConfirm
    # include ModulableCrud::All

    def page_header_show_title
      current_record.title
    end

    private

    def raw_current_record
      super.tap do |e|
        e.title ||= "アルバム#{current_model.maximum(:id).to_i.next}"
      end
    end

    # 更新後の移動先
    def redirect_to_where
      [:edit, *ns_prefix, current_record]
    end

    concerning :SortableMethods do
      def save_and_redirect
        if ids = params[:reordered_ids]
          ids.each do |id|
            current_record.type005_files.find(id).move_to_bottom
          end
          if request.format.json?
            render json: {message: "並び換えました"}
            return
          end
        end

        super
      end
    end

    concerning :ConfirmMethods do
      # 「確認画面」から「更新」のとき復帰するためセッションに保存しておく情報
      def current_session_attributes
        v = super.merge(type005_files_attributes: current_record.temp_type005_files.collect {|e| {media_file_cache: e.media_file_cache} })
        v = v.except(:up_files)
        v
      end
    end

    # 削除関連
    concerning :DeleteMethods do
      def current_record_save
        # 仮画像の個別削除
        current_record.temp_type005_files.find_all { |e|
          current_cancel_caches.include?(e.media_file_cache)
        }.each(&:destroy!)

        if super
          # 既存画像の個別削除
          current_record.type005_files.find_all { |e| current_delete_ids.include?(e.id) }.each(&:destroy!)
          true
        end
      end

      # 削除したい既存画像レコードのIds
      def current_delete_ids
        params[:delete_ids].to_s.scan(/\d+/).collect(&:to_i)
      end

      # いまUPした中間画像を削除したいキーのリスト
      def current_cancel_caches
        Array.wrap(params[:cancel_caches])
      end
    end
  end
end
