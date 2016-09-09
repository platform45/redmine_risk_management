class Risk < ActiveRecord::Base
  unloadable

  include Redmine::SafeAttributes

  PER_PAGE   = 30
  RATIONALES = ['Monitor', 'Plan Mitigation', 'Mitigate'].freeze

  belongs_to :project
  belongs_to :risk_status
  belongs_to :user
  belongs_to :owner, class_name: User, foreign_key: 'owner_id'
  has_many :issues, dependent: :destroy

  validates_presence_of :title, :description
  validates_numericality_of :criticality, allow_nil: true
  validates_numericality_of :probability, :impact, greater_than: 0, less_than: 6
  validates_inclusion_of :rationale, in: RATIONALES, allow_nil: true

  before_save :set_criticality_rationale

  safe_attributes 'title',
                  'description',
                  'controls',
                  'income_statement',
                  'balance_sheet',
                  'owner_id',
                  'probability',
                  'impact',
                  'risk_status_id'

  private

  def set_criticality_rationale
    self.criticality = probability * impact
    self.rationale =
      case criticality
      when 1..4 then RATIONALES.first
      when 5..8 then RATIONALES.second
      else RATIONALES.third
      end
  end
end
