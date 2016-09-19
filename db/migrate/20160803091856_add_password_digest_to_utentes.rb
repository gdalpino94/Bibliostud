class AddPasswordDigestToUtentes < ActiveRecord::Migration[5.0]
  def change
    add_column :utentes, :password_digest, :string
  end
end
