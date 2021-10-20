package cursopooaula07a;

public class CursoPOOAula07a {

    public static void main(String[] args) {
        Lutador l[] = new Lutador[6];
        l[0] = new Lutador("Pretty Boy", "França", 31, 1.75f, 70.9f, 11, 2, 1);
        l[1] = new Lutador("Putscript", "Brasil", 39, 1.70f, 73.9f, 33, 0, 0);
        l[2] = new Lutador("SnapShadow", "EUA", 31, 1.75f, 68.9f, 35, 2, 1);
        l[3] = new Lutador("DeadCode", "Austrália", 39, 1.70f, 73.9f, 13, 0, 2);
        l[4] = new Lutador("UFOCobol", "Brasil", 31, 1.75f, 68.9f, 5, 4, 3);
        l[5] = new Lutador("Nerdaart", "EUA", 39, 1.70f, 73.9f, 12, 2, 4);
        
        Luta UEC01 = new Luta();
        UEC01.marcarLuta(l[0], l[1]);
        UEC01.lutar();
        l[0].status();
        l[1].status();
    }

}
