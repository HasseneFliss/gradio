
FROM python:3.9
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
RUN export PYTHONUNBUFFERED=1
ENV PORT 5000
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD [ "./src/app.py" ]