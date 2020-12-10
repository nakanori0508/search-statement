class CreateLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :languages do |t|
      t.string   :gem_name,       null: false
      t.text     :about_gem,      null: false
      t.text     :syntax_name,    null: false
      t.integer  :version,        null: false
      t.text     :how_to_use,     null: false
      t.text     :description    
      t.string   :reference_url  
      # t.integer      :language_id,     
      t.timestamps
    end
  end
end
