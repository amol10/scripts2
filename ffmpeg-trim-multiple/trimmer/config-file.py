
class ConfigFile

    def __init__(self):
        self.timeslice_filename = ca[0]
        self.input_video_filepath = ca[2]
        self.ffmpeg_exepath = ca[3]
        self.output_segments_path = ca[4]
        self.output_video_filepath = ca[5]
        self.segment_list_file = op + ca[1]

    def load(self):
        c = ""

        with open("config.txt" , 'r') as f:
        c = f.read()

        ca = c.strip().splitlines()
        print("DEBUG: ca=" + str(ca))

        fn = ca[0]
        inp = ca[2]
        ffp = ca[3]
        op = ca[4]
        opfnf = ca[5]
        vlf = op + ca[1]


class TimeSlice:

    def __init__(self):
        self.start_time = ""
        self.end_time = ""

    
    def set(self, start_time, end_time):
        self.start_time = start_time
        self.end_time = end_time

class TimeSlices:

    def __init__(self):
        self.slices = []

    def load(self):
        with open(fn, 'r') as f:
            for l in f.read().splitlines():
                print("DEBUG line=" + l)
                ts = l.split()
                print("DEBUG slice=", ts)
                t.append(ts)



class Config:
    time_slice_filename = ""

class TimeSliceFile:

    def __init__(self):
        self.filename = Config.time_slice_filename

    def read(self):
        file_text = ""
        with open(self.filename, 'r') as f:
            file_text = f.read()

        #future
        #info("file text =\n" + file_text)

        return file_text



class Config:
    time_slice_filename = ""

        