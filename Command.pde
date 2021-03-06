//Command Object
//A non-graphical version of the sorts. Sort objects generate a command that tells the SortsMain what to process next graphically

//type current is defined as 1 = default swap
//1,swap
//2,highlight
  
class Command{ //values for a command
  int a;
  int b;
  int type;
  
  Command(){
   a = 0;
   b = 1;
   type = 1;
  }
  Command(int aa, int atype){
   a = aa;
   type = atype;
  }
  Command(int aa, int ab, int atype){
    a = aa;
    b = ab;
    type = atype;
  }
  String toString(){
   return a +" " + b + " " + type; 
  }
  int getType(){
   return type; 
  }
  void setB(int ab){
    b = ab;
  }
  void setA(int aa){
   a = aa; 
  }
}