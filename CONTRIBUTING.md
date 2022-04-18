# Contribution Quick Start

Decided to help and contribute to [nii-nvim](https://sr.ht/~theorytoe/nii-nvim/)? Great! I am always looking for contributors!

Please take a moment to review this document in order to make proper contributions and not waste time of the maintainer.

Following these guidelines helps to communicate that you respect the time spent contributing to this Project.
In return, I will reciprocate that respect in addressing contributions.

**I don't check pull requests as frequently as I do patches,
sending a patch will decrease the time it take me to review code
changes.**

## Issues/Bug Reports
If you encounter any bugs, please submit a ticket to the [issue
tracker](https://todo.sr.ht/~theorytoe/nii-nvim-bugs) with a "bug" label. If you
encounter dependency/update issues file a ticket with the "bump" tag. Keep all
issue reports on-topic and relevant to the project.

## Submitting a Patch:

Anyone can contribute to nii-nvim. First you need to clone the repository:

    git clone https://git.sr.ht/~theorytoe/nii-nvim
    cd nii-nvim

Then checkout a local branch before making changes:

	git switch -c <branch-name>

When making changes, ensure the following:

- Ensure that your code is properly formatted properly with stylua.
- Ensure that everything works as expected.
- Do not forget to update the docs.

Once you are happy with your work, you can create a commit (or several
commits). Follow these general rules:

- Limit the first line (title) of the commit message to 60 characters.
- Use a short prefix for the commit title for readability with `git log --oneline`.
- Use the body of the commit message to actually explain what your patch does
  and why it is useful.
- Address only one issue/topic per commit.
- If you are fixing a ticket/issue, use appropriate
  [commit trailers](https://man.sr.ht/git.sr.ht/#referencing-tickets-in-git-commit-messages).
- If you are fixing a regression introduced by another commit, add a `fix:`
  trailer with the commit id and its title.

There is a great reference for commit messages in the
[Linux kernel documentation](https://www.kernel.org/doc/html/latest/process/submitting-patches.html#describe-your-changes).

Before sending the patch, you should configure your local clone with sane
defaults:

    git config format.subjectPrefix "[PATCH] nii-nvim"
    git config sendemail.to "~theorytoe/nii-nvim-devel@lists.sr.ht"

And send the patch to the mailing list:

    git send-email --annotate -1

Before your patch can be applied, it needs to be reviewed and approved. Approval
will be indicated by a reply to your patch with a Reviewed-by trailer.

You can follow the review process via email and on the
[web ui](https://lists.sr.ht/~theorytoe/nii-nvim-devel/patches).

Wait for feedback. Address comments and amend changes to your original commit.
Then you should send a v2 (and maybe a v3, v4, etc.):

    git send-email --annotate -v2 -1

Once your patch has been reviewed and approved it will be applied and pushed.


If you want to submit a patch to the project, please follow the current steps (there are 2 methods):

### Code Conventions

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

- All strings are encapsulated in single quotes `'`, nested quotes wil alternate
  between double quotes `"` and single quotes `'` Example:

```lua
myvar0 = 'lua'     -- correct!

myvar1 = "fennel"  -- incorrect!
```

- All files must have a brief description of their functionality and(or)
  layout/usage in multiline comments `--[[`/`--]]`. The contents of this comment
  should be tabbed once. Example:

```lua
--[[

   This is the file description with proper tabbing,
   contained in a multiline comment.
   Don't have descriptions in multiple single line comments
   There shold also be 1 line of space between the comment and the text body

this is improper tabbing with imporper spacing in relation to the end comment!
--]]
```

- Tab style should be 4 spaces (no expandtab).
- All variables should be cast at the top of the file (unless local to a block)
- All code should be well commented, with proper semantics as shown below.

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

- You can format all code automatically with
  [stylua](https://github.com/johnnymorganz/stylua) this project's stylua
  configuration is in the `.stylua.toml` file
- (you may (or may not) need to rename the stylua config file to `stylua.toml`
  without the dot)
- stylua tends to mess up code-adjacent comments. It tends to keep them right next to
  the code, and not tabbed. (be careful of this please)

<a name="code-conventions"></a>

## Commit Messages

Here is the TD;DR:
- Keep all commit messages in the imperative mood.
- All commit messages must be short and concise.
- All commits are preferred to be smaller than larger (atom commits).
- all messages should follow this format: `<type>: <description>`
	- Where `<type>:` is the kid of change (i.e `fix:`, `patch:`, `chore:`,
`docs:`) and is followed by a (required) colon.
	- Where `<description>` is a VERY SHORT description of the fix.
- The commit message body (which is optional, but necessary for larger changes)
  should have a short description of the reasoning of the changes, and any
  potentially important details that the commit relates to.
- The footer must reference any relevant issues that that commit closes.
- A boilerplate snippet:

```
[Issue-Code (if applicable)] <type>: <description>
<BLANK-LINE>
<body>
<BLANK-LINE>
<footer>
```
Example Commit Messages:
```
[#26, #23] feat: add terminal name in login auth request

Needed for Audit find.

This closes #26 and refs #32
```

## Disclaimer

**IMPORTANT**: By submitting a pull request, you agree to allow me to license your work under the terms of the [GPLv3 LICENCE](LICENSE).
