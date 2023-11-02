class Gossip < ApplicationRecord   
belongs_to :author# permet d'afficher  le nom de l'auteur  dans le gossip avec la présence  des tittres et de leurs contenus  pour un seul auteurs

validates :title, presence: true
validates :content, presence: true
end
