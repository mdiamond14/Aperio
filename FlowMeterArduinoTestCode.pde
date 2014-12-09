#include "LiquidCrystal.h"
LiquidCrystal lcd(7, 8, 9, 10, 11, 12);

#define FLOWSENSORPIN 2

volatile uint16_t pulses = 0;
volatile uint8_t lastflowpinstate;
volatile uint32_t lastflowratetimer = 0;
volatile float flowrate;
SIGNAL(TIMER0_COMPA_vect) {
  uint8_t x = digitalRead(FLOWSENSORPIN);
  
  if (x == lastflowpinstate) {
    lastflowratetimer++;
    return; 
  }
  
  if (x == HIGH) {
    pulses++;
  }
  lastflowpinstate = x;
  flowrate = 1000.0;
  flowrate /= lastflowratetimer
  lastflowratetimer = 0;
}

void useInterrupt(boolean v) {
  if (v) {
    OCR0A = 0xAF;
    TIMSK0 |= _BV(OCIE0A);
  } else {
    TIMSK0 &= ~_BV(OCIE0A);
  }
}

void setup() {
   Serial.begin(9600);
   Serial.print("Flow sensor test!");
   lcd.begin(16, 2);
   
   pinMode(FLOWSENSORPIN, INPUT);
   digitalWrite(FLOWSENSORPIN, HIGH);
   lastflowpinstate = digitalRead(FLOWSENSORPIN);
   useInterrupt(true);
}

void loop()                     // run over and over again
{ 
  lcd.setCursor(0, 0);
  lcd.print("Pulses:"); lcd.print(pulses, DEC);
  lcd.print(" Hz:");
  lcd.print(flowrate);
  //lcd.print(flowrate);
  Serial.print("Freq: "); Serial.println(flowrate);
  Serial.print("Pulses: "); Serial.println(pulses, DEC);
  

  float liters = pulses;
  liters /= 7.5;
  liters /= 60.0;

/*
  float liters = pulses;
  liters /= 8.1;
  liters -= 6;
  liters /= 60.0;
*/
  Serial.print(liters); Serial.println(" Liters");
  lcd.setCursor(0, 1);
  lcd.print(liters); lcd.print(" Liters        ");
 
  delay(100);
}
