class Project
        attr_reader :title
    @@all =[]
    def initialize(title)
        @title = title
        save
    end
    
    def save
        @@all <<self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def pairs_in_which_backed
        return ProjectBacker.all.select { |pair| pair.project == self}
    end

    def backers
        self.pairs_in_which_backed.map { |pair| pair.backer}
    end
end