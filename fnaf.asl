state("FiveNightsatFreddys2") 
{
    //this pointer is so random however it was the only consistent variable I could find to determin a load-in. It returns 34 while loaded in and 65583 once you complete a night, absolutly bonkers.
    int startNight : "FiveNightsatFreddys2.exe", 0x000B39CC, 0x148, 0x50;
}

startup{
	print("STARTUP");
}

init {
	print("INIT CONNECTED | current value: " + current.startNight);
}

start {
    if(old.startNight < current.startNight){
        if(current.startNight < 35){
            return true;
        }
    }
}

reset {
    if(old.startNight > current.startNight){
        return true;
    }
}
