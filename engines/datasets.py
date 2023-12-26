from paddle.io import Dataset, IterableDataset

class TrainDatasetBase(IterableDataset):
    def __init__(self, files):
        self.files = files

    def __iter__(self):
        pass