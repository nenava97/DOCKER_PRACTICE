FROM python:latest
EXPOSE 8000
RUN git clone https://github.com/kura-labs-org/c4_deployment-4.git
WORKDIR c4_deployment-4
RUN pip install -U pip
RUN pip install gunicorn
RUN pip install -r requirements.txt
ENTRYPOINT [ "python3", "-m", "gunicorn", "-w", "4", "application:app", "-b", "0.0.0.0:8000" ]