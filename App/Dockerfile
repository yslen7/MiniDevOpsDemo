FROM public.ecr.aws/bitnami/node:14

# Copy app's source code to the /app directory
COPY . /app

# The application's directory will be the working directory
WORKDIR /app

# Install Node.js dependencies defined in '/app/packages.json'
RUN npm install

CMD [ "npm", "start" ]