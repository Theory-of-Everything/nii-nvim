# Contributing to nii-nvim

Decided to help and contribute to [nii-nvim](https://github.com/Theory-of-Everything/nii-nvim)? Great! I am always looking for contributors!

Please take a moment to review this document in order to make proper contributions and not waste time of the maintainer.

Following these guidelines helps to communicate that you respect the time spent contributing to this Project.
In return, I will reciprocate that respect in addressing contributions.

## Issues/Bug Reports

Please use the [issues](https://github.com/Theory-of-Everything/nii-nvim/issues) page on the GitHub repository to report bugs/issues.
Keep all issue reports on-topic and relevant to the project.

<a name="code-conventions"></a>

## Code Conventions

Code contributed to nii-nvim must follow these basic conventions:

- All module definitions should be defined as `M` in the respective containing file
  Example:
  (correct)

```lua
local M = {}

M.myvar = 'hello world'

M.myfunc = function()
   print('hello world')
end

return M
```

(incorrect)

```lua
local module = {}

module.myvar = 'hello world'

module.myfunc = function()
   print('hello world')
end

return module
```

- All strings are encapsulated in single quotes `'`, nested quotes wil alternate between double quotes `"` and single quotes `'`
  Example:

```lua
myvar0 = 'lua'     -- correct!

myvar1 = "fennel"  -- incorrect!
```

- All files must have a brief description of their functionality and(or) layout/usage in multiline comments `--[[`/`--]]`. The contents of this comment should be tabbed once.
  Example:

```lua
--[[

   This is the file description with proper tabbing,
   contained in a multiline comment.
   Don't have descriptions in multiple single line comments
   There shold also be 1 line of space between the comment and the text body

this is improper tabbing with imporper spacing in relation to the end comment!
--]]
```

- Tab style should be 4 spaces.
- All variables should be cast at the top of the file (unless local to a block)
- All code should be well commented, with proper semantics as shown below

```lua
-- varbles can be commented like this regardless of size
local mytable = {
   'item1',
   'item2',
   'item3',
}

local myvarinline = nil -- small one-liners can be commented inline too (does not apply for blocks)


cmd('syntax enable') 	-- Try to keep one-liners
o.rnu = true         	-- tabbed the same distance
o.nu = true         	-- away from code
o.mouse = 'a'       	-- this makes comments and code
o.cursorline = true 	-- much more readable
o.modeline = true   	-- and keeps everything organized
o.modelines = 5			-- for future me (or you)

-- this is how to comment on block of code
function myfunc()          -- you can't comment a block like this
   print('myfunc() ran!')

   -- You CAN however comment on lines
   -- like this, just make sure there
   -- is a space above the comment block
   print('This is more cool stuff')
end
```

- You can format all code automatically with [stylua](https://github.com/johnnymorganz/stylua) this project's stylua configuration is in the `.stylua.toml` file
- (you may (or may not) need to rename the stylua config file to `stylua.toml` without the dot)
- stylua tends to mess up on-liner comments. It tends to keep them right next to the code, and not tabbed. (be careful of this please)

<a name="code-conventions"></a>

## Commit Messages

If you are into reading long articles, [this](https://medium.com/@nmpegetis/git-commit-message-conventions-841d6998fc4f) 
article is mostly what this project follows in terms of commit messages (although the whole history isn't like this)

Here is the TD;DR:
- Keep all commit messages in the imperative mood.
- All commit messages must be short and concise.
- All commits are preferred to be smaller than larger (atom commits).
- all messages should follow this format: `<type>(<scope>): <description>`
    - Where `<type>:` is the kid of change (i.e `fix:`, `patch:`, `chore:`, `docs:`) and is followed by the (optional) scope and (required) colon.
    - Where `<scope>` is extra information about the change.
    - Where `<description>` is a VERY SHORT description of the fix.
- The commit message body (which is optional, but necessary for larger changes) should have a short description of the reasoning of the changes, and any potentially important details that the commit relates to.
- The footer must reference any relevant issues/prs and indicate any issues/prs that that commit closes.
- A boilerplate snippet:
```
[Issue-Code] <type>(<scope>): <description>
<BLANK-LINE>
<body>
<BLANK-LINE>
<footer>
```
Example Commit Messages:
```
[Issue-Code-26,Issue-Code-32] feat(LoginView): add terminal name in login auth request

Needed for Audit find.

This closes Issue-Code-26 and refs Issue-Code-32
```

(you can also use shorthand for issues)
```
[47,10] bug(memory leak): fix memory leak occuring in core module

Fixed memory leak in core module.

Closes 47,10
```

<a name="pull-requests"></a>

## Pull requests

Good pull requests - patches, improvements, new features - are a fantastic
help. They should remain focused in scope and avoid containing unrelated
commits.

**Please ask first** before embarking on any significant pull request (e.g.
implementing features, refactoring code),
otherwise you risk spending a lot of time working on something that I may not want merged into the main project.

Please follow the Code Conventions and Commit Messages Guidelines when making contributions (explained above).

1. [Fork](https://help.github.com/articles/fork-a-repo/) the project, clone your
   fork, and configure the remotes:

   ```bash
   # Clone your fork of the repo into the current directory
   git clone https://github.com/<your-username>/nii-nvim.git
   # Navigate to the newly cloned directory
   cd nii-nvim
   # Assign the original repo to a remote called "origin"
   git remote add origin https://github.com/theory-of-everything/nii-nvim.git
   ```

2. If you cloned a while ago, get the latest changes from upstream:

   ```bash
   git checkout master
   git pull origin master
   ```

3. Create a new branch (off the master branch) to
   contain your feature, change, or fix:

   ```bash
   git checkout -b <branch-name>
   ```

4. Commit your changes in logical chunks. Please keep your commit messages short but concise.

5. Push your topic branch up to your fork:

   ```bash
   git push origin <topic-branch-name>
   ```

6. [Open a Pull Request](https://help.github.com/articles/using-pull-requests/)
   with a clear title and description. Make sure to follow the commit messages guidelines in case I dont squash.

**IMPORTANT**: By submitting a pull request, you agree to allow me to license your work under the terms of the [GPLv3 LICENCE](LICENSE).
