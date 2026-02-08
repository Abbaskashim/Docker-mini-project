# 🐳 Docker Mini Project – Streamlit Application

## Project Overview
This project demonstrates containerization of a simple Streamlit application using **Docker** and **Docker Compose**.  
The goal is to understand Docker image creation, container execution, multi-container orchestration, and Docker command usage.

---

## Assignment Objectives
- Understand containerization using Docker
- Write a Dockerfile to containerize an application
- Build and run Docker images
- Use Docker Compose to run services
- Explain all Docker commands used
- Provide proof of successful execution

---

## Application Details
- **Application Type:** Python Streamlit App  
- **Port Used:** 8501  
- **Output Message:**  
  > Hello from Docker 🐳  

---

## Project Structure


---

## Application Code (`app.py`)
```python
import streamlit as st

st.set_page_config(page_title="Docker Streamlit App")

st.title("Hello from Docker 🐳")
st.write("This Streamlit app is running inside a Docker container.")
```
<img width="452" height="299" alt="image" src="https://github.com/user-attachments/assets/c29825ec-2264-474c-9f1c-340cbbdfe4bf" />

## Dockerfile
---
```
FROM ubuntu:24.04

RUN apt update
RUN apt install python3 -y
RUN apt install python3-pip -y
RUN pip3 install streamlit --break-system-packages

WORKDIR /app

COPY . .

EXPOSE 8501

CMD ["streamlit", "run", "app.py", "--server.address=0.0.0.0"]
```
<img width="452" height="26" alt="image" src="https://github.com/user-attachments/assets/3fea5542-b96d-45a6-84f3-68e8a94e88ee" />

### Docker Commands Used
---

Build Docker Image
```bash
docker build -t streamlit-app:01 .
```
<img width="451" height="274" alt="image" src="https://github.com/user-attachments/assets/4fa5fb32-3ba9-403b-be1b-42f45265e062" />

List Docker Images
```bash
docker images
```
<img width="452" height="62" alt="image" src="https://github.com/user-attachments/assets/6409525b-f732-460b-845d-ac3c45cf2b50" />

Run Docker Container
```bash
docker run -it -p 8501:8501 streamlit-app:01
```
<img width="452" height="159" alt="image" src="https://github.com/user-attachments/assets/aadc50ae-f633-4d2a-880e-0a110e02ceee" />

Output:

<img width="452" height="154" alt="image" src="https://github.com/user-attachments/assets/def245c6-de87-43b8-a367-55a0da967348" />

List Running Containers
```bash
docker ps
```
<img width="452" height="86" alt="image" src="https://github.com/user-attachments/assets/349564aa-19c8-4970-a3df-c9f7b07cdbd5" />


### Docker Compose Implementation

---
docker-compose.yml
```
version: "3.9"

services:
  streamlit-app:
    build: .
    image: streamlit-app
    container_name: streamlit_container
    ports:
      - "8501:8501"
```

<img width="452" height="23" alt="image" src="https://github.com/user-attachments/assets/cacd0533-5be6-4092-ad78-16a864b210ad" />

### Docker Compose Commands

---
```
docker-compose up --build
```

<img width="452" height="272" alt="image" src="https://github.com/user-attachments/assets/bb9eeadc-9422-4690-80a2-b18b5ab23ea6" />

Output

<img width="452" height="282" alt="image" src="https://github.com/user-attachments/assets/f14e3d2e-4639-4253-ae9d-c1b659af9cff" />

```
docker-compose ps
```

<img width="452" height="78" alt="image" src="https://github.com/user-attachments/assets/7f098bc0-1796-4aff-b122-1c539e8319e4" />

```
docker-compose logs
```

<img width="452" height="178" alt="image" src="https://github.com/user-attachments/assets/d2250f17-683d-48a2-8cea-ceb95f809c29" />

```
docker-compose down
```

<img width="452" height="63" alt="image" src="https://github.com/user-attachments/assets/425834b8-2cb3-4e62-ae7e-ed8663de10e5" />

Output :

<img width="452" height="228" alt="image" src="https://github.com/user-attachments/assets/a6f44aef-32dc-451b-958a-4846ba5ae6c9" />





