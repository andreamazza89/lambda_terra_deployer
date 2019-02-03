FROM amazonlinux:2

WORKDIR /deploy_lambda

COPY ./install_utils.sh .
RUN chmod u+x ./install_utils.sh

COPY ./install_terraform_v0.11.11.sh .
RUN chmod u+x ./install_terraform_v0.11.11.sh

COPY ./install_aws_cli.sh .
RUN chmod u+x ./install_aws_cli.sh

COPY ./install_node_8.sh .
RUN chmod u+x ./install_node_8.sh

RUN yum update -y
RUN ./install_utils.sh
RUN ./install_terraform_v0.11.11.sh
RUN ./install_aws_cli.sh
RUN ./install_node_8.sh
