class Estudiante < ApplicationRecord
  belongs_to :comuna
  belongs_to :curso

  def self.search(region, codigo)
    query = Estudiante.all
    if region.present?
      query = query.joins(:comuna).where(comuna: {region_id: region})
    end 
    if codigo.present?
      query = query.where(curso_id: codigo)
    end    
    query
  end  
end
