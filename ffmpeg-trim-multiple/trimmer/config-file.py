
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

    