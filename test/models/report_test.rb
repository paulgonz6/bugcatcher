require 'test_helper'

class ReportTest < ActiveSupport::TestCase

  def test_accepted_report_scope
    assert_equal(Report.accepted.count, 0)

    report = reports(:first_report)
    report.accepted_by_project_owner = true
    report.save!

    assert_equal(Report.accepted.count, 1)
  end

end
