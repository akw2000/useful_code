# // run from the directory 
git init 
# // which branch 
git status 
git add . 
git commit -m "add" 
git push origin main 
# // personal access token 

# // public repo clone just allow hidden files and delete .git file init a repo through vscode

# reverting to a specific commit 
git log --oneline 
# // grab the address + don’t forget the dot 
git checkout be9055b . git add -A 
git commit -m "custom message" g
it push

# // resolve conflicts
# // go to main and pull
git rebase main
git rebase --continue
git push --force

# //always create a branch and work and commit for pull request

// remove specific commit
git rebase -i bl8976t

# When you execute the command an editor will open with a text similar to this:
# Just go on and delete the lines you don\'t want, like this:
# Save the file and close the editor.
git push -f
