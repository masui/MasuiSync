#
# Tierraのファイルと「同期」
#
.PHONY: movies videos photos music xxxxxx
EXCLUDES = --exclude .DS_Store 
TIERRA = /Volumes/Tierra

all: movies videos photos music
movies:
	-rsync -avz $(EXCLUDES) $(TIERRA)/movies .
	-rsync -avz $(EXCLUDES) movies $(TIERRA)
videos:
	-rsync -avz $(EXCLUDES) $(TIERRA)/videos .
	-rsync -avz $(EXCLUDES) videos $(TIERRA)
photos:
	-rsync -avz $(EXCLUDES) $(TIERRA)/Photos .
	-rsync -avz $(EXCLUDES) Photos $(TIERRA)
music:
	-rsync -avz $(EXCLUDES) $(TIERRA)/music .
	-rsync -avz $(EXCLUDES) Music $(TIERRA)
xxxxxx:
	-rsync -avz $(EXCLUDES) $(TIERRA)/xxxxxx .
	-rsync -avz $(EXCLUDES) xxxxxx $(TIERRA)

