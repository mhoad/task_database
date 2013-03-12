class Task < ActiveRecord::Base
  attr_accessible :doability_score, :free, :impact_score, :name, :paid, :reqruires_developer, :requires_client, :risk_score, :time_taken, :total_score, :category_id
  belongs_to :category
  before_save :calculate_total_score
  validates :impact_score, :name, :risk_score, :time_taken, :presence => true

  private
    def calculate_total_score
      self.total_score = ((self.impact_score.to_f * self.doability_score.to_f) / self.risk_score.to_f).round(2)
    end
end
