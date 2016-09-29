class Utente < ApplicationRecord
	self.primary_key= :username

	has_many :annuncios, dependent: :destroy

	validates :username, length: { maximum: 10,
    too_long: "%{count} caratteri al massimo" }
    validates_presence_of :username, :nome,:cognome,:email,:password,:password_confirmation, :message => "Campo obbligatorio" 

    validates :password,length: { minimum: 6,
    too_short: "minimo %{count} caratteri" }, confirmation: true


    has_secure_password
end
