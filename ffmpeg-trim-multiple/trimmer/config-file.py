
class ConfigFile

    def __init__(self):
        self.timeslice_filename = ca[0]
        self.input_video_filepath = ca[2]
        self.ffmpeg_exepath = ca[3]
        self.output_segments_path = ca[4]
        self.output_video_filepath = ca[5]
        self.segment_list_file = op + ca[1]

    def load(self):
        pass

    
class TimeSlice:

    def __init__(self):
        self.start_time = ""
        self.end_time = ""

    
    def set(self, start_time, end_time):
        self.start_time = start_time
        self.end_time = end_time


class Config:
    time_slice_filename = ""

class TimeSliceFile:

    def __init__(self):
        self.filename = Config.time_slice_filename

        