class Author < ApplicationRecord
has_many :gossips #author peut creer plusieurs gossips
validates :first_name, presence: true # validates: permet de verifier si le frst_name,last_name et email sont présent pour effectuer un gossip
validates :last_name, presence: true
validates :email, presence: true, uniqueness: true
validates :password, presence: true, length: { minimum: 6 }
has_secure_password

end  