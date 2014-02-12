class ChangeStudentsGithubLinksToGithubLink < ActiveRecord::Migration
  def up
    rename_column :students, :github_links, :github_link
  end

  def down
    rename_column :students, :github_link, :github_links
  end
end
