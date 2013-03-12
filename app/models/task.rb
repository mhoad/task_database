class Task < ActiveRecord::Base
  attr_accessible :doability_score, :free, :impact_score, :name, :paid, :reqruires_developer, :requires_client, :risk_score, :time_taken, :total_score
  belongs_to :category
end
