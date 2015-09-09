class Bogosort extends Sort{
  //See sort abstract
  //only swaps the two first places.
   
  Bogosort(Blocklist datain){
    super(datain);
    System.out.println(datain.getSize());
    super.commands = generateCommands(datain);
    System.out.println(super.commands);
  }
  
  void update(){ //commands and stuff
    if(!super.sorted){ // checks to see if it's sorted, if it is, will not run the command
      int looking = super.commands.get(super.currentcommand).getType(); // gets the type of command, 1 is a swap command, 
      switch(looking){ // switch to see what command it is
       case 1: // does swap
         if(super.blocks.swapblock(commands.get(super.currentcommand).a,commands.get(super.currentcommand).b)){ // if it returns true, will go to the next command
           super.nextCommand(); // increase the current command
         }
         break;
       default:
      }
    }
  }
  
  ArrayList<Command> generateCommands(Blocklist datain){ // generates the list of commands. This is where the list will be generated.
    ArrayList<Command> commandlist = new ArrayList<Command>();
    boolean notSorted = true;
    while(notSorted){
     // System.out.println(datain.getSize());
      commandlist.add(new Command(10,(int)random(blocks.getSize()),1));
      if(commandlist.size() > 10){
       notSorted = false; 
      }
    }
    return commandlist;
  }
}