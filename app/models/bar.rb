class Bar < ActiveRecord::Base
  attr_accessible :address, :description, :name, :bar_images_attributes
  validate :name, :description, :address, presence: true
  validate :address, 
  		   :presence =>{:message => "Die Adresse bitte von Google Maps kopieren"},
  			format: %r|^http(s?)://maps.google./|

  make_flaggable :like
  
  letsrate_rateable "ambience", "service", "price"
  

  validates :name, 
  			:presence => { :message => " Bitte ein Name eingeben" },	
  			:uniqueness => { :message => "Der Name ist bereits vorhanden" },
   			:length => { :maximum => 20 , :message => 'Bitte nicht mehr als 20 Zeichen eingeben'}

  validates :description,
			:presence => { :message => " Bitte eine Kurzbeschreibung hinzufuegen" },
			:length => { :maximum => 120, :message => 'Bitte maximal 120 Zeichen eingeben' }


  has_many :comments, :dependent => :destroy
  has_many :rate
  has_many :bar_images, :dependent => :destroy
  accepts_nested_attributes_for :bar_images, reject_if: :all_blank

end
