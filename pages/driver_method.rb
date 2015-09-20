class DriverMethod

  TIMEOUT = 60

  def _click_ locator
    wait(TIMEOUT) {find("#{locator}").click }
  end



end