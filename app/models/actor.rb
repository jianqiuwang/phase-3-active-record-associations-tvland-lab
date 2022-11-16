class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    # puts self.shows.map do |show|
    #     "#{show.characters.where(actor: self).map do |character|
    #     character.name
    # end} - #{show.name}"
    # end

    self.characters.map do |character|
        "#{character.name} - #{character.show.name}"
    end
  end
end