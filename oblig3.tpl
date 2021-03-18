/** 
 *   Skjelett for obligatorisk oppgave nr 3 i PROG1003 - OOP.
 *
 *   Programmet inneholder en oversikt alle kjøretøyene til en privatperson.
 *   Kjøretøyene er identifisert via sitt unike chassisnummer (åtte sifre),
 *   hvor kjøretøyene er lagret i en <map> og nummeret er key'en.
 *   Brukeren/programmet skal kunne:
 *       - se ALLE kjøretøyene som er lagret i datastrukturen (map'en)
 *       - legge inn et nytt kjøretøy
 *       - endre data om et gitt kjøretøy
 *       - skrive datastruktur til fil
 *       - lese datastruktur fra fil
 *
 *   @file    OBLIG3.TPL
 *   @author  Peter Bøhncke Nes, Kristian Jegerud & Frode Haug, NTNU
 */


#include <iostream>              //  cout, cin
#include <fstream>               //  ifstream, ofstream
#include <string>
#include <map>
#include "LesData2.h"            //  Verktøykasse for lesing av diverse data
using namespace std;


/**
 *  Kjøretøy (med merke).
 */
class Kjoretoy {
  private:
      string merke;
  public:
      Kjoretoy()  {  merke = "";  }
      Kjoretoy(ifstream & inn);
      virtual void endreData() = 0;
      virtual void lesData();
      virtual void skrivData() const;
      virtual void skrivTilFil(ofstream & ut) const;
};


/**
 *  Bil (med antall seter og stasjonsvogn/ikke stasjonsvogn).
 */
class Bil : public Kjoretoy {
  private:
      int  antallSeter;
      bool stasjonsvogn;
  public:
      Bil()  {  antallSeter = 0;  stasjonsvogn = false;  }
      Bil(ifstream & inn);
      virtual void endreData();
      virtual void lesData();
      virtual void skrivData() const;
      virtual void skrivTilFil(ofstream & ut) const;
};


/**
 *  Motorsykkel (med motoreffekt).
 */
class Motorsykkel : public Kjoretoy {
  private:
      int motoreffekt;
  public:
      Motorsykkel()  { motoreffekt = 0;  }
      Motorsykkel(ifstream & inn);
      virtual void endreData();
      virtual void lesData();
      virtual void skrivData() const;
      virtual void skrivTilFil(ofstream & ut) const;
};


/**
 *  Lastebil (med lengde og makslast).
 */
class Lastebil : public Kjoretoy {
  private:
      int lengde;
      int maksLast;
  public:
      Lastebil()  {  lengde = 0;  maksLast = 0;  }
      Lastebil(ifstream & inn);
      virtual void endreData();
      virtual void lesData();
      virtual void skrivData() const;
      virtual void skrivTilFil(ofstream & ut) const;
};


void endreEtKjoretoy();
void lesFraFil();
void nyttKjoretoy();
void skrivAlleKjoretoy();
void skrivMeny();
void skrivTilFil();


map <int, Kjoretoy*> gKjoretoy;    ///<  Datastrukturen med alle kjøretøyene.


/**
 *  Hovedprogrammet:
 */
int main(void)  {
    char kommando;

    lesFraFil();
    skrivMeny();
    kommando = lesChar("Kommando");

    while (kommando != 'Q') {
        switch (kommando) {
          case 'N':  nyttKjoretoy();           break;
          case 'A':  skrivAlleKjoretoy();      break;
          case 'E':  endreEtKjoretoy();        break;
          default:   skrivMeny();              break;
        }
        kommando = lesChar("\nKommando");
    }
    skrivTilFil();
    return 0;
}


// ---------------------------------------------------------------------------
//                       DEFINISJON AV KLASSE-FUNKSJONER:
// ---------------------------------------------------------------------------

/**
 *  Leser merket på kjøretøy fra fil.
 *
 *  @param   inn  - Filobjektet egne data leses inn fra
 */
Kjoretoy::Kjoretoy(ifstream & inn) {
    //  LAG INNMATEN
}


/**
 *  Leser merket på kjøretøyet fra brukeren/tastaturet.
 */
void Kjoretoy::lesData() {
    //  LAG INNMATEN
}


/**
 *  Skriver ut merket på kjøretøyet på skjermen. 
 */
void Kjoretoy::skrivData() const {
    //  LAG INNMATEN
}


/**
 *  Skriver ut merket på kjøretøyet til fil.
 *
 *  @param   ut  - Filobjektet egne data skrives ut til
 */
void Kjoretoy::skrivTilFil(ofstream & ut) const {
    //  LAG INNMATEN
}

// ---------------------------------------------------------------------------

/**
 *  Leser antall seter og om det er en stasjonsvogn fra fil.
 *
 *  @param   inn  - Filobjektet egne data leses inn fra
 */
Bil::Bil(ifstream & inn) : Kjoretoy(inn) {
    //  LAG INNMATEN
}


/**
 *  Gir brukeren mulighet til å endre på alle egne data.
 *
 *  @see  skrivData()
 */
void Bil::endreData() {
    //  LAG INNMATEN
}


/**
 *  Leser baseklassens data og ALLE egne data.
 *
 *  @see   Kjoretoy::lesData()
 */
void Bil::lesData() {
    //  LAG INNMATEN
}


/**
 *  Skriver baseklassens data og ALLE egne data.
 *
 *  @see  Kjoretoy::skrivData()
 */
void Bil::skrivData() const {
    //  LAG INNMATEN
}


/**
 *  Skriver 'B', baseklassens data og ALLE egne data til fil.
 *
 *  @param   ut  - Filobjektet egne data skrives ut til
 *  @see     Kjoretoy::skrivTilTil(...)
 */
void Bil::skrivTilFil(ofstream & ut) const {
    //  LAG INNMATEN
}

// ---------------------------------------------------------------------------

/**
 *  Leser motoreffekt fra fil. 
 *
 *  @param   inn  - Filobjektet egne data leses inn fra
 */
Motorsykkel::Motorsykkel(ifstream & inn) : Kjoretoy(inn) {
    //  LAG INNMATEN
}


/**
 *  Tilbyr brukeren å endre på alle egne data.
 *
 *  @see  skrivData()
 */
void Motorsykkel::endreData() {
    //  LAG INNMATEN
}


/**
 *  Leser baseklassens data og motoreffekt fra brukeren.
 *
 *  @see   Kjoretoy::lesData()
 */
void Motorsykkel::lesData() {
    //  LAG INNMATEN
}


/**
 *  Skriver baseklassens data og motoreffekt på skjermen.
 *
 *  @see  Kjoretoy::skrivData()
 */
void Motorsykkel::skrivData() const {
    //  LAG INNMATEN
}


/**
 *  Skriver 'M', baseklassens data og motoreffekt på fil.
 *
 *  @param   ut  - Filobjektet egne data skrives ut til
 *  @see     Kjoretoy::skrivTilTil(...)
 */
void Motorsykkel::skrivTilFil(ofstream & ut) const {
    //  LAG INNMATEN
}

// ---------------------------------------------------------------------------

/**
 *  Leser legnde og makslast fra fil. 
 *
 *  @param   inn  - Filobjektet egne data leses inn fra
 */
Lastebil::Lastebil(ifstream & inn) : Kjoretoy(inn) {
    //  LAG INNMATEN
}


/**
 *  Gir brukeren mulighet til å endre på alle egne data.
 *
 *  @see  skrivData()
 */
void Lastebil::endreData() {
    //  LAG INNMATEN
}


/**
 *  Leser baseklassens data, lengde og makslast fra brukeren.
 *
 *  @see   kjoretoy::lesData()
 */
void Lastebil::lesData() {
    //  LAG INNMATEN
}


/**
 *  Skriver baseklassens data, lengde og makslast på skjermen.
 *
 *  @see  Kjoretoy::skrivData()
 */
void Lastebil::skrivData() const {
    //  LAG INNMATEN
}


/**
 *  Skriver 'A', baseklassens data, lengde og makslast til fil.
 *
 *  @param   ut  - Filobjektet egne data skrives ut til
 *  @see     Kjoretoy::skrivTilTil(...)
 */
void Lastebil::skrivTilFil(ofstream & ut) const {
    //  LAG INNMATEN
}


// ---------------------------------------------------------------------------
//                       DEFINISJON AV ANDRE FUNKSJONER:
// ---------------------------------------------------------------------------

/**
 *  Lar brukeren (hvis mulig) endre dataene for en subklasse.
 *
 *  @see   virtual Kjoretoy::endreData()
 */
void endreEtKjoretoy() {
    //  LAG INNMATEN
}


/**
 *  Leser kjøretøy inn fra fil, og legger de inn i 'gKjoretoy'.
 *
 *  @see  Bil::Bil(...)
 *  @see  Lastebil::Lastebil(...)
 *  @see  Motorsykkel::Motorsykkel(...)
 */
void lesFraFil() {
    //  LAG INNMATEN
}


/**
 *  Legger inn et nytt kjøretøy hvis det er plass i datastrukturen.
 *
 *  @see  Bil::Bil()
 *  @see  Lastebil::Lastebil()
 *  @see  Motorsykkel::Motorsykkel()
 *  @see  virtual Kjoretoy::lesData()
 */
void nyttKjoretoy() {
    //  LAG INNMATEN
}


/**
 *  Skriver all data om alle kjøretøyene.
 *
 *  @see   virtual Kjoretoy::skrivData()
 */
void skrivAlleKjoretoy() {
    //  LAG INNMATEN
}


/**
 *  Skriver programmets menyvalg/muligheter på skjermen.
 */
void skrivMeny() {
    cout << "\nFølgende kommandoer er tilgjengelig:\n"
         << "\tN - Nytt kjoretøy (bil, lastebil eller motorsykkel)\n"
         << "\tA - Skriv alle kjoretoyene\n"
         << "\tE - Endre et gitt kjoretoy\n"
         << "\tQ - Quit / avslutt\n\n";
}


/**
 *  Skriver hele datastrukturen til fil.
 *
 *  @see   virtual Kjoretoy::skrivTilFil(...)
 */
void skrivTilFil() {
    //  LAG INNMATEN
}
