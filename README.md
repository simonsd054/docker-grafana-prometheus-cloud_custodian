# Introduction
This is a testing project for prometheus, grafana and cloud custodian using docker.

# Requirements
Everything is installed using docker. So, docker is the only requirement.

# What it does?
It saves data into prometheus using pushgateway and displays the data in grafana. It also run the cloud custodian policy which fetches all the roles and push it into an S3 bucket.

# How to run?
1. Clone/Download this repo
2. Create a file `env.sh` copying the content from `env.example.sh`
3. Put the values of access key, secret key and s3 bucket from your own AWS account
4. Run the script `main.sh` using bash
    ```bash
    ./main.sh
    ```

# How to stop?
1. Run the script `stop.sh` using bash
    ```bash
    ./stop.sh
    ```

# Errors
- If you face "permission denied" error when running the scripts, try making them executable first and then run them
    ```bash
    chmod +x <script-file>
    ```