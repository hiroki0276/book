class MangasController < ApplicationController
  before_action :authenticate_user!

  def index
    @mangas = Manga.includes(:user)
  end

  def new
    @manga = Manga.new
  end

  def create
    @manga = Manga.create(manga_params)
  end

  def edit
    @manga = Manga.find(params[:id])
  end

  def update
    @manga = Manga.find(params[:id])
    if @manga.update(manga_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @manga = Manga.find(params[:id])
    @manga.destroy
  end

  def search
    @mangas = Manga.search(params[:keyword])
  end

  private
  def manga_params
    params.require(:manga).permit(:title, :author, :volume, :memo, :user_id).merge(user_id: current_user.id)
  end


end
