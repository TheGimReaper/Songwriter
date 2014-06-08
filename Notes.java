public class Note {

    private String name;
    private String accidental;
    private String duration;
    private int octave;
    private boolean isDotted;

    public Note() {
        name = "C";
        accidental = "n";
        duration = "q";
        octave = 4;
        isDotted = false;
    }
    public String getName() { return name; }
    public void setName( String n ) { name = n; }
    public String getAccidental() { return accidental; }
    public void setAccidental( String a ) { accidental = a; }
    public String getDuration() { return duration; }
    public void setDuration( String d ) { duration = d; }
    public int getOctave() { return octave; }
    public void setOctave( int o ) { octave =  o; }
    public boolean getIsDotted() { return isDotted; }
    public void setIsDotted( boolean b ) { isDotted = b; }
    public String stringify() {
        String retStr = name + octave + duration + accidental;
        if( isDotted ) {
            retStr = retStr + ".";
        }
        return retStr;
    }
    public int getBeatVal( String note ) {
        if( note.equals( "w" ) ) {
            return 32;
        }
        else if( note.equals( "h" ) ) {
            return 16;
        }
        else if( note.equals( "q" ) ) {
            return 8;
        }
        else if( note.equals( "i" ) ) {
            return 4;
        }
        else if( note.equals( "x" ) ) {
            return 2;
        }
        else {
            return 1;
        }
    }
    public int getBeatVal() {
        return getBeatVal( duration );
    }
}





