FROM python:3.8
# Upgrade pip
RUN python -m pip install --upgrade pip

# Install Django
RUN pip install django==3.2

# Set the working directory to /app
#WORKDIR /app

# Copy the entire project directory into the container at /app
COPY . .

RUN python manage.py migrate
EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
