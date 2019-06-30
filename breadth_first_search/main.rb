require './search.rb'

graph = {}
graph["you"] = %w(alice bob claire)
graph["bob"] = %w(anuj peggy)
graph["alice"] = %w(peggy)
graph["claire"] = %w(thom jonny)
graph["anuj"] = []
graph["peggy"] = []
graph["thom"] = []
graph["jonny"] = []

pp search(graph, "you")