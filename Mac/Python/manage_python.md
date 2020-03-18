# How to manage python environment

## Table of Contents
<!--toc-->
* [Definition of Terms](#definition-of-terms)
* [Python Update](python-update)
* [Update Virtual Environment](#update-virtual-environment)
  * [move the directory of Virtual Environment](#move-the-directory-of-virtual-environment)
  * [get library list](#get-library-list)
  * [installation of new version of python](#installation-of-new-version-of-python)
  * [create new venv environment](#create-new-venv-environment)
  * [installation some libraries](#installation-some-libraries)
  * [Remove old Virtual Environment](#remove-old-virtual-environment)
  * [Uninstall Python](#Uninstall-Python)
* [Reference](#reference)
<!--toc-->

## Definition of Terms
QISkit_env: Name of the Place for puttting virtual environment
IBMQ      : Name of virtual environment

## Python Update
```bash
$ brew update
```

## Update Virtual Environment

### move the directory  Virtual Environment
```bash
$ cd ${HOME}/QISkit_env/IBMQ
```

### get library list
```bash
$ source ./bin/activate
(IBMQ) $ cd ${HOME}/QISkit_env
(IBMQ) $ pip freeze --local > ./IBMQ/requirements.lst
(IBMQ) $ deactivate
```

### installation of new version of python
```bash
$ pyenv install -l
$ pyenv install [new python version]
$ pyenv versions
$ pyenv global [new python version]
$ python -V
```

## create new venv environment
```bash
$ cd ${HOME}/QISkit_env
$ mv IBMQ IBMQ_old
$ pyenv -m venv IBMQ
$ cp IBMQ_old/requirements.lst IBMQ/requirements.lst
```

## installation some libraries
```bash
$ cd ${HOME}/QISkit_env/IBMQ
$ source ./bin/activate
(IBMQ) <- confirmation
(IBMQ) pip install -r ${HOME}/QISkit_env/IBMQ/requirements.lst
```

## Remove old Virtual Environment
```bash
(IBMQ) $ deactivate
$ rm -r ${HOME}/QISkit_env/IBMQ_old
```

## Uninstall Python
```bash
$ pyenv versions
$ pyenv uninstall [uninstalled python version]
```

# Reference



