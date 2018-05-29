class Flow < ApplicationRecord
   

  extend FriendlyId
  friendly_id :name, use: :slugged
  #attr_accessor :slug#

  belongs_to :company
  belongs_to :category



end
