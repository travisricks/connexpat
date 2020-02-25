class TagsController < ApplicationController
    include TagsHelper

    before_action :require_login, only: [:destroy]

    def show
        @tag = Tag.find(params[:id])
    end

    def index
        @tags = Tag.order('name ASC')
    end

    def destroy
        @tag = Tag.find(params[:id]).destroy

        flash.notice = "'#{@tag.name}' Tag deleted :-( "

        redirect_to tags_path
    end
end
