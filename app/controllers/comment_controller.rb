class CommentController < ApplicationController

    def index
        @comments = Comment.order(created_at: :desc)
      end
    
      def show
        set_comment
      end
    
      def new
        @comment = Comment.new
      end
    
      def edit
        set_comment
      end
    
      def create
        @comment = Comment.new(comment_params)
    
        respond_to do |format|
          if @comment.save
            format.json { render :show, status: :created, location: @comment}
          else
            format.html { render :new }
            format.json { render json: @comment.errors, status: :unprocessable_entity }
          end
        end
      end
      private
        def set_comment
          @comment = Comment.find(params[:id])
        end
    
    
        def comment_params
          params.require(:comment).permit(:comment)
        end
    end
    
  