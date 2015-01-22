#
# Tierraのファイルと「同期」
#
ALL = movies videos photos music myvideos xxxxxx
.PHONY: $(ALL)
EXCLUDES = --exclude .DS_Store 
TIERRA = /Volumes/Tierra

all: $(ALL)
movies:
	-rsync -avz $(EXCLUDES) $(TIERRA)/movies .
	-rsync -avz $(EXCLUDES) movies $(TIERRA)
videos:
	-rsync -avz $(EXCLUDES) $(TIERRA)/videos .
	-rsync -avz $(EXCLUDES) videos $(TIERRA)
myvideos:
	-rsync -avz $(EXCLUDES) $(TIERRA)/MyVideos .
	-rsync -avz $(EXCLUDES) MyVideos $(TIERRA)
photos:
	-rsync -avz $(EXCLUDES) $(TIERRA)/Photos .
	-rsync -avz $(EXCLUDES) Photos $(TIERRA)
music:
	-rsync -avz $(EXCLUDES) $(TIERRA)/music .
	-rsync -avz $(EXCLUDES) Music $(TIERRA)
xxxxxx:
	-rsync -avz $(EXCLUDES) $(TIERRA)/xxxxxx .
	-rsync -avz $(EXCLUDES) xxxxxx $(TIERRA)

