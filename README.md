# Online Store Assistant (rule-based chatbot)

A FAQ chatbot for an online store, written in plain HTML, CSS and JavaScript, packaged as a Docker image and built by GitHub Actions.

**Live demo:** https://chat-bot-5l8r.vercel.app

## Features

- Guided conversation: main menu → category (delivery, returns, sizing, orders…) → question buttons.
- Free-text questions matched against keywords for each answer, with a fallback to support contact details.
- Typing delay to make replies feel natural, and a restart button that resets the conversation state.
- User input is HTML-escaped before it is rendered.

## Project structure

```
index.html     page layout and chat container
script.js      conversation data (categories, answers, keywords) and chat logic
css/style.css  styling
Dockerfile     nginx image that serves the static files
.github/workflows/docker-publish.yml   builds the image (amd64 + arm64) and pushes it to GitHub Container Registry
```

## Run

Open `index.html` in a browser, or run the container:

```bash
docker build -t chatbot .
docker run -p 8080:80 chatbot
# http://localhost:8080
```

Published image: `ghcr.io/osmarprincipe/chatbot:latest`.
