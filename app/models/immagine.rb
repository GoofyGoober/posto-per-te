class Immagine < ActiveRecord::Base
   has_attached_file :url, :styles => {
    sky: "1140x470#"
  }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :url, :content_type => /\Aimage\/.*\Z/
  belongs_to :page
end
