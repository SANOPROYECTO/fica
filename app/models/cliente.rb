class Cliente < ActiveRecord::Base
		def self.search(search, page)
	 where(['upper(fecha) like?', "%#{search}%".upcase]).paginate(page: page, per_page: 6).order("fecha")
    end
    # Validar que los atributos sean obligatorios
	validates :nombre, :presence => true
	validates :direccion, :presence => true
	validates :hora, :presence => true
	validates :valor, :presence => true
	# valida la longitud de un campo, tanto la longitud minima como la maxima
	validates :nombre, length: { minimum: 5, maximum: 50 }
	# Valida si un atributo es numerico
	validates :valor, numericality: true
end