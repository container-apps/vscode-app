ARG BASE_IMAGE_VERSION=latest

FROM ghcr.io/container-app/debian-base:$BASE_IMAGE_VERSION

RUN curl -sSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | apt-key add -
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list
RUN apt-get update -y && apt-get -y install \
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

RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "GitHub.remotehub" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "TeamHub.teamhub" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "ponicode.ponicode" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "ms-toolsai.jupyter" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "dbaeumer.vscode-eslint" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "esbenp.prettier-vscode" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "ritwickdey.LiveServer" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "VisualStudioExptTeam.vscodeintellicode" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "eamodio.gitlens" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "ms-azuretools.vscode-docker" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "octref.vetur" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "formulahendry.code-runner" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "CoenraadS.bracket-pair-colorizer-2" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "MS-vsliveshare.vsliveshare" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "christian-kohler.path-intellisense" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "streetsidesoftware.code-spell-checker" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "naumovs.color-highlight" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "Shan.code-settings-sync" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "oderwat.indent-rainbow" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "MS-vsliveshare.vsliveshare-audio" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "wayou.vscode-todo-highlight" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "alefragnani.Bookmarks" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "Gruntfuggly.todo-tree" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "ms-kubernetes-tools.vscode-kubernetes-tools" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "codezombiech.gitignore" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "vsciot-vscode.vscode-arduino" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "shardulm94.trailing-spaces" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "GraphQL.vscode-graphql" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "karigari.chat" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "kisstkondoros.vscode-gutter-preview" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "WakaTime.vscode-wakatime" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "flowtype.flow-for-vscode" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "kumar-harsh.graphql-for-vscode" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "IBM.output-colorizer" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "kisstkondoros.vscode-codemetrics" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "JuanBlanco.solidity" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "slevesque.shader" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "LeetCode.vscode-leetcode" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "usernamehw.errorlens" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "remimarsal.prettier-now" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "wwm.better-align" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "SirTori.indenticator" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "hnw.vscode-auto-open-markdown-preview" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "rangav.vscode-thunder-client" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "42Crunch.vscode-openapi" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "emilast.LogFileHighlighter" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "mindaro.mindaro" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "bierner.emojisense" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "NativeScript.nativescript" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "oouo-diogo-perdigao.docthis" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "humao.rest-client" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "aaron-bond.better-comments" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "donjayamanne.githistory" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "ms-vscode.vscode-typescript-next" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "cmstead.js-codeformer" ]
RUN [ "/usr/bin/code", "--install-extension", "JeffersonLicet.snipped" ]
RUN [ "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--user-data-dir=/var/lib/vscode", "--no-sandbox", "--install-extension", "anan.devdocstab" ]

CMD [ "/bin/bash" ]
#CMD [ " "/usr/bin/code", "--user-data-dir=/var/lib/vscode", "--no-sandbox" ]