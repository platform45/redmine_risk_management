module RisksHelper

  def options_with_lower_and_higher
    [
      ['1 (lower)', 1],
      ['2', 2],
      ['3', 3],
      ['4', 4],
      ['5 (higher)', 4]
    ]
  end

  def risk_table_columns
    %w{ ID Title Description Probability Impact Criticality Rationale }
  end

  def risk_linkable_columns
    %w{ ID Title }
  end

end
