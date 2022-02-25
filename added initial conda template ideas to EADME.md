# Multi-cloud setup
Code to setup working environment for DS/ML/AI projects on the cloud. 

Tested with AWS, GCP & Azure and is what I regularly use to set up cloud environments before I begin work on a project.

# Usage

Clone this repo:

```
git clone https://github.com/gradhakr/multicloud_setup.git
```
## All usually used parts
TO-DO

```
make all
```

## Specific parts
To install the latest version of conda, do:

```
make conda
```

To setup a working conda environment with popular DS libraries (pandas, numpy, sklearn, seaborn, plotly, ..), do:

```
make ds_env
```
### Pytorch (CPU/GPU)
CPU as default
```
make torch_cpu
```

```
make torch_gpu
```
### NLP
To setup a working conda environment with popular DS libraries for NLP on top of general DS (spacy, textacy, nltk, transformers, fastai), do:

```
make nlp_env
```

### CV
To setup a working conda environment with popular DS libraries for NLP on top of general DS (torchvision, openCV fastai, YOLO, detectron2), do:

```
make vision_env
```


# TODO
- [X] 1. Install conda

- [ ] 2. Create conda templates

- [ ] 3. Create Makefile

- [ ] 4. Create requirements.txt

- [ ] 5. example python file (with some output)

- [ ] 6. Implement initial tests

- [ ] 7. Showcase it working on AWS/GCP/Azure
