CXX = fbc
CXXFLAGS = fbc -c "%f" main.bas 
LDFLAGS = main.bas


SRC = 
OBJ = $(SRC:.cc=.o)
EXEC = ./%e

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CXX) $(LDFLAGS) -o $@ $(OBJ) $(LBLIBS)

clean:
	rm -rf $(OBJ) $(EXEC)
