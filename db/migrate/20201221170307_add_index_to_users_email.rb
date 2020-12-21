class AddIndexToUsersEmail < ActiveRecord::Migration[5.1]
  def change
     add_index :users, :email, unique: true
     #ユーザーテーブルのemailカラムに関して、一意性の属性を追加するために作成
  end
end
