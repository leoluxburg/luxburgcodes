class AddBuiltOnToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :built_on, :string
  end
end
