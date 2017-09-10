# Create an epub in the parent folder
# To be executed in the folder that contains the mimetype file 

zip -X ../new.epub mimetype
zip -rg ../new.epub OEBPS -x \*.DS_Store
zip -rg ../new.epub META-INF -x \*.DS_Store
