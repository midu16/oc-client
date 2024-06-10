# Use a base image
FROM registry.access.redhat.com/ubi9-minimal
ARG AUTHORS="midu@redhat.com"
ARG LICENSE="Apache-2.0"
ARG OCP_VERSION="candidate-4.16"

ENV OCP_VERSION=${OCP_VERSION:-stable-4.13}
RUN echo "OCP VERSION: ${OCP_VERSION}"

#Update all packages to latest
RUN microdnf upgrade -y 
#Install needed software and make needed directory. 
RUN microdnf -y install python3 tar gzip vi; microdnf clean all; curl -L https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${OCP_VERSION}/openshift-client-linux.tar.gz | tar -xz -C /bin/ ; curl -L https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${OCP_VERSION}/oc-mirror.tar.gz | tar -xz -C /bin/ ; chmod a+x /bin/oc-mirror


# Mount volume from operating system to /apps/must-gather directory inside the container
VOLUME /apps/

# Specify the command to run when the container starts
CMD  ["/bin/bash"]
