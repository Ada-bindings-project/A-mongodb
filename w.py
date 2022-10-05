import glob
import subprocess

def read(path):
    with open(path) as inf:
        return inf.read()
    
def write(buffer, path):
    with open(path,"w") as outf:
        outf.write(buffer)
replace=[["return access Libmongoc_1_0_Mongoc_Mongoc_Cursor_H.U_Mongoc_Cursor_T","return Mongo.Cursor.Cursor_T"],
         ["return access libmongoc_1_0_mongoc_mongoc_cursor_h.u_mongoc_cursor_t","return Mongo.Cursor.Cursor_T"],
         [": access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t",": Mongo.Read_Prefs.Prefs_T"],
         ["return access libmongoc_1_0_mongoc_mongoc_collection_h.u_mongoc_collection_t","return Mongo.Collection.Collection_T"] ,
         ["return access libmongoc_1_0_mongoc_mongoc_collection_h.u_mongoc_collection_t","return Mongo.Collection.Collection_T"],
         ["access constant libmongoc_1_0_mongoc_mongoc_read_prefs_h.u_mongoc_read_prefs_t","Mongo.Read_Prefs.Prefs_T"]]

for path in glob.glob("src/*.ads"):
    print(path)
    buffer = read(path)
    for i in replace:
        buffer = buffer.replace(i[0],i[1])
    write(buffer,path)
