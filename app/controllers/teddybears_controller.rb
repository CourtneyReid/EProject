# frozen_string_literal: true

class TeddybearsController < ApplicationController
  def index
    @teddybears = TeddyBear.all
  end

  def show
    @teddybear = TeddyBear.find(params[:id])
  end
end
