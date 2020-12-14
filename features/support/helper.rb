class Login
    def initialize
      @username = "your_username"
      @password = "your_password"
    end
  
    def username
      @username
    end
  
    def password
      @password
    end
  end
  
  class Repositories
    def initialize
      @repo_correct = "your_existing_repository_on_search"
      @repo_incorrect = "your_non-existing_repository_on_search"
    end
  
    def repo_correct
      @repo_correct
    end
  
    def repo_incorrect
      @repo_incorrect
    end
  end