# Misc commands for managing environments using Conda on Oscar

### List available conda envs
```conda env list```

### List all packages in current environment
```conda list```

### Delete a conda env
```conda env remove -n ENV_NAME```

### Deletes temporary and unnecessary files; saves space in home directory. CCV staff says I should do this once a week
```conda clean --all```

### Exports the activated conda environment into a yaml file. Use case: want to re-create environment on same machine at a later date
```conda env export > ENV_NAME.yml```

### Exports the activated conda environment into a yaml file
Use case: want to re-create environment on different machine at a later date.
E.g. if I have a conda environment on mac, and I want to move it to Oscar. This ONLY includes the packages that you installed manually

```conda env export --from-history > ENV_NAME.yml```

### See conda configuration information
If I hypothetically wanted to delete all conda info (would require me setting up "conda init" later), I'd look inside this doc

```ls ~/.bashrc```
