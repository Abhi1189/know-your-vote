class TopicsController < ApplicationController

  def show
    @topic = Topic.find(params[:id])
    render json: @topic
  end

  def index
    @topics = Topic.all
    render json: @topics
  end

  def create
    @topics = Topic.new(params[:topic])

    @topic.save
  end

end
