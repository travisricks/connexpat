module TagsHelper
    def tag_params
        params.require(:tag).permit(:id)
    end
end
