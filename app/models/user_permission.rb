class UserPermission < ActiveRecord::Base
  belongs_to :user
  belongs_to :permission
  belongs_to :site, required: false
  belongs_to :site_tab, required: false
end
