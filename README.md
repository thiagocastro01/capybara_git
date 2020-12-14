## What is?
Automation project to run login and search for repositories here on Github, using BDD with Cucumber and Capybara.
Made in conjunction with a Ninja Quality Control Week

## Steps to reproduction
### Step 1
Clone the repository for your machine


### Step 2
Install the dependencies

```bash
bundle install
```


### Passo 3
Make the file features/support/helper.rb and <b>modify sensitive variables <your_username> <your_password> <your_existing_repository_on_search> <your_non-existing_repository_on_search></b>

```bash
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
```


### Step 4
At the command line, run the cucumber with the desired flags. The report is generated automatically on local folder/reports/.
If the test fails, a screenshot is catch and save on /screenshots/
<i>You can find the flags inside features at folder features/ (".features" files)</i>

For exemple, to run the tag @smoke on terminal:

```bash
cucumber -t @smoke
```