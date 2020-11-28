class ProjectBacker
    attr_reader :project, :backer
    # ProjectBacker @@all is a class variable set to an empty array
    
    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        save
    end
    
    def save
        @@all << self
    end

    def self.all 
        #is a class method that returns the @@all class variable
        return @@all
    end

    # ProjectBacker ::new takes in a project and a backer on initialization, accessible through an attribute reader
    # ProjectBacker ::new stores the new instance of ProjectBacker in the @@all class variable

end