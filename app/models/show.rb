class Show < ActiveRecord::Base

  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters
  
  
    def actors_list
      actors = []
      self.actors.collect {|t| actors << t.full_name}
      actors
    end

end