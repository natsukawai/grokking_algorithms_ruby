require './find_lowest_cost_node.rb'

graph = {}
graph[:start] = {}
graph[:start][:a] = 6
graph[:start][:b] = 2
graph[:a] = {}
graph[:a][:fin] = 1
graph[:b] = {}
graph[:b][:a] = 3
graph[:b][:fin] = 5
graph[:fin] = {}

costs = {}
costs[:a] = 6
costs[:b] = 2
costs[:fin] = Float::INFINITY

parents = {}
parents[:a] = :start
parents[:b] = :start
parents[:fin] = nil

processed = []

pp costs
pp parents

node = find_lowest_cost_node(costs, processed)

until node.nil?
  cost = costs[node]
  neighbors = graph[node]
  neighbors.keys.each do |neighbor|
    new_cost = cost + neighbors[neighbor]
    if costs[neighbor] > new_cost
      costs[neighbor] = new_cost
      parents[neighbor] = node
    end
  end
  processed.push(node)
  node = find_lowest_cost_node(costs, processed)
end

pp node

pp costs
pp parents