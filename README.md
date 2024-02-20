# Integrate dbt with Snowflake

## Overview
This repo contains code that will help in integrating **dbt core** with **Snowflake** using **Github Actions**.

![image](https://github.com/Vidaan/dbt_snowflake/assets/56769902/a37dbcd3-30c1-4c33-82e2-54fbe99ba90f)

## How it works?
1. Create model in local machine and push it to the dbt repo.
2. Once the pull request is accepted there would be an action that performs "dbt run" in an Ubuntu machine on Github.
3. If the "dbt run" is successful, the table or view is created in Snowflake.
4. Once feature branch is merged an action would move the model from the "models" directory in dbt_project to another directory within the repo.
   This will prevent dbt from running all the models when a developer creates a pull request.
