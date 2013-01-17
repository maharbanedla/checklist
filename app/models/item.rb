class Item < ActiveRecord::Base
  belongs_to :checklist
  attr_accessible :content
end
