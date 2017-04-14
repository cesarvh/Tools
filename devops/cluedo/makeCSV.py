import Queue
import csv
import sys
import xml.etree.ElementTree as ET
import cswaExtras as extras

tree = ET.parse(sys.argv[1])
root = tree.getroot()

mapping = {
    'victim': 'person',
    'suspect': 'person',
    'floor': 'room',
    'weapon': 'object',
    'media': 'image'
}

cluedo2cspace = {
    'person': 'person',
    'room': 'storagelocation',
    'object': 'collectionobject'
}

relations = ['collectionobjects2storagelocations', 'collectionobjects2people']

cspaceCSV = csv.writer(open('entities.csv', 'wb'), delimiter='\t')
entities = {}
for cluedoElement, cspaceElement in mapping.items():
    print 'looking for Cluedo %s elements' % cluedoElement
    for e in root.findall('.//' + cluedoElement):
        for c in e.findall('.//' + cspaceElement):
            print '   ', cluedoElement, c.tag, c.text
            slug = c.text.replace('.', '').replace(' ', '')
            print '   ', 'media', c.tag, slug + '_Full.jpg'
            entities[c.text] = cluedo2cspace[c.tag]
            cspaceCSV.writerow([cluedo2cspace[c.tag], c.tag, c.text])
            cspaceCSV.writerow(['media', c.text, slug + '_Full.jpg'])


# Enqueue rooms in order to pair
locations_queue = Queue.Queue()
for location in [x for x in entities.keys() if entities[x] == 'storagelocation']:
    locations_queue.put(location)

# pair them up!
f = open("paired_entities.csv", "w")
# config = extras.getConfig("FORM???")
config = 'host=localhost port=5432 dbname=bampfa_domain_bampfa user=nuxeo_bampfa sslmode=prefer password=92b1%#_461'

for obj in [x for x in entities.keys() if entities[x] == 'collectionobject']:
    current_location = locations_queue.get()

    loc_id = extras.getCSID("placeName", current_location, config)
    obj_id = extras.getCSID("objectnumber", obj, config)

    pair = (obj, current_location, obj_id, loc_id)

    f.write(pair[0] + "\t" + pair[1] + "\t" + pair[2] + "\t" + pair[3] + "\n")
    f.write(pair[1] + "\t" + pair[0] + "\t" + pair[3] + "\t" + pair[2] + "\n")


f.close()

# for location in [x for x in entities.keys() if entities[x] == 'storagelocation']:
    # for object in [x for x in entities.keys() if entities[x] == 'collectionobject']:
        # What we need to do:
        # CREATE PAIRS OF RELATED RECORDS
"""
    We have people, location
    We want to have a museum with a bunch of rooms
    Now we want to have an object in each room
    Edge cases:
        Adding rooms
        Adding items
        Having uneven numbers of items/rooms
             |obj| > |room| => mult per room
                   <        => empty rooms
    Make relations between the rooms and shit
    We need specific relation records
    What we need to have...
        Relation y r
            Add relations to CSV file that has this
            Parse these, and create relation records
                Need to know CSID of y and r in order to POST
                Need to create a relationship between y and r and r and y MUTUAL

"""
        # print (location)
        # print (location + " is the location of " + object)
        # pass


