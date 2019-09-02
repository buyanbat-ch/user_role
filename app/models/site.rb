class Site < ActiveRecord::Base
  belongs_to :user
  has_many :site_tabs, dependent: :destroy
end
