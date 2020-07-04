FROM steebchen/flutter

LABEL version="1.1.0"
LABEL name="flutter"
LABEL repository="http://github.com/steebchen/flutter"
LABEL homepage="http://github.com/steebchen/flutter"

LABEL maintainer="Luca Steeb <contact@luca-steeb.com>"
LABEL com.github.actions.name="Flutter CLI"
LABEL com.github.actions.description="Provides the flutter binary to test and build your app."
LABEL com.github.actions.icon="terminal"
LABEL com.github.actions.color="purple"

COPY LICENSE README.md /

ENTRYPOINT ["flutter"]
CMD ["help"]
