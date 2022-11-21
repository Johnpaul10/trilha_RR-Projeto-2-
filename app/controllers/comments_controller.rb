class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show edit update destroy ]
  before_action :get_comment

  # GET /comments or /comments.json
  def index
    @filme = @filme.comments
  end

  # GET /comments/1 or /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = @filme.comments.build
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments or /comments.json
  def create
    @comment = @filme.comment.build(filme_params)
    # @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to filme_comments_path(@comment), notice: "Comment was successfully created." }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to filme_comment_path(@comment), notice: "Comment was successfully updated." }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to filme_comments_path(@comment), notice: "Comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def get_comment
    @filme = Filme.find(params[:filme_id])
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = @filme.comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:status, :body, :filme_id)
    end
end
