class Api::EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :update, :destroy]

  def index
    render json: Entry.all
  end

  def create
    entry = Entry.new(entry_params)

    if entry.save
      render json: entry
    else
      render json: { message: entry.errors }, status: 400
    end
  end

  def show
    render json: @entry
  end

  def update
    if @entry.update(entry_params)
      render json: @entry
    else
      render json: { message: @entry.errors }, status: 400
    end
  end

  def destroy
    if @entry.destroy
      render status: 204
    else
      render json: { message: "Unable to delete this entry." }, status: 400
    end
  end

  private

    def set_entry
      @entry = Entry.find_by(id: params[:id])
    end

    def entry_params
      params.require(:entry).permit(:cycle_number, :cycle_day, :datetime, :notes)
    end
end
