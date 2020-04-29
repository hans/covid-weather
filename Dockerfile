FROM rocker/geospatial

RUN install2.r lme4 lmerTest deSolve
