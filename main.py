import json
import subprocess as sp

conf_file = open('SampleConf.json')

confs = json.load(conf_file)

for key in confs:
    cmd = "./"+key+"/HardenScript.sh"
    sp.call([cmd, confs[key]])
        
conf_file.close()