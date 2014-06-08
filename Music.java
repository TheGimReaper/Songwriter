import org.jfugue.Player;
import java.util.*;
public class Music {

    private ArrayList< LinkedList < String > > layers = new ArrayList< LinkedList < String > >();
    private Scanner in = new Scanner( System.in );
    private LinkedList< String > Current;

    public Music() {
    }

    public LinkedList< String > getCurrent() {
        return Current;
    }

     public void setCurrent( LinkedList< String > l ) {
         Current = l;
     }

    public void setCurrent() {
        System.out.println( "Switching current layer..." );
        int goToLayerNum = in.nextInt();
        if( goToLayerNum >= layers.size() || goToLayerNum < 0 ) {
            System.out.println( "invalid layer" );
        }
        else{
            setCurrent( layers.get( goToLayerNum ) );
            System.out.println( "New Current : " + this.getCurrent() );
        }
    }

    public void addLayer() {
        LinkedList< String > temp = new LinkedList< String >();
        System.out.println( "Making new layer..." );
        System.out.println( "Enter first note." ) ;
        String firstNote = in.next();
        temp.add( firstNote );
        String nextNote = "";
        while( !nextNote.equals( "done" ) ) {
            System.out.println( "Enter next note or type \"done\"." );
            nextNote = in.next();
            temp.addEnd( nextNote );
        }
        setCurrent( temp );
        System.out.println( temp );
        layers.add( temp );
        //System.out.println();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
    }

    public String stringify( LinkedList< String > l ) {
        String retStr = "";
        for( int i = 0; i < l.length() - 1; i++ ) {
            retStr = retStr + " " + l.get( i );
        }
        return retStr;
    }

    public void printAllLayers() {
        for( int i = 0; i < layers.size(); i++ ) {
            System.out.println( i + " : " + stringify( layers.get( i ) ) + " " );
        }
    }

    public void printLayer( LinkedList< String > l ) {
        for( int i = 0; i < l.length() - 1; i++ ) {
            System.out.print( i + ":" + l.get( i ) + " ");
        }
    }
    /*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    public void removeLayer() {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
        LinkedList< String > temp = new LinkedList< String >();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
        if( layers.size() == 1 ) {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
            layers.remove( 0 );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
            layers.add( temp );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
            Current = temp;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
        }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
        else if( Current ==                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
    }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
    */
    public void remove() {
        System.out.println( "Removing..." );
        printAllLayers();
        System.out.println( "From which layer do you want to remove from?" );
        //System.out.println();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
        int layerNum = in.nextInt();
        if( layerNum >= layers.size() || layerNum < 0 ) {
            System.out.println( "invalid layer number" );
            return;
        }
        printLayer( layers.get( layerNum ) );
        System.out.println( "Which note do you want to delete?" );
        int notePos = in.nextInt();
        if ( notePos >= layers.get( layerNum ).length() || notePos < 0 ) {
            System.out.println( "invalid note position" );
            return;
        }
        layers.get( layerNum ).remove( notePos );
        System.out.println( layers.get( layerNum ) );
    }

    public void insert() {
        System.out.println( "Inserting..." );
        printAllLayers();
        System.out.println( "Which layer do you want to add to?" );
        int layerNum = in.nextInt();
        if( layerNum >= layers.size() || layerNum < 0 ) {
            System.out.println( "invalid layer number" );
            return;
        }
        printLayer( layers.get( layerNum ) );
        System.out.println( "Where do you want to add notes?" );
        int notePos = in.nextInt();
        if( notePos >= layers.get( layerNum ).length() || notePos < 0 ) {
            System.out.println( "invalid note position" );
            return;
        }
        System.out.println( "Type in the note you want to add" );
        String input = "";
        input = in.next();
        layers.get( layerNum ).add( input, notePos );
        printLayer( layers.get( layerNum ) );
    }
    /*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    public void flatify() {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
        System.out.println( "Flatifying..." );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
        System.out.println( "Choose your layer" );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
        int layerNum = in.nextInt();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
        if( layerNum >= layers.size() || layerNum < 0 ) {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
            System.out.println( "invalid layer" );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
            return;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
        }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
        printLayer( layers.get( layerNum ) );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
        System.out.println( "Type in the position of the note you want to make flat" );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
        int notePos = in.nextInt();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
        if( notePos >= layers.get( layerNum ).length() || notePos < 0 ) {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
            System.out.println( "invalid note position" );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
            return;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
        }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
        layers.get( layerNum ).get( notePos ).setData( layers.get( layerNum ).getData() + "b" );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
        printLayer( layers.get( layerNum ) );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
    }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
    */
    /*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
    public void sharpify() {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
        System.out.println( "Sharpifying..." );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
        System.out.println( "Choose your layer");                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
        int layerNum = in.nextInt();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
        if( layerNum >= layers.size() || layerNum < 0 ) {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
            System.out.println("invalid note" );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
            return;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
        }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
        printLayer( layers.get( layerNum ) );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
        System.out.println( "Type in the position of the note you want to make flat" );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
        int notePos = in.nextInt();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
        layers.get( layerNum ).setData(layers.get( layerNum ).getData() + b );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
        printLayer( layers.get( layerNum ) );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
    }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
    */


        //Note: Should it insert and remove from the Current only?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        

    public static void main( String[] args ) {
        Music testCase = new Music();
        Player player = new Player();
        testCase.addLayer();
        //      testCase.addLayer();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
        //      testCase.addLayer();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
        //testCase.insert();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
        //      System.out.println( "Current : " + testCase.getCurrent() );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
        //      testCase.addLayer();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
        //      testCase.setCurrent();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
        //System.out.println( testCase.stringify( testCase.getCurrent() ) );                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
        player.play( testCase.stringify( testCase.getCurrent() ) );
        player.close();
    }

}










