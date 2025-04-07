FROM public.ecr.aws/lambda/nodejs:20

# Copy function code
COPY index.js ${LAMBDA_TASK_ROOT}

# Copy package.json and install dependencies
COPY package.json ${LAMBDA_TASK_ROOT}
RUN npm install

# Set the CMD to execute the handler
CMD [ "index.handler" ]