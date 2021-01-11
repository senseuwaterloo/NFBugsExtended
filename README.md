
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

        

