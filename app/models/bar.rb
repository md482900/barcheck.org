class Bar < ActiveRecord::Base
  attr_accessible :address, :description, :name, :picture
  validate :name, :picture, :description, :address, presence: true
  validate :address, 
  		   :presence =>{:message => "Die Adresse bitte von Google Maps kopieren"},
  			format: %r|^http(s?)://maps.google./|
  has_attached_file :picture

  make_flaggable :like
  

  validates :name, 
  			:presence => { :message => ": Bitte ein Name eingeben" },	
  			:uniqueness => { :message => ": Der Name ist bereits vorhanden" },
   			:length => { :maximum => 20 , :message => ':Bitte nicht mehr als 20 Zeichen eingeben'}

  validates :picture,
  			:presence => { :message => ": Bitte ein Bild hochladen" }

  validates :description,
			:presence => { :message => ": Bitte eine Kurzbeschreibung hinzufuegen" },
			:length => { :maximum => 120, :message => ': Bitte maximal 120 Zeichen eingeben' }


  has_many :comments, :dependent => :destroy
  has_many :rate

end
