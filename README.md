# Google-Cloud-GCloud-Notes
Notes for setting up Google's gcloud sdk


# Prerequisites

- Google Account
- Python 2.7.x.

__Ubuntu & Debian__: Have the option to install with `apt-get`. (see external resources)

__Red Hat & CentOS__: Have the option to install with `yum`. (see external resources)

__Note__: The most recent package archive can be found on [Google's Cloud SDK](https://cloud.google.com/sdk/downloads#versioned) download page. 


# Instructions

1) Download package archive. (see downloads)

2) Verify Checksum. `sha256sum <package_archive>`

3) Extract. `tar -xvf <package_archive>`

4) Change directories. -> Run the install script. -> Run initilization. -> Change Directories. -> Update gcloud

`cd google-cloud-sdk && ./install.sh && ./bin/gcloud init && cd && gcloud components update`

5) Export *$PATH*. `export PATH=$PATH:$(pwd)/bin`

6) Add to *~/.bashrc*. `echo "PATH=$PATH:$(pwd)/bin" >> ~/.bashrc`


### Downloads

| Platform | Package | SHA256 Checksum |
| --- | --- | --- |
| Linux (x86_64) | [google-cloud-sdk-180.0.0-linux-x86_64.tar.gz](https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-180.0.0-linux-x86_64.tar.gz) | 5a5c2e1bedcf6aaabf31cf70b2636c99c1f022c68f14702b832129f686bbdd8b | 
| Linux (x86) | [google-cloud-sdk-180.0.0-linux-x86.tar.gz](https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-180.0.0-linux-x86.tar.gz) | d28e70553e1cff573dc89b9b7961d58d9205c58cb847dd0417c8f3990a49427a | 

# External Resources

- [Google Cloud SDK downloads](https://cloud.google.com/sdk/downloads)
- [Download Archive](https://storage.cloud.google.com/cloud-sdk-release)


# Technical info & Versoning
````
                   -`                 
                  .o+`                 owner@Alpha-Desktop
                 `ooo/                 OS: Arch Linux 
                `+oooo:                Kernel: x86_64 Linux 4.13.12-1-ARCH
               `+oooooo:               Uptime: 2h 10m
               -+oooooo+:              Packages: 866
             `/:-:++oooo+:             Shell: bash 4.4.12
            `/++++/+++++++:            Resolution: 3840x1080
           `/++++++++++++++:           WM: OpenBox
          `/+++ooooooooooooo/`         WM Theme: Syscrash
         ./ooosssso++osssssso+`        CPU: Intel Core i5-2320 @ 4x 3.3GHz [27.8°C]
        .oossssso-````/ossssss+`       GPU: GeForce GTX 760
       -osssssso.      :ssssssso.      RAM: 2530MiB / 7879MiB
      :osssssss/        osssso+++.    
     /ossssssss/        +ssssooo/-    
   `/ossssso+/:-        -:/+osssso+-  
  `+sso+:-`                 `.-/+oso: 
 `++:.                           `-/+/
 .`                                 `/
 ````
 

