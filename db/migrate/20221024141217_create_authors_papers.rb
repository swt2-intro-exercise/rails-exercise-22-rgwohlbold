class CreateAuthorsPapers < ActiveRecord::Migration[7.0]
  def change
    create_table :authors_papers do |t|
      t.integer :author_id
      t.integer :paper_id

      t.timestamps
    end
  end
end
