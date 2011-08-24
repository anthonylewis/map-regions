class Polygon < ActiveRecord::Base
  has_many :points, :dependent => :destroy

  validates_format_of :stroke_color, :with => /^#[0-9a-fA-F]{6}$/
  validates_format_of :fill_color, :with => /^#[0-9a-fA-F]{6}$/

  accepts_nested_attributes_for :points, :allow_destroy => true,
    :reject_if => lambda { |a| a[:lat].blank? || a[:lng].blank? }
end
