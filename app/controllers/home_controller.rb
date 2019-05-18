class HomeController < ApplicationController
  def index
  end

  def show
  end

  def start_graph
  	graph = Graph.create(:user => current_user, :start => params[:start], :end => params[:end], :incr => params[:incr])	
  	i = graph[:start]
  	while i <= graph[:end]
  		datapoint = Datapoint.create(:graph => graph, :value => i, :server_dispatch_time => Time.now)
  		ActionCable.server.broadcast "graph" , {:value => datapoint[:value], :server_dispatch_time => datapoint[:server_dispatch_time]}
  		i += graph[:incr]
  	end
  end

  def edit
  end
end
