# Linux-Project
# Linux Package Update Notifier 

## Project Description

This project is a Bash shell script for Red Hat Linux that checks whether software package updates are available using the `dnf` package manager.

The script:

* checks available updates
* counts packages needing update
* displays package names
* saves update details in a log file
* asks user whether to update the system immediately

## Script File

update_notifier.sh

## How to Run

### Give execute permission

```bash id="yl3j4j"
chmod +x update_notifier.sh
```

### Run the script

```bash id="7pv9sp"
./update_notifier.sh
```

## Requirements

* Red Hat Linux
* Bash shell
* dnf package manager
