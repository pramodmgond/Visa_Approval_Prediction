# File: main.py
# from US_Visa.logger import logging

# #logging.info("Logger initialized successfully")
# from US_Visa.exception import USvisaException
# import sys

# try:
#     a = 1/'10'
# except Exception as e:
#     logging.info(e)
#     raise USvisaException(e,sys) from e
from US_Visa.pipline.training_pipeline import TrainPipeline


pipline  = TrainPipeline()
pipline.run_pipeline()



