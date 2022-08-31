import java.utils.scanner;

public class Main{
    public static void main(Strings[] args){
        Scanner inp = new Scanner(System.in);
        int n;
        n = inp.nextInt();
        int arr[] = new int[n];
        for(int i=0;i<n;i++){
            a[i] = n.nextInt;   
        }
        for (int i = 0; i < n; i++){  
            for (int j = i + 1; j < n; j++) 
        {  
            int temp = 0;                           
            if (arr[i] > arr[j]) 
            {         
                temp = arr[i];
                arr[i] = arr[j];            
                arr[j] = tmp;
            }
        }}
        count=0;
        for (int i=0;i<n;i++){
            for (int j=i+1;j<n;j++){
                if (arr[i]==arr[j]){
                    count++;
                }
                System.out.println(arr[i] +" is occuring "+count+" times");
                
            }
        }
        
    
        
    }
}