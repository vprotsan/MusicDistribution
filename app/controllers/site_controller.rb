class SiteController < ApplicationController
  # def search
    # @results = []
    # [Artist, Album, Label].each do |model|
    #   @results += model.where("name iLIKE ?", "%#{params[:term]}%")
    # end
    # @results = []
    # [Artist, Album, Label].each do |model|
    #   @results += model.search(params[:term])
    # end

    # @results = [Artist, Album, Label].map do |model|
    #   model.where("name LIKE ?", "%#{params[:term]}%")
    # end.flatten
  # end

  def search
    term = params[:term]
    return if term.blank? # matches nil and ""

    @results = []
    [Artist, Album, Label].each do |model|
      @results += model.search term
    end
    p "<>"*30
    p @results
  end
end
