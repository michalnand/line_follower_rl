import sys
sys.path.insert(0, "/Users/michal/programming/ml_libs/")
sys.path.insert(0, "/home/michal/programming/ml_libs/")

from libs_dataset.line_dataset_advanced import *


class Dataset:
    def __init__(self, width, height, training_count, testing_count, root_path):


        background_images_folders = []
        background_images_folders.append(root_path + "paper/")
        background_images_folders.append(root_path + "surface/")

        foreground_images_folders = []
        foreground_images_folders.append(root_path + "black/")


        self.training = LinePositionDatasetAdvanced(training_count, background_images_folders, foreground_images_folders)
        self.testing  = LinePositionDatasetAdvanced(training_count, background_images_folders, foreground_images_folders)
