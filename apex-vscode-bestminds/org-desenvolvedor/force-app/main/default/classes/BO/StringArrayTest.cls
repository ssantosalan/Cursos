public with sharing class StringArrayTest{
    public static List<String> generateStringArray(Integer numberString){
        List<String> stringLista = new List<String>();
        for (Integer i = 0; i < numberString; i++){
            String nome = 'Test ' + i;
            stringLista.add(nome);
        }

        return stringLista;
    }

}