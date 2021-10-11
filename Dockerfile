ARG BASE_IMAGE_VERSION=latest

FROM ghcr.io/container-app/debian-base:$BASE_IMAGE_VERSION

RUN curl -sSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | apt-key add -
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list
RUN apt-get update -yq && apt-get -yq install \
  code git \
  libasound2 \
  libatk1.0-0 \
  libcairo2 \
  libcups2 \
  libexpat1 \
  libfontconfig1 \
  libfreetype6 \
  libgtk2.0-0 \
  libpango-1.0-0 \
  libx11-xcb1 \
  libxcomposite1 \
  libxcursor1 \
  libxdamage1 \
  libxext6 \
  libxfixes3 \
  libxi6 \
  libxrandr2 \
  libxrender1 \
  libxss1 \
  libxtst6 \
  libxshmfence-dev \
  openssh-client \
  --no-install-recommends \
  --no-install-suggests \
  && rm -rf /var/lib/apt/lists/*

RUN useradd -d /home/vscode vscode && \
  mkdir -p /home/vscode && \
  chown vscode:vscode /home/vscode

USER vscode

RUN /usr/bin/code --install-extension GitHub.remotehub \
  /usr/bin/code --install-extension TeamHub.teamhub \
  /usr/bin/code --install-extension ponicode.ponicode \
  /usr/bin/code --install-extension ms-toolsai.jupyter \
  /usr/bin/code --install-extension dbaeumer.vscode-eslint \
  /usr/bin/code --install-extension esbenp.prettier-vscode \
  /usr/bin/code --install-extension ritwickdey.LiveServer \
  /usr/bin/code --install-extension VisualStudioExptTeam.vscodeintellicode \
  /usr/bin/code --install-extension eamodio.gitlens \
  /usr/bin/code --install-extension ms-azuretools.vscode-docker \
  /usr/bin/code --install-extension octref.vetur \
  /usr/bin/code --install-extension formulahendry.code-runner \
  /usr/bin/code --install-extension CoenraadS.bracket-pair-colorizer-2 \
  /usr/bin/code --install-extension MS-vsliveshare.vsliveshare \
  /usr/bin/code --install-extension christian-kohler.path-intellisense \
  /usr/bin/code --install-extension streetsidesoftware.code-spell-checker \
  /usr/bin/code --install-extension naumovs.color-highlight \
  /usr/bin/code --install-extension Shan.code-settings-sync \
  /usr/bin/code --install-extension oderwat.indent-rainbow \
  /usr/bin/code --install-extension MS-vsliveshare.vsliveshare-audio \
  /usr/bin/code --install-extension wayou.vscode-todo-highlight \
  /usr/bin/code --install-extension alefragnani.Bookmarks \
  /usr/bin/code --install-extension Gruntfuggly.todo-tree \
  /usr/bin/code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools \
  /usr/bin/code --install-extension codezombiech.gitignore \
  /usr/bin/code --install-extension vsciot-vscode.vscode-arduino \
  /usr/bin/code --install-extension shardulm94.trailing-spaces \
  /usr/bin/code --install-extension GraphQL.vscode-graphql \
  /usr/bin/code --install-extension karigari.chat \
  /usr/bin/code --install-extension kisstkondoros.vscode-gutter-preview \
  /usr/bin/code --install-extension WakaTime.vscode-wakatime \
  /usr/bin/code --install-extension flowtype.flow-for-vscode \
  /usr/bin/code --install-extension kumar-harsh.graphql-for-vscode \
  /usr/bin/code --install-extension IBM.output-colorizer \
  /usr/bin/code --install-extension kisstkondoros.vscode-codemetrics \
  /usr/bin/code --install-extension JuanBlanco.solidity \
  /usr/bin/code --install-extension slevesque.shader \
  /usr/bin/code --install-extension LeetCode.vscode-leetcode \
  /usr/bin/code --install-extension usernamehw.errorlens \
  /usr/bin/code --install-extension remimarsal.prettier-now \
  /usr/bin/code --install-extension wwm.better-align \
  /usr/bin/code --install-extension SirTori.indenticator \
  /usr/bin/code --install-extension hnw.vscode-auto-open-markdown-preview \
  /usr/bin/code --install-extension rangav.vscode-thunder-client \
  /usr/bin/code --install-extension 42Crunch.vscode-openapi \
  /usr/bin/code --install-extension emilast.LogFileHighlighter \
  /usr/bin/code --install-extension mindaro.mindaro \
  /usr/bin/code --install-extension bierner.emojisense \
  /usr/bin/code --install-extension NativeScript.nativescript \
  /usr/bin/code --install-extension oouo-diogo-perdigao.docthis \
  /usr/bin/code --install-extension humao.rest-client \
  /usr/bin/code --install-extension aaron-bond.better-comments \
  /usr/bin/code --install-extension donjayamanne.githistory \
  /usr/bin/code --install-extension ms-vscode.vscode-typescript-next \
  /usr/bin/code --install-extension cmstead.js-codeformer \
  /usr/bin/code --install-extension JeffersonLicet.snipped \
  /usr/bin/code --install-extension anan.devdocstab

ENTRYPOINT [ "/usr/bin/code" ]