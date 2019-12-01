# frozen_string_literal: true

class TeddybearsController < ApplicationController
  def index
    @teddybears = TeddyBear.all
    @teddybears = TeddyBear.order('name').page(params[:page]).per(10)
  end

  def show
    @teddybear = TeddyBear.find(params[:id])
  end
end
