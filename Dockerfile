ARG BASE_IMAGE_VERSION=latest

FROM ghcr.io/container-app/debian-base:$BASE_IMAGE_VERSION

RUN curl -sSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor  | apt-key add -
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list
RUN apt update -y && apt -y install \
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
        libxshmfence-dev\
        openssh-client \
        --no-install-recommends \
        && rm -rf /var/lib/apt/lists/*

RUN     code --install-extension GitHub.remotehub && \
        code --install-extension TeamHub.teamhub  && \
        code --install-extension ponicode.ponicode  && \
        code --install-extension ms-toolsai.jupyter  && \
        code --install-extension dbaeumer.vscode-eslint  && \
        code --install-extension esbenp.prettier-vscode  && \
        code --install-extension ritwickdey.LiveServer  && \
        code --install-extension VisualStudioExptTeam.vscodeintellicode  && \
        code --install-extension eamodio.gitlens  && \
        code --install-extension ms-azuretools.vscode-docker  && \
        code --install-extension octref.vetur  && \
        code --install-extension formulahendry.code-runner  && \
        code --install-extension CoenraadS.bracket-pair-colorizer-2  && \
        code --install-extension MS-vsliveshare.vsliveshare  && \
        code --install-extension christian-kohler.path-intellisense  && \
        code --install-extension streetsidesoftware.code-spell-checker  && \
        code --install-extension naumovs.color-highlight  && \
        code --install-extension Shan.code-settings-sync  && \
        code --install-extension oderwat.indent-rainbow  && \
        code --install-extension MS-vsliveshare.vsliveshare-audio  && \
        code --install-extension wayou.vscode-todo-highlight  && \
        code --install-extension alefragnani.Bookmarks  && \
        code --install-extension Gruntfuggly.todo-tree  && \
        code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools  && \
        code --install-extension codezombiech.gitignore  && \
        code --install-extension vsciot-vscode.vscode-arduino  && \
        code --install-extension shardulm94.trailing-spaces  && \
        code --install-extension GraphQL.vscode-graphql  && \
        code --install-extension karigari.chat  && \
        code --install-extension kisstkondoros.vscode-gutter-preview  && \
        code --install-extension WakaTime.vscode-wakatime  && \
        code --install-extension flowtype.flow-for-vscode  && \
        code --install-extension kumar-harsh.graphql-for-vscode  && \
        code --install-extension IBM.output-colorizer  && \
        code --install-extension kisstkondoros.vscode-codemetrics  && \
        code --install-extension JuanBlanco.solidity  && \
        code --install-extension slevesque.shader  && \
        code --install-extension LeetCode.vscode-leetcode  && \
        code --install-extension usernamehw.errorlens  && \
        code --install-extension remimarsal.prettier-now  && \
        code --install-extension wwm.better-align  && \
        code --install-extension SirTori.indenticator  && \
        code --install-extension hnw.vscode-auto-open-markdown-preview  && \
        code --install-extension rangav.vscode-thunder-client  && \
        code --install-extension 42Crunch.vscode-openapi  && \
        code --install-extension emilast.LogFileHighlighter  && \
        code --install-extension mindaro.mindaro  && \
        code --install-extension bierner.emojisense  && \
        code --install-extension NativeScript.nativescript  && \
        code --install-extension oouo-diogo-perdigao.docthis  && \
        code --install-extension humao.rest-client  && \
        code --install-extension aaron-bond.better-comments  && \
        code --install-extension donjayamanne.githistory  && \
        code --install-extension ms-vscode.vscode-typescript-next  && \
        code --install-extension cmstead.js-codeformer  && \
        code --install-extension JeffersonLicet.snipped  && \
        code --install-extension anan.devdocstab

CMD [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox" ]