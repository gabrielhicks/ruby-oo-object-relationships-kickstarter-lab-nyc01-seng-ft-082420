class Backer
    attr_reader :name
# Backer - ::new
#   takes a name on initialization, accessible through an attribute reader (FAILED - 1)
    def initialize(name)
        @name = name
    end
# Backer - #back_project
#   is an instance method that accepts a project as an argument and creates a ProjectBacker, associating the project with this backer (FAILED - 7)
    def back_project(project)
        ProjectBacker.new(project, self)
    end
# Backer - backed_projects
#   returns an array of projects associated with this Backer instance (FAILED - 9)
    def backed_projects
        all_backers = ProjectBacker.all.select { |every| every.backer == self }
        all_backers.map { |each| each.project }
    end
end