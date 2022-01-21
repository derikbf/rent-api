class Rating < ApplicationRecord
  acts_as_paranoid

  belongs_to :booking

  enum star: ["1 Estrela", "2 Estrelas", "3 Estrelas", "4 Estrelas", "5 Estrelas"]
end
