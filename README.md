# Landscape Toolbox Shinyproxy System
## Network diagram
![service diagram](https://github.com/JornadaExperimentalRange/sp-toolbox/blob/master/network-shinyproxy.svg)
## Stack diagram
Shinyproxy load balancer that serves R shiny tools

![service diagram](https://github.com/JornadaExperimentalRange/sp-toolbox/blob/master/stack-toolbox.svg)
## Image (landscapedatacommons/sp-toolbox)
Load balancer that serve R shiny tools

## Integrated stack services
Swarm stack services using shinyproxy, traefik, swarmpit and grafana/influxdb to serve R shiny apps. Images are on Docker Hub. Stack services should be deployed in the following order (excluding tools, which must be pulled from Docker Hub to the host before deploying Toolbox service):
## Dashboard
- Image: landscapedatacommons/sp-dashboard:2.6.1
- Description: Web proxy/load balancer dashboard (traefik)
## Toolbox
- Image: landscapedatacommons/sp-toolbox:2.6.1
- Description: Toolbox of R shiny apps (shinyproxy)
> ## Tools
>- ### Balanced Design Tool
>>- Image: landscapedatacommons/balanced-design-tool:4.2.1
>>- Description: An R Shiny tool for generating spatially balanced sample designs using spsurvey::grts()
>- ### Benchmark Exploration Tool
>>- Image: landscapedatacommons/benchmark-exploration-tool:4.2.1
>>- Description: Creating histograms of indicator values with benchmarks
## Manage
- Image: landscapedatacommons/sp-manage:2.6.1
- Description: Swarm management (swarmpit)
## Monitor
- Image: landscapedatacommons/sp-monitor:2.6.1
- Description: Usage statistics (grafana/influxdb)