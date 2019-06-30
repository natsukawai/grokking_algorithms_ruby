def search(graph, name)
  search_queue = []
  search_queue += graph[name]
  searched = []

  until search_queue.empty?
    person = search_queue.shift
    unless searched.include?(person)
      if person_is_seller?(person)
          puts "#{person} is a mango seller!"
          return true
      else
          search_queue += graph[person]
      end
    end
  end

  false
end

def person_is_seller?(name)
  name[-1] == 'm'
end
