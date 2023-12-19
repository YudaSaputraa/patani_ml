FROM tensorflow/serving:2.13.0

COPY ./saved_model /models/

EXPOSE 8501
# ENV MODEL_NAME 
# ENV MODEL_BASE_PATH /models

CMD tensorflow_model_server \
    --port=8501 \
    --rest_api_port=8501 \
    --model_config_file=/models/model_config.config