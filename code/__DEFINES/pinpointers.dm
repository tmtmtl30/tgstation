//I would rather have these in pinpointer.dm, but Malf_Modules.dm is loaded before that file so they need to be here.
#define TRACK_NUKE_DISK 1 //We track the nuclear authentication disk, either to protect it or steal it
#define TRACK_MALF_AI 2 //We track the malfunctioning AI, so we can prevent it from blowing us all up
#define TRACK_INFILTRATOR 3 //We track the Syndicate infiltrator, so we can get back to ship when the nuke's armed
/* BEGIN DOM DEBUG TAG */
#define TRACK_DOMINATOR 4 //We track the active Dominator, preventing a seditious machine from taking over the station's system
/* END DOM DEBUG TAG */
