class ChangeMultipleDatatypesInKittens < ActiveRecord::Migration[7.0]
  def change
    change_column :kittens, :age, 'integer USING CAST(age AS integer)'
    change_column :kittens, :cuteness, 'integer USING CAST(cuteness AS integer)'
    change_column :kittens, :softness, 'integer USING CAST(softness AS integer)'
  end
end
