class Project
    attr_reader :title
# Project - ::new
#   takes a title on initialization, accessible through an attribute reader (FAILED )
    def initialize(title)
        @title = title
    end
# Project - #add_backer
#   is an instance method that accepts a backer as an argument and creates a ProjectBacker, associating the backer with this project (FAILED - 8)
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
# Project - backers
#   returns an array of backers associated with this Project instance (FAILED - 10)
    def backers
        all_projects = ProjectBacker.all.select do |every| 
            every.project == self 
        end
        all_projects.map do |each|
            each.backer
        end
    end
end