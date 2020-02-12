class LinksController < ApplicationController

  def show
    @link = Link.where(slug: params[:slug]).first
    render 'errors/404', status: 404 if @link.nil?

    @link.update_attribute(:clicks, @link.clicks + 1)
    redirect_to @link.url
  end
end
