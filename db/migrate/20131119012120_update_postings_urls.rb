class UpdatePostingsUrls < ActiveRecord::Migration
  def change
    add_column :postings, :slug, :string, null:  false
  end
end
