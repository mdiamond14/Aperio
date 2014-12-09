#include <math.h>
int photoresistorPIN =0;
float Time;
int Count; 
float bright;
int TimeBetweenReadings = 500; 
int ReadingNumber=0;


void setup() 
{
  Serial.begin(9600);
  Serial.println("Brightness taken using Ardunio");
  Serial.println("Data's Set");
  Serial.print("Time");
  Serial.print("\t");
  Serial.println ("brightness"); 
  Serial.print("seconds");
  Serial.print("\t");
}
void loop() 
{
  Serial.print(ReadingNumber/1000.0*TimeBetweenReadings); 
  Count=analogRead(photoresistorPIN);      
  bright=photoresistor(Count);                      
  Serial.print("\t");
  Serial.println(bright,1);                             
  delay(TimeBetweenReadings); 
  ReadingNumber++;  
}
float photoresistor(int Raw) 
{
 
 long Resistance; 
 float Resistor = 15000; 
  float bright;  
  Resistance=( Resistor*Raw /(1024-Raw)); 
  bright = log(Resistance); 
  bright = 1 / (0.00102119 + (0.000222468 * bright) + (0.000000133342 * bright * bright * bright));
  return bright;                                   
}
}