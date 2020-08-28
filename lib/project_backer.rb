class ProjectBacker
    attr_reader :backer, :project
# ProjectBacker
#   @@all
#     is a class variable set to an empty array (FAILED - 3)
    @@all = []

#   .all
#     is a class method that returns the @@all class variable (FAILED - 4)
    def self.all
        @@all
    end

#   ::new
#     takes in a project and a backer on initialization, accessible through an attribute reader (FAILED - 5)
#     stores the new instance of ProjectBacker in the @@all class variable (FAILED - 6)
    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end
end