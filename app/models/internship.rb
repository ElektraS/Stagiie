class Internship < ActiveRecord::Base
	belongs_to :user
	belongs_to :company
	include PgSearch
end

def self.search(search)
  search_condition = "%" + search + "%"
  find(:all, :conditions => ['comp LIKE ? OR field LIKE ?', search_condition, search_condition])
end