class Report
  def generate_report!
    retrieve_financial_data
    format_report
    send_to_stakeholders
  end

  private

  def retrieve_financial_data
    # Grab relevant data from our database
  end

  def format_report
    # Take our financial data and arrange it in HTML format
  end

  def send_to_stakeholders
    # Email this report to interested parties
  end
end
