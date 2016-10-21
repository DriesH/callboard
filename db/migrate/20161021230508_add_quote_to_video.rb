class AddQuoteToVideo < ActiveRecord::Migration[5.0]
  def change
    add_reference :videos, :quote, foreign_key: true
  end
end
