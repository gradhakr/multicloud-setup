# Multi-cloud setup

Code to setup working environment for DS/ML/AI projects on the cloud. 

Tested with AWS, GCP & Azure and is what I regularly use to set up cloud environments before I begin work on a project. Uses conda for environment management and pip/conda for package management.

# Usage

Clone this repo:

```
git clone https://github.com/gradhakr/multicloud_setup.git
```

## Specific parts

### Miniconda
To install the latest Linux version of miniconda from the Anaconda website, do:

```
make conda
```
### Default DS environment
To setup a working conda environment with popular DS libraries (pandas, numpy, sklearn, seaborn, plotly, pytest, do:

```
conda env create -f .env_requirements/ds_env.yml
```

### A minimal test
You can run a quick test to test your python install using:

```
make test
```
