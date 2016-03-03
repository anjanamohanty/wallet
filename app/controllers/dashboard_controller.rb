class DashboardController < ApplicationController
  def index
    @statistics = Transaction.statistics
  end
end
