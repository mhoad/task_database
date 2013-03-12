class Task < ActiveRecord::Base
  attr_accessible :doability_score, :free, :impact_score, :name, :paid, :reqruires_developer, :requires_client, :risk_score, :estimated_time, :total_score, :category_id
  belongs_to :category
  before_save :calculate_total_score

  validates :category_id,     :presence => true
  validates :name,            :presence => true
  validates :estimated_time,  :presence => true
  validates :doability_score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
  validates :impact_score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
  validates :risk_score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
  validates :impact_score, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }

  private
    def calculate_total_score
      if self.risk_score == 0
        self.total_score = ((self.impact_score.to_f * self.doability_score.to_f)).round(2)
      else
        self.total_score = ((self.impact_score.to_f * self.doability_score.to_f) / self.risk_score.to_f).round(2)
      end
    end
end
