void verifierMotdepasse(String mp) {
    if (mp.length<6){
        throw Exception('Le mot de paase est trop court.');
    }
}

void main() {
    try{
        verifierMotdepasse('abc');
        } catch (e){
            print('Erreur : $e');
        }   
     }
