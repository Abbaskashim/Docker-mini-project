FROM ubuntu:24.04

RUN apt update
RUN apt install python3 -y
RUN apt install python3-pip -y
RUN pip3 install streamlit --break-system-packages

WORKDIR /app

COPY . .

EXPOSE 8501

CMD ["streamlit", "run", "app.py", "--server.address=0.0.0.0"]
