FROM openjdk:17-alpine
ENV LANG en_US.UTF-8
ARG PLANTUML_VERSION
RUN apk add --no-cache\
  fontconfig\
  graphviz\
  ttf-dejavu\
  && dot -version
WORKDIR /app
RUN wget -O plantuml.jar "https://github.com/plantuml/plantuml/releases/download/v${PLANTUML_VERSION}/plantuml-${PLANTUML_VERSION}.jar"

ENTRYPOINT ["java", "-Djava.awt.headless=true", "-jar", "/app/plantuml.jar"]
CMD ["-help"]
