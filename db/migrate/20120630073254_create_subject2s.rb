class CreateSubject2s < ActiveRecord::Migration
  def self.up
    create_table :subject2s do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :subject2s
  end
end
