# Docker and HuggingFace Spaces Deployment Guide

## Introduction
This guide provides step-by-step instructions for deploying the AI Studio Mobile project using Docker and also on HuggingFace Spaces.

## Prerequisites
- Ensure you have Docker installed on your machine.
- Create a HuggingFace account to deploy on HuggingFace Spaces.

## Docker Deployment

### Step 1: Clone the Repository
```bash
git clone https://github.com/peymargh/ai-studio-mobile.git
cd ai-studio-mobile
```

### Step 2: Build the Docker Image
```bash
docker build -t ai-studio-mobile .
```

### Step 3: Run the Docker Container
```bash
docker run -p 5000:5000 ai-studio-mobile
```

### Step 4: Access the Application
Visit `http://localhost:5000` in your web browser to access the application.

## HuggingFace Spaces Deployment

### Step 1: Create a New Space
1. Go to HuggingFace and log in to your account.
2. Click on "Create a new Space".
3. Set the visibility (public/private) and choose the appropriate SDK (Gradio or Streamlit).

### Step 2: Set Up the Space
- Upload the relevant files from the `ai-studio-mobile` repository.
- Ensure the `app.py` file is set (if applicable).

### Step 3: Configure Your Environment
- Specify any dependencies in the requirements.txt file.

### Step 4: Deploy the Space
- Click on "Deploy" and wait for the build process to complete.
- Access your deployed space using the provided URL.

## Conclusion
Congratulations on successfully deploying the AI Studio Mobile project using both Docker and HuggingFace Spaces!