FROM tensorflow/serving:2.13.0

COPY ./saved_model /models/

EXPOSE 8501
# ENV MODEL_NAME 
# ENV MODEL_BASE_PATH /models