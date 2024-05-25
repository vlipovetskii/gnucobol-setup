# gnucobol-setup

Scripts to install gnucobol to docker containers and to ubuntu host

### Installation

#### Ubuntu host
1. Run the script in order to build and install gnucobol from sources.
    * 1-**ubuntu**-gnucobol-build.sh
2. Adjust environment variables in **gnucobol-lib.sh** 

#### Docker containers
1. Run one of the scripts to prepare **gnucobol-dockerfile**
   * 0-docker-gnucobol-prepare-**deb-ubuntu**.sh
   * 0-docker-gnucobol-prepare-**src-alpine**.sh
   * 0-docker-gnucobol-prepare-**src-ubuntu**.sh
2. Run the script 1-**docker**-gnucobol-build.sh in order to build and run docker container. 
3. Adjust environment variables in **gnucobol-lib.sh** 

### Usage 
Run other scripts to 
   * obtain information about gnucobol environment
   * start/stop gnucobol docker container
   * compile/run cobol programs


