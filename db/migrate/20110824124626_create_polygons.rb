class CreatePolygons < ActiveRecord::Migration
  def self.up
    create_table :polygons do |t|
      t.string :name
      t.string :stroke_color, :null => false, :default => "#FF0000"
      t.float :stroke_opacity, :null => false, :default => 0.8
      t.integer :stroke_weight, :null => false, :default => 2
      t.string :fill_color, :null => false, :default => "#FF0000"
      t.float :fill_opacity, :null => false, :default => 0.35

      t.timestamps
    end
  end

  def self.down
    drop_table :polygons
  end
end
