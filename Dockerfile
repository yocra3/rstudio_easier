# Docker inheritance
FROM bioconductor/bioconductor_docker:RELEASE_3_12

# Install EASIER dependencies
RUN R -e 'devtools::source_url("https://raw.githubusercontent.com/isglobal-brge/EASIER/HEAD/installer.R")'

# Install EASIER R package
RUN R -e 'devtools::install_github("isglobal-brge/EASIER@HEAD")'
