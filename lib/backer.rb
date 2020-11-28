class Backer
    # Backer - new takes a name on initialization, accessible through an attribute reader
    attr_reader :name
    
    @@all =[]

    def initialize(name)
        @name = name
        save
    end
    
    def save
        @@all <<self
    end

    def back_project(a_project)
        #is an instance method that accepts a project as an argument and creates a ProjectBacker, associating the project with this backer
        ProjectBacker.new(a_project, self)
    end
    
    def backed_projects
        #returns an array of projects associated with this Backer instance
        return self.pairs_backed.map { |backed_pair| backed_pair.project}
    end

    def pairs_backed
        ProjectBacker.all.select { |pair| pair.backer == self}
    end

end