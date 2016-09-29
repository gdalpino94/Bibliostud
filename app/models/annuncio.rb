class Annuncio < ApplicationRecord
	belongs_to :user, optional: true
	default_scope -> { order(created_at: :desc) }
   	validates :utente_id, presence: true
   	validates :descrizione, presence: true, length: { maximum: 300 }
   	validates :visibilita, numericality: true, inclusion: {in: 0..10 }

end