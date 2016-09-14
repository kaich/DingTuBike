class Journey < ActiveRecord::Base
  has_many :bikes, as: :bikeable
end
