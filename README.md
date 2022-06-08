## Description

This repo contains scripts to generate and deploy configuration policies at different evaluation-intervals to perform scale testing.
Each configuration policy enforces 10 RoleBindings objects on the managedcluster. 


## Setup

- Create an ACM hub cluster and import atleast one managedcluster. 

- Login to managedcluster and run the script to the setup namespaces and usergroups.
  ```bash
  ./mc-prep-env.sh
  ```

## Run tests

To gather performance metrics for configuration policies set to at default evaluation-interval 

- Generate policies in batches of hundred
  ```bash
  cd evalInterval-default
  ../make-first100-policies.sh
  ../make-second100-policies.sh
  ../make-third100-policies.sh
  ```


- Deploy policies in batches of hundred
  ```bash
  cd evalInterval-default
  ../apply-first100-policies.sh
  ```
  Wait for the env to settle and capture required metrics
  ```bash
  ../apply-second100-policies.sh
  ```
  Wait for the env to settle and capture required metrics
  ```bash
  ../apply-third100-policies.sh
  ```
  Wait for the env to settle and capture required metrics


## Some of the metrics to capture

  - avg_over_time(pod:container_cpu_usage:sum[30m:30s]) 

  - etcd_mvcc_db_total_size_in_use_in_bytes

  - etcd_object_counts


## Cleanup

- To cleanup the deployed policies, login to hub cluster and run
  ```bash
  ../delete-policies.sh
  ```
- To cleanup the resources setup on managedcluster, login to mc cluster and run 
  ```bash
  ../mc-cleanup-env.sh
  ``` 
 
