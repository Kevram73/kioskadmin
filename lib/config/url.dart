class Url{
  //Base url 
  static const apiUrl = "http://testing.pressingmobile-tg.mon.world/api";
  // login Collector
  static final loginCollector = apiUrl+"/login/collector";

  // Forget password
  static final resetPassword = "/reset-password";

  // Reinit password
  static final reinitPassword = "/reinit-password";

  // Solde
  static final getSolde = apiUrl + "/solde";

  // Liste des recents versements
  static final lastVersement = apiUrl + "/versements/lastTen";

  // Liste des versements filtrés
  static final filterVersement = apiUrl + "/versements/filter";

  
}