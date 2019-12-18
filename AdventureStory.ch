//file name:AdventureStory.ch
//what it does: Play to choose your own adventure!!

string_t friend1;
string_t name;
string_t roadmapans;
string_t choiceone="0";
string_t choicetwo="0";
string_t choicethree="0";
string_t choicefour="0";
string_t choicefive="0";
string_t yesno="0";
int yesnorand=randint(1,2);
int speed;
int randspeed=randint(1,3);
string_t speedans;
string_t namesetans;


void speedsetting(){
    printf("Welcome to a choose-your-own-adenture-game!\n");
    printf("Please enter the text speed you would like the story to be\n");
    do{
        printf("0:No delay  1:Fast  2:Normal  3:Slow  4:Random\n");
        scanf("%s", &speedans);
    }while(speedans!="4" && speedans!="0" && speedans!="1" && speedans!="2" && speedans!="3");
    if(speedans=="0"){
        speed=0;
    }
    if(speedans=="1"){
        speed=1;
    }
    if(speedans=="2"){
        speed=2;
    }
    if(speedans=="3"){
        speed=3;
    }
    if(speedans=="4"){
        printf("Your speed is %d seconds\n", randspeed);
        speed=randspeed;
    }
}
void namesetting(){
    printf("Please enter your name\n");
    scanf("%s", &name);
    printf("Good. Now you have a friend in this story, what do you want their name to be?\n");
    scanf("%s", &friend1);
    printf("Great, now %s will start their story with %s", name, friend1);
    sleep(2);
    printf("\n\n\n\n\n");
}
//introduction
void intro(){
    printf("You suddenly woke up in bed, cold in sweat. You had the strangest dream.\n");
    sleep(speed);
    printf("You don't remember all the details, but you recall a dark figure chasing you through your hallway.\n");
    sleep(speed);
    printf("You remember looking outside and hearing sirens, maybe the police.\n");
    sleep(speed);
    printf("Well, it was just a dream, so you started your day as usual.\n");
    sleep(speed);
    printf("As you were on your way to work with %s, you noticed the man in front of you dropped his wallet. Should you...\n", friend1);
do{
    printf("1:pick up the wallet and return it  2:pick up the wallet and keep it for yourself  3:leave it, it probably has nothing in it\n");
    scanf("%s", &choiceone);
}while(choiceone!="3" && choiceone!="1" && choiceone!="2");
}
void cheatsheet(){
    printf("Before we start, would you like to look at a roadmap to see all endings?\n");
    printf("Or would you like to go in blind\n");
    do{
        printf("1:See roadmap  2:Go in blind\n");
        scanf("%s", &roadmapans);
    }while(roadmapans!="2" && roadmapans!="1");
    if (roadmapans=="1"){
        printf("     Option 1          Option 2          Option 3\n");
        printf("      /  |  \\           /  |  \\           /  |  \\   \n");
        printf("     /   |   \\         /   |   \\         /   |   \\  \n");
        printf("    1    2    3       1    2    3       1    2    3 \n");
        printf("    |    |    |       |    |    |       |    |    | \n");
        printf("   /|\\ End3 End4    End5 End6 End7    End8 End9 End10\n");
        printf("  / | \\\n");
        printf(" 1  3  2\n");
        printf(" | / \\ |\n");
        printf("End1 End2\n");
        printf("You have 10 seconds to look\n");
        sleep(10);
        printf("Ok, good luck\n");
        sleep(1);
        printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
    }
    if (roadmapans=="2"){
        printf("You have chosen to not look at the roadmap\n");
        sleep(1);
        printf("Good luck\n");
        sleep(1);
        printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
    }
}
//option1
void choice1(){
    printf("As you picked up the wallet, you couldn't help but feel uneasy as you held it in your hands.\n");
    sleep(speed);
    printf("It was almost as if some dark force was hiding inside...\n");
    sleep(speed);
    printf("It must just be your head, you haven't had your morning coffee anyways.\n");
    sleep(speed);
    printf("You gave the wallet to the man, but as you handed the wallet over, he slipped a card into your hand. It simplily had a phone number on it.\n");
    sleep(speed);
    printf("%s looked puzzled by the gesture,but the day went on, and after you returned from work, you looked at the card again. Should you...\n");
    do{
        printf("1:Call the number  2:Don't call it  3:BURN IT\n");
        scanf("%s", &choicetwo);
    }while(choicetwo!="3" && choicetwo!="1" && choicetwo!="2");
}
//option2
void choice2(){
    printf("You decided to keep the wallet for yourself, nothing wrong about that right?\n");
    sleep(speed);
    printf("When you arrived to work, your day continued as usual.\n");
    sleep(speed);
    printf("It was the usual office, with the usual people, nothing unusual at all...\n");
    sleep(speed);
    printf("However, after the day was over and everyone started to head home, you thought you heard a voice.\n");
    sleep(speed);
    printf("It called your name, %s, it whispered, you definitely heard it.\n", name);
    sleep(speed);
    printf("It sounded like it was coming from the wallet. Should you...\n");
    do{
        printf("1:Just open it!! Maybe it has candy inside 2:Don't open it and just get rid of it 3:Open it later\n");
        scanf("%s", &choicethree);
    }while(choicethree!="3" && choicethree!="1" && choicethree!="2");
}
//option3
void choice3(){
    printf("You decided to leave it, someone else will return it instead.\n");
    sleep(speed);
    printf("You went on about your day as usual, got to work, worked your boring job as CEO of %s Industries\n", name);
    sleep(speed);
    printf("Althouh it seemed like a fun job, it was a small business and all you did was paperwork all day\n");
    sleep(speed);
    printf("After it was 5:00, you started to head home as everyone else did.\n");
    sleep(speed);
    printf("You took the same path as you came, but to your surprise, the wallet was still there. Should you...\n");
    do{
        printf("1:Pick it up 2:Leave it for good 3:Pick it up and give it to a random person\n");
        scanf("%s", &choicefour);
    }while(choicefour!="3" && choicefour!="1" && choicefour!="2");
}\
//options for option 1
void choice11(){
    printf("You dialed the number... it rang 5 times before something picked up...\n");
    sleep(speed);
    printf("The voice was raspy. You could barely understand a word that was being said\n");
    sleep(speed);
    printf("You only made out a few words, 'join', 'power', and %s\n", name);
    sleep(speed);
    printf("You immediately hung up the phone, that was not something you should have dialed\n");
    sleep(speed);
    printf("Even though you probably just called the mafia, you were tired. You decided to go bed\n");
    sleep(speed);
    printf("In the middle of the night, you heard a loud noise that woke you up. It sounded like it came from the living room\n");
    sleep(speed);
    printf("You went to go check it out, but what you saw was truly horrifying...Do you want to know what it is...\n");
    do{
        printf("1:yes  2:no  3:maybe\n");
        scanf("%s", &yesno);
    }while(yesno!="3" && yesno!="1" &&yesno!="2");
}
//End3
void choice21(){
    printf("Yeah, it's probably best that you leave this number alone, after all, it was just a random man on the street\n");
    sleep(speed);
    printf("You set the card on the table and decided to go to bed\n");
    sleep(speed);
    printf("In the middle of the night, you heard a loud noise that woke you up. It sounded like it came from the living room\n");
    sleep(speed);
    printf("You got up to go see what the noise was... but there was nothing there\n");
    sleep(speed);
    printf("Everything seemed like it was in the same place as before, nothing on the floor or anything usual\n");
    sleep(speed);
    printf("You looked at the card you left on the table, and something was strange\n");
    sleep(speed);
    printf("The card was glowing\n It was a small glow but you definitely noticed it in the dark living room\n");
    sleep(speed);
    printf("You also noticed the table the card was upon was shaking, again not violently, but subtle\n");
    sleep(speed);
    printf("Next thing you heard was a loud boom and a blinding light\n");
    sleep(speed);
    printf("Police say it was a gas leak, but you knew otherwise\n");
    sleep(speed);
    printf("You were hospitalized for 2 years after the accident with severe burns and injuries\n");
    sleep(speed);
    printf("You would never fully recover, but the doctors said you were lucky to be alive\n");
    sleep(speed+1);
    if (speed==0){
        sleep(9);
    }
    printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
    printf("THE END\n");
}
//End4
void choice31(){
    printf("You decided to burn it... a strange choice, but probably a just one\n");
    sleep(speed);
    printf("You started a fire in your fireplace, and you made sure it was very hot\n");
    sleep(speed);
    printf("You threw the slip of paper in the fire, you felt like a huge load has been taken off your chest\n");
    sleep(speed);
    printf("As you watched the paper burn, something unusual happened..\n");
    sleep(speed);
    printf("The paper wasn't burning like usual, it was almost like it was resisting the burn\n");
    sleep(speed);    
    printf("Suddenly, a hand crawled out the paper\n");
    sleep(speed);
    printf("It was horrible, it must have crawled straight from hell, half was covered in scales, half spikes\n");
    sleep(speed);
    printf("Well you weren't about to find out because you kicked it as hard as you could back into the fire\n");
    sleep(speed);    
    printf("It burned and let out a chilling scream, back to hell it goes...\n");
    sleep(speed+1);
    if (speed==0){
        sleep(9);
    }    
    printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
    printf("THE END");
}
//End5
void choice12(){
    printf("You opened the wallet and...\n");
    sleep(speed);      
    printf("Nothing.. There was nothin in the wallet\n");
    sleep(speed);
    printf("It had the stucture of a normal wallet, except there was nothing in it\n");
    sleep(speed);
    printf("You decided to make nothing of it and return home\n");
    sleep(speed);
    printf("It has been a long day, so as soon as you arrived home, you crashed onto your bed\n");
    sleep(speed);
    printf("When you woke up the next morning, the wallet you found was gone\n");
    sleep(speed+1); 
    if (speed==0){
        sleep(9);
    }    
    printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
    printf("THE END\n");
}
//End6
void choice22(){
    printf("You decided it was best to just get rid of it\n");
    sleep(speed);
    printf("You could still hear it calling to you as you yeeted the wallet into the trash\n");
    sleep(speed);
    printf("You returned home from a long day at work, somehow feeling better than ever\n");
    sleep(speed);
    printf("That wallet was strange, but now you know it is safely in the trash, where it belongs\n");
    sleep(speed);
    printf("Guess that man won't get his wallet back though\n");
    sleep(speed+1);
    if (speed==0){
        sleep(9);
    }
    printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
    printf("THE END\n");
}
//End7
void choice32(){
    printf("You decided to open it when you returned home\n");
    sleep(speed);
    printf("When you arrived home, all you could think about was the wallet\n");
    sleep(speed);
    printf("You were so curious you had to open it right away\n");
    sleep(speed);
    printf("You opened the wallet, and at first you saw nothing..\n");
    sleep(speed);
    printf("Except..\n");
    sleep(speed);
    printf("There was a small light toward the bottom of the wallet\n");
    sleep(speed);
    printf("You picked it up and turns out it looked like a tiny egg\n");
    sleep(speed);
    printf("Before you could finish examining the egg, a crack appeared\n");
    sleep(speed);
    printf("The egg was hatching\n");
    sleep(speed);
    printf("Feeling curious about what will happen, you set it down and watched\n");
    sleep(speed);
    printf("When it hatched, a bright light blinded you\n");
    sleep(speed);
    printf("You felt pain in every nerve in your body, indescribable pain\n");
    sleep(speed);
    printf("Turns out you fell into a total shock from the pain and passed out\n");
    sleep(speed);
    printf("You never woke up...\n");
    sleep(speed+1);
    if (speed==0){
        sleep(9);
    }
    printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
    printf("THE END\n");
    sleep(10);
    printf("Mwhahaha\n");
    printf("You actually thought you would learn our secrets?\n");
    sleep(speed);
    printf("No one will know of our secret weapon\n");
    sleep(speed);
    printf("You were close..\n");
    sleep(speed);
    printf("But we made precautions\n");
    sleep(speed);
    printf("Better luck next time\n");
    sleep(speed);
    printf("Oh\n");
    sleep(speed);
    printf("You don't know who we are?\n");
    sleep(speed);
    printf("Well let me just say..\n");
    sleep(speed);
    printf("Come to Trashy Kid City when you want to talk to me\n");
}
//End8
void choice13(){
    printf("You decided to pick up the wallet, there's no way no one decided to pick up this wallet all day\n");
    sleep(speed);
    printf("You examined the wallet, just a plain black ordinary wallet, nothing strange\n");
    sleep(speed);
    printf("There was however, a single letter on the wallet, the letter T\n");
    sleep(speed);
    printf("You have no idea what it means, but it still made you curious\n");
    sleep(speed);
    printf("Turns out there was nothing inside, so you decided to keep the wallet for yourself, you needed a new one anyways\n");
    sleep(speed+1);
    if (speed==0){
        sleep(9);
    }
    printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
    printf("THE END\n");
}
//End9
void choice23(){
    printf("You decided to leave it for good\n");
    sleep(speed);
    printf("It has been a long day at work\n");
    sleep(speed);
    printf("You went to bed as soon as you got home\n");
    sleep(speed);
    printf("When you woke up, you started your day as usual\n");
    sleep(speed);
    printf("When you went to the tv to turn on the news, you noticed a familiar wallet on your table\n");
    sleep(speed);
    printf("There's no way that wallet should be in your house, but there it was\n");
    sleep(speed);
    printf("You wanted to open it even though you know you shouldn't\n");
    sleep(speed);
    printf("However, you overcame that curiousity and refused to open the wallet\n");
    sleep(speed);
    printf("You took the wallet and threw it in the garbage truck passing by your house\n");
    sleep(speed);
    printf("You never saw the wallet again\n");
    sleep(speed+1);
    if (speed==0){
        sleep(9);
    }
    printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
    printf("THE END\n");
}
//End10
void choice33(){
    printf("You decided to give it to a random person\n");
    sleep(speed);
    printf("Why?\n");
    sleep(speed);
    printf("I don't know, it's your choice\n");
    sleep(speed);
    printf("As you picked it up, you saw your friend %s\n",friend1);
    sleep(speed);
    printf("You decided to give it to %s, %s needs a new wallet anyways\n",friend1, friend1);
    sleep(speed);
    printf("You gave it to %s and they seemed very grateful, not your problem anymore\n",friend1);
    sleep(speed+1);
    if (speed==0){
        sleep(9);
    }
    printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
    printf("THE END\n");
}
//End1
void yesnoans1(){
    printf("You decided to know what it is, slowly turning the corner and...\n");
    sleep(speed);
    printf("Huh?\n");
    sleep(speed);
    printf("But it's only...\n");
    sleep(speed);
    printf("It's only your friend %s, %s is just standing there, back turned to you\n", friend1);
    sleep(speed);
    printf("You called out to %s, but got no response\n");
    sleep(speed);
    printf("%s turned around and\n");
    sleep(speed);
    printf("Suddenly started chasing you\n");
    sleep(speed);
    printf("Something didn't feel right, there was something off about %s");
    sleep(speed);
    printf("You turned around and started to run away\n");
    sleep(speed);
    printf("You took off toward the hallway, %s hot behind\n");
    sleep(speed);
    printf("You heard sirens in the distance, please be the police\n");
    sleep(speed);
    printf("You reached your front door, tried to open it but it was locked\n");
    sleep(speed);
    printf("The door was jammed!! How?!\n");
    sleep(speed);
    printf("You turned around, this was it\n");
    sleep(speed);
    if (speed==0){
        sleep(10);
    }
    printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
    printf("THE END\n");
}
//End2
void yesnoans2(){
    printf("That's a good choice, you decided to just pretend like you didn't see it and went back to bed\n");
    sleep(speed);
    if (speed==0){
        sleep(1);
    }
    printf("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
    printf("THE END\n");
}
//End1\2
void yesnoans3(){
    printf("Wha..\n");
    sleep(speed);
    printf("What does that even mean?\n");
    sleep(speed);
    printf("Uhhhhhh\n");
    sleep(speed);
    printf("I guess I'll just choose for you\n");
    sleep(speed);
    printf("Well\n");
    sleep(speed);
    printf("I chose %d for you\n", yesnorand);
    sleep(speed);
    if (speed==0){
        sleep(5);
    }
    if (yesnorand==1){
        yesnoans1();
    }
    if (yesnorand==2){
        yesnoans2();
    }
}
int main(){
    speedsetting();
    namesetting();
    cheatsheet();
    intro();
    if (choiceone=="1"){
        choice1();
    }
    if (choiceone=="2"){
        choice2();
    }
    if (choiceone=="3"){
        choice3();
    }
    if (choicetwo=="1"){
        choice11();
    }
    if (choicetwo=="2"){
        choice21();
    }
    if (choicetwo=="3"){
        choice31();
    }
    if (choicethree=="1"){
        choice12();
    }
    if (choicethree=="2"){
        choice22();
    }
    if (choicethree=="3"){
        choice32();
    }
    if (choicefour=="1"){
        choice13();
    }
    if (choicefour=="2"){
        choice23();
    }
    if (choicefour=="3"){
        choice33();
    }
    if (yesno=="3"){
        yesnoans3();
    }
    if (yesno=="1"){
        yesnoans1();
    }
    if (yesno=="2"){
        yesnoans2();
    }
}
