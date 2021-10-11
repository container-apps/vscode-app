ARG BASE_IMAGE_VERSION=latest

FROM ghcr.io/container-app/debian-base:$BASE_IMAGE_VERSION

RUN curl -sSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor "| apt-key add -" ]
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
        libxshmfence-dev \
        openssh-client \
        --no-install-recommends \
        && rm -rf /var/lib/apt/lists/*

RUN [ "/usr/bin/code", "--install-extension", "GitHub.remotehub" ]
RUN [ "/usr/bin/code", "--install-extension", "TeamHub.teamhub" ]
RUN [ "/usr/bin/code", "--install-extension", "ponicode.ponicode" ]
RUN [ "/usr/bin/code", "--install-extension", "ms-toolsai.jupyter" ]
RUN [ "/usr/bin/code", "--install-extension", "dbaeumer.vscode-eslint" ]
RUN [ "/usr/bin/code", "--install-extension", "esbenp.prettier-vscode" ]
RUN [ "/usr/bin/code", "--install-extension", "ritwickdey.LiveServer" ]
RUN [ "/usr/bin/code", "--install-extension", "VisualStudioExptTeam.vscodeintellicode" ]
RUN [ "/usr/bin/code", "--install-extension", "eamodio.gitlens" ]
RUN [ "/usr/bin/code", "--install-extension", "ms-azuretools.vscode-docker" ]
RUN [ "/usr/bin/code", "--install-extension", "octref.vetur" ]
RUN [ "/usr/bin/code", "--install-extension", "formulahendry.code-runner" ]
RUN [ "/usr/bin/code", "--install-extension", "CoenraadS.bracket-pair-colorizer-2" ]
RUN [ "/usr/bin/code", "--install-extension", "MS-vsliveshare.vsliveshare" ]
RUN [ "/usr/bin/code", "--install-extension", "christian-kohler.path-intellisense" ]
RUN [ "/usr/bin/code", "--install-extension", "streetsidesoftware.code-spell-checker" ]
RUN [ "/usr/bin/code", "--install-extension", "naumovs.color-highlight" ]
RUN [ "/usr/bin/code", "--install-extension", "Shan.code-settings-sync" ]
RUN [ "/usr/bin/code", "--install-extension", "oderwat.indent-rainbow" ]
RUN [ "/usr/bin/code", "--install-extension", "MS-vsliveshare.vsliveshare-audio" ]
RUN [ "/usr/bin/code", "--install-extension", "wayou.vscode-todo-highlight" ]
RUN [ "/usr/bin/code", "--install-extension", "alefragnani.Bookmarks" ]
RUN [ "/usr/bin/code", "--install-extension", "Gruntfuggly.todo-tree" ]
RUN [ "/usr/bin/code", "--install-extension", "ms-kubernetes-tools.vscode-kubernetes-tools" ]
RUN [ "/usr/bin/code", "--install-extension", "codezombiech.gitignore" ]
RUN [ "/usr/bin/code", "--install-extension", "vsciot-vscode.vscode-arduino" ]
RUN [ "/usr/bin/code", "--install-extension", "shardulm94.trailing-spaces" ]
RUN [ "/usr/bin/code", "--install-extension", "GraphQL.vscode-graphql" ]
RUN [ "/usr/bin/code", "--install-extension", "karigari.chat" ]
RUN [ "/usr/bin/code", "--install-extension", "kisstkondoros.vscode-gutter-preview" ]
RUN [ "/usr/bin/code", "--install-extension", "WakaTime.vscode-wakatime" ]
RUN [ "/usr/bin/code", "--install-extension", "flowtype.flow-for-vscode" ]
RUN [ "/usr/bin/code", "--install-extension", "kumar-harsh.graphql-for-vscode" ]
RUN [ "/usr/bin/code", "--install-extension", "IBM.output-colorizer" ]
RUN [ "/usr/bin/code", "--install-extension", "kisstkondoros.vscode-codemetrics" ]
RUN [ "/usr/bin/code", "--install-extension", "JuanBlanco.solidity" ]
RUN [ "/usr/bin/code", "--install-extension", "slevesque.shader" ]
RUN [ "/usr/bin/code", "--install-extension", "LeetCode.vscode-leetcode" ]
RUN [ "/usr/bin/code", "--install-extension", "usernamehw.errorlens" ]
RUN [ "/usr/bin/code", "--install-extension", "remimarsal.prettier-now" ]
RUN [ "/usr/bin/code", "--install-extension", "wwm.better-align" ]
RUN [ "/usr/bin/code", "--install-extension", "SirTori.indenticator" ]
RUN [ "/usr/bin/code", "--install-extension", "hnw.vscode-auto-open-markdown-preview" ]
RUN [ "/usr/bin/code", "--install-extension", "rangav.vscode-thunder-client" ]
RUN [ "/usr/bin/code", "--install-extension", "42Crunch.vscode-openapi" ]
RUN [ "/usr/bin/code", "--install-extension", "emilast.LogFileHighlighter" ]
RUN [ "/usr/bin/code", "--install-extension", "mindaro.mindaro" ]
RUN [ "/usr/bin/code", "--install-extension", "bierner.emojisense" ]
RUN [ "/usr/bin/code", "--install-extension", "NativeScript.nativescript" ]
RUN [ "/usr/bin/code", "--install-extension", "oouo-diogo-perdigao.docthis" ]
RUN [ "/usr/bin/code", "--install-extension", "humao.rest-client" ]
RUN [ "/usr/bin/code", "--install-extension", "aaron-bond.better-comments" ]
RUN [ "/usr/bin/code", "--install-extension", "donjayamanne.githistory" ]
RUN [ "/usr/bin/code", "--install-extension", "ms-vscode.vscode-typescript-next" ]
RUN [ "/usr/bin/code", "--install-extension", "cmstead.js-codeformer" ]
RUN [ "/usr/bin/code", "--install-extension", "JeffersonLicet.snipped" ]
RUN [ "/usr/bin/code", "--install-extension", "anan.devdocstab" ]

CMD [ " "/usr/bin/code", ", "--user-data-dir=/var/lib/vscode", "--no-sandbox" ]