class User < ActiveRecord::Base
  has_many :managers, class_name: "User", foreign_key: "company_id"
  has_many :user_permissions
  has_many :permissions, through: :user_permissions
  has_many :sites, dependent: :destroy
  has_many :site_tabs, dependent: :destroy
end
