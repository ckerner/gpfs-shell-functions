# gpfs-shell-functions
Common functions we use in shell scripts to interact with GPFS.

sseom - Spectrum Scale Execute On Manager
This wrapper can be used to only execute commands on the GPFS cluser manager node.  
  - You can place entries in the cron table on all of the core servers, but the code will only be executed on the manager node.  
  - It also provides locking so that multiple copies will not run at the same time.  
  - It also has a maintenance mode so you can stop the execution of all of the cron commands with a single command.
  
