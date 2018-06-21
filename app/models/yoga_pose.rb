class YogaPose < ApplicationRecord
  include Filterable
  belongs_to :yoga_category

  scope :yoga_category_id, -> (yc_id) { where yoga_category_id: yc_id }
  scope :yoga_category_name, -> (yc_name) { where('lower(yoga_categories.name) like ?', "%#{yc_name.downcase}%") }
  scope :yoga_category_short_name, -> (yc_short_name) { where('lower(yoga_categories.short_name) like ?', "%#{yc_short_name.downcase}%") }
  scope :sanskrit_name, -> (sanskrit_name) { where('lower(sanskrit_name) like ?', "%#{sanskrit_name.downcase}%") }
  scope :english_name, -> (english_name) { where('lower(english_name) like ?', "%#{english_name.downcase}%") }

end
