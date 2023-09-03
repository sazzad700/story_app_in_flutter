import 'dart:io';

import 'story.dart';


class StoryBrain{

  int _StoryNumber=0;

List<Story> _StoryData=[
  Story(
      storyText:'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide '
'brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',

      Choice1:'I\'ll hop in. Thanks for the help!',
      Choice2:'Better ask him if he\'s a murderer first.'
      ),

Story(
     storyText: 'He nods slowly, unphased by the question.',
     Choice1: 'At least he\'s honest. I\'ll climb in.',
     Choice2: 'Wait, I know how to change a tire.'),
 Story(
     storyText:
     'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
     Choice1: 'I love Elton John! Hand him the cassette tape.',
     Choice2: 'It\'s him or me! You take the knife and stab him.'),
 Story(
     storyText:
     'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
     Choice1: 'Restart',
     Choice2: ''),
 Story(
     storyText:
     'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
     Choice1: 'Restart',
     Choice2: ''),
 Story(
     storyText:
     'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
     Choice1: 'Restart',
     Choice2: '')

];

String?  geStroy(){
  return _StoryData[_StoryNumber].storyText;
}

String? getChoice1(){
  return _StoryData[_StoryNumber].Choice1;
}
String? getChoice2(){
  return _StoryData[_StoryNumber].Choice2;
}


void NextStory(int Userinput){
  if(Userinput==1 && _StoryNumber==0){
    _StoryNumber=2;
  }else if(Userinput==2 && _StoryNumber==0){
    _StoryNumber=1;
  }else if(Userinput==1 && _StoryNumber==2){
    _StoryNumber=5;
  }else if(Userinput==2 && _StoryNumber==2){
    _StoryNumber=4;
  }else if(Userinput==1 && _StoryNumber==1){
    _StoryNumber=2;
  }else if(Userinput==2 && _StoryNumber==1){
    _StoryNumber=3;
  }else{
    restart();
  }

}
void restart(){
  _StoryNumber=0;
}

bool Buttonvisible(){
  if(_StoryNumber==0 || _StoryNumber==1 || _StoryNumber==2){
    return true;
  }else{
    return false;
  }
}
}