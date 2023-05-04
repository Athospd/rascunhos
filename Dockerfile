# Use the rocker/rstudio image as the base
FROM rocker/rstudio:latest

ENV PASSWORD=$PASSWORD

# APT Update
RUN apt-get --allow-releaseinfo-change update
RUN apt-get update && apt-get upgrade -y

# APT install (base) packages
RUN apt-get install -y build-essential cmake libboost-all-dev pkg-config
