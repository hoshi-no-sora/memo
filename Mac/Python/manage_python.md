# How to manage python environment

QISkit_env: Name of the Place for puttting virtual environment
IBMQ      : Name of virtual environment

## Python Update

### Update Virtual Environment

```bash
$ cd ${HOME}/QISkit_env/IBMQ

# get library list
$ source ./bin/activate
(IBMQ) $ cd ${HOME}/QISkit_env
(IBMQ) $ pip freeze --local > ./IBMQ/requirements.lst
(IBMQ) $ deactivate

# installation of new version of python
$ pyenv install -l
$ pyenv install [new python version]
$ pyenv versions
$ pyenv global [new python version]
$ python -V

# create new venv environment
$ cd ${HOME}/QISkit_env
$ mv IBMQ IBMQ_old
$ pyenv -m venv IBMQ
$ cp IBMQ_old/requirements.lst IBMQ/requirements.lst

# installation some libraries
$ cd ${HOME}/QISkit_env/IBMQ
$ source ./bin/activate
(IBMQ) <- confirmation
(IBMQ) pip install -r ${HOME}/QISkit_env/IBMQ/requirements.lst
```

## Remove Virtual Environment
```bash
(IBMQ) $ deactivate
$ rm -r ${HOME}/QISkit_env/IBMQ_old
```

## Uninstall Python
```bash
$ pyenv versions
$ pyenv uninstall [uninstalled python version]
```


