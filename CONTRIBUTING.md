# Contributing to nii-nvim

Decided to help and contribut to [nii-nvim](https://github.com/Theory-of-Everything/nii-nvim)? Great! I am always looking for contributors!

Please take a moment to review this document in order to make the contribution
process easy and effective for everyone involved.

Following these guidelines helps to communicate that you respect the time spent contributing to this Project.
In return, I will reciprocate that respect in addressing your issue or assessing
patches and features.


## Using the issue tracker

The [issue tracker](https://github.com/Theory-of-Everything/nii-nvim/issues) is
the preferred channel for [bug reports](#bugs), [features requests](#features)
and [submitting pull requests](#pull-requests), but please respect the following
restrictions:

* You are allowed to use the issue tracker for personal support requests for the code present within the project, however, I **Can not** guarantee help for custom code, or stuff not realted to the main codebase.

* Please **do not** derail issues. Keep the discussion on topic and
  respect the opinions of others.

<a name="bugs"></a>
## Bug reports

A bug is a _demonstrable problem_ that is caused by the code in the repository.
Good bug reports are extremely helpful - thank you!

Guidelines for bug reports:

1. **Search For existing Issues before submitting your own** &mdash; check if the issue has already been
   reported.

2. **Check if the issue has been fixed in the most recent commit** &mdash; try to reproduce it using the
   latest `master` or development branch in the repository.

A good bug report shouldn't leave others needing to chase you up for more
information. Please try to be as detailed as possible in your report. What is
your environment? What steps will reproduce the issue? What browser(s) and OS
experience the problem? What would you expect to be the outcome? All these
details will help people to fix any potential bugs.

Example:

> Short and descriptive example bug report title
>
> A summary of the issue and any other specific or relivant information. If
> suitable, include the steps required to reproduce the bug.
>
> 1. This is the first step
> 2. This is the second step
> 3. Further steps, etc.
>
> Any other information you want to share that is relevant to the issue being
> reported. This might include the lines of code that you have identified as
> causing the bug, and potential solutions (and your opinions on their
> merits).


<a name="features"></a>
## Feature requests

Feature requests are welcome. But take a moment to find out whether your idea
fits with the scope the project. It's up to *you* to make a strong
case to convince me of the merits of this feature. Please
provide as much detail and context as possible.
For the time being, I will not be considering adding more plugins to the config.


<a name="pull-requests"></a>
## Pull requests

Good pull requests - patches, improvements, new features - are a fantastic
help. They should remain focused in scope and avoid containing unrelated
commits.

**Please ask first** before embarking on any significant pull request (e.g.
implementing features, refactoring code),
otherwise you risk spending a lot of time working on something that I may not want megred into the main project.

Please adhere to the coding conventions used throughout a project (indentation,
accurate comments, etc.) and any other requirements.

Adhering to the following process is the best way to get your work
included in the project:

1. [Fork](https://help.github.com/articles/fork-a-repo/) the project, clone your
   fork, and configure the remotes:

   ```bash
   # Clone your fork of the repo into the current directory
   git clone https://github.com/<your-username>/nii-nvim.git
   # Navigate to the newly cloned directory
   cd nii-nvim
   # Assign the original repo to a remote called "upstream"
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

4. Commit your changes in logical chunks. Please keep your commit messages short but consise.

5. Push your topic branch up to your fork:

   ```bash
   git push origin <topic-branch-name>
   ```

6. [Open a Pull Request](https://help.github.com/articles/using-pull-requests/)
    with a clear title and description.

**IMPORTANT**: By submitting a pull request, you agree to allow me to license your work under the terms of the [GPLv3 LICENCE](LICENSE).
