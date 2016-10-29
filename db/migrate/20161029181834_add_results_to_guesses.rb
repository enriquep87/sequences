class AddResultsToGuesses < ActiveRecord::Migration
  def change
    add_column :guesses, :results, :string
  end
end
