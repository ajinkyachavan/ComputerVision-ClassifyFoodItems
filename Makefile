
all: CImg.h a3.cpp Classifier.h HaarClassifier.h NearestNeighbor.h SVM.h SVM2.h
	mkdir -p  n
	\
	g++ a3.cpp  -o a3 -lX11 -lpthread `pkg-config opencv --cflags` `pkg-config opencv --libs` -I. -O3 -Isiftpp siftpp/sift.cpp
overfeat:
	tar xvf overfeat.tgz
	./overfeat/download_weights.py

clean:
	rm a3
