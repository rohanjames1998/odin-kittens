class KittensController < ApplicationController

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)

    if @kitten.save
      redirect_to root_url
    else
      render :new, status: :unprocessable_entity
    end
  end

  
end
