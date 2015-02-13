class Project < ActiveRecord::Base
  belongs_to :category
  belongs_to :owner
end