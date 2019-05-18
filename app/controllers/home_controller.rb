class HomeController < ApplicationController
	skip_before_action :verify_authenticity_token
	before_action :require_login
  def index
  end

  def show
  end

  def start_graph
  	graph = Graph.create(:user => current_user, :start => params[:start], :end => params[:end], :incr => params[:incr])	
  	i = graph[:start]
  	while i <= graph[:end]
  		datapoint = Datapoint.create(:graph => graph, :value => i, :server_dispatch_time => Time.now)
  		datapoint_to_send = {:graph_id => graph[:id], :value => datapoint[:value], :server_dispatch_time => datapoint[:server_dispatch_time]}
  		datapoint_to_send[:isNewGraph] = true if i == graph[:start] 
  		ActionCable.server.broadcast "graph" , datapoint_to_send
  		i += graph[:incr]
  	end
  end

  def edit
  end
end
