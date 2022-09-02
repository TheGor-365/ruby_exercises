class ReportTemplate
  def generate_report!
    retrieve_financial_data
    format_report
    send_to_stakeholders
    after_send_hook
  end

  private

  def retrieve_financial_data
    # Grab relevant data from our database
  end

  def format_report
    raise NotImplementedError
  end

  def send_to_stakeholders
    # Email this report to interested parties
  end

  def after_send_hook
  end
end


class ReportHtml < ReportTemplate
  def format_report
    # something
  end
end


class ReportText < ReportTemplate
  def format_report
    # something
  end

  def after_send_hook
    # something
  end
end

def send_report(report_class)
  report_class.generate_report!
end

send_report(ReportText)
