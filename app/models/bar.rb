class Bar < ActiveRecord::Base

  attr_accessible :address, :description, :name, :photo, :vote, :image_attributes
  validate :name, :photo, :description, :vote, :address, presence: true

  validate :address, 
  		   :presence =>{:message => "Die Adresse bitte von Google Maps kopieren"},
  			 format: %r|^http(s?)://maps.google./|
  has_attached_file :picture

  
  

  validates :name, 
  			:presence => { :message => " Bitte ein Name eingeben" },	
  			:uniqueness => { :message => "Der Name ist bereits vorhanden" },
   			:length => { :maximum => 20 , :message => 'Bitte nicht mehr als 20 Zeichen eingeben'}

  validates :picture,
  			:presence => { :message => " Bitte ein Bild hochladen" }

  validates :description,
			:presence => { :message => " Bitte eine Kurzbeschreibung hinzufuegen" },
			:length => { :maximum => 120, :message => 'Bitte maximal 120 Zeichen eingeben' }

  has_many :image, :dependent => :destroy
  accepts_nested_attributes_for :image, :reject_if => :all_blank
  has_many :comments, :dependent => :destroy
  has_many :rate


  make_flaggable :like
  
  letsrate_rateable "ambience", "service", "price"

end
