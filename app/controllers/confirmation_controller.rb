class ConfirmationController < ApplicationController
  def wheel
  @options = Option.all
  end
end
