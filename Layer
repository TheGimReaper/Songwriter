public class Layer {

    private String instrument;
    private LinkedList< Note > line;
    private int tsNum;
    private String tsDenom;

    public Layer() {
        instrument = "";
        line = new LinkedList< Note >();
        tsNum = 4;
        tsDenom = 4;
    }

    public void setInstrument( String i ) {
        instrument = i;
    }
    public String getInstrument() {
        return instrument;
    }
    public void setLine( LinkedList< Note > l ) {
        line = l;
    }
    public LinkedList< Note > getLine() {
        return line;
    }
    public void setTSNum( int i ) {
        tsNum = i;
    }
    public int getTSnum() {
        return tsNum;
    }
    public void setTSDenom( String d ) {
        tsDenom = d;
    }
    public String getTSDenom() {
        return tsDenom;
    }
    public String calcBeats() {
        return getBeatVal( tsDenom ) * tsNum;
    }

    // assumes that the each of the notes evenly fits into the measure                                                                                                                                                                                           
    public String stringify() {
        int beatCount = 0;
        String retStr = "";
        if( !instrument.equals( "" ) ) {
            retStr = "I[" + instrument + "]";
        }
        for( int i = 0; i < l.length() - 1; i++ ) {
            beatCount += l.get(i).getBeatVal;
            retStr = retStr + " " + l.get( i ).stringify();
            if( beatCount == calcBeats() ) {
                retStr = retStr + " | ";
                beatCount = 0;
            }
        }
        return retStr;
    }

}








