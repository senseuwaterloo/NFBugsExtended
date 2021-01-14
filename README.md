
# Extended Non-Functional Bugs Dataset

## Description
This repository contains a dataset of real-world bugs related to Non-Functional Requirements, as well as scripts to process the data, focusing on non-functional bugs in Java and Python code. This data was developed in the [Software Maintenance and Reuse lab](https://sarahnadi.org/smr/) at the University of Alberta. We have since contributed to it, by adding a field `induce` where the `commits` within, indicate the bug inducing-commit(s) each of the bugs listed, when applicable.

## Layout of the Dataset 

Our data is separated into two main folders: one for [Java data](/java-data) and one for [Python data](/py-data).
Each project has its own subfolder in the directory corresponding to its language. Within each project's folder you will find:

- a `project.yml` file containing the project metadata
- a `problems` folder 
    - these folders have Non-Functional Bugs organized into the subdirectories `general-practise`, `api-related`, or `project-specific`
    - within these subdirectories each problem has a its own numbered folder containing
        - a `problem.yml` file describing the bug and fix data and bug-inducing data
- a `versions` folder
    - these folders contain subfolders for the point in the project history where a problem was found. The `version.yml` files in these subdirectories specify which problem(s) the version applies to.

## Procedure
1. https://docs.google.com/spreadsheets/d/1DlsZOULcPww7uKvM8Ye92kM-vQnZiWQukZkh6FtZGJQ/edit?usp=sharing is the manual analysis excel sheet where the reviewers put in their classification for bug-inducing commits. This sheet contains all the bug fixing commits that were not merge commits, and had identified bug-inducing commits from MA-SZZ.
2. We start filtering out the bugs, where we discard any bug-inducing commits that are dated after the associated bug-fixing commits, as it is not possible that a fix was created before an introduced bug.
3. Manual analysis is performed, as mentioned in the paper. The reviewers read the description of a non-functional bug from NFBugs dataset. The reviewers examine the code from the mentioned bug-fix commit. For each of the candidates identified as bug-inducing commits by the SZZ approach, the reviewers examine the code that is changed in the commit and determine whether it induces the corresponding bug. After all steps are individually completed by the first, third, and fourth authors for all bugs remaining in the dataset, the reviewers then meet to discuss disagreements. All three reviewers must have the same classification (i.e., bug-inducing or not bug- inducing) for a candidate commit, otherwise this is marked as a disagreement.  The disagreements are resolved as follows: The reviewers re-read the bug-fix and the bug-inducing commit in question. Each reviewer states the reason why they think the identified commit is bug-inducing or not bug-inducing. The reviewers discuss until all three agree on a final decision.
4. For each bug that has verified bug-inducing commits after performing manual analysis, we include these in the  `problem.yml` file, describing the bug and fix data and now the newly added bug-inducing data.


        

