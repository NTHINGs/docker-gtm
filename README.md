# GTM (Git Time Metric) Docker Image
For more information about GTM please see the [GTM GitHub Proyect](https://github.com/git-time-metric/gtm).

## Description
This project contains an Ubuntu base image with GIT and GTM.

## Usage
I use it in my GitLab Pipeline for automating reports and having them accessible by the team.

For example with this stage in the Pipeline my team can view the report of hours expend in the month coding.
```yml
time_report:
    stage: time_report
    image: nthingsm/gtm
    script:
        - gtm init
        - git fetchgtm
        - git log --pretty=%H --since="last month" | gtm report -format timeline-hours -this-month | tee hoursReport$( date +"%B" ).txt
    artifacts:
        paths:
            - hoursReport*
```

