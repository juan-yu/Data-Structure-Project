import java.util.ArrayList;

public class Sort {
    ArrayList<WebTree> lst;
    public Sort(ArrayList<WebTree>lst ){
            this.lst = lst;
    }

    public void sort(){
        if(lst.size() == 0)
        {
            System.out.println("InvalidOperation");
        }
        else
        {
            quickSort(0, lst.size()-1);
        }
    }

    private void quickSort( int leftbound, int rightbound){
        //1. Implement QuickSort algorithm
        if(leftbound<rightbound) {
            int i = leftbound-1;
            for(int j=leftbound; j<rightbound ;j++) {
                if(lst.get(j).root.getNodeScore()>lst.get(rightbound).root.getNodeScore()) {
                    i++;
                    swap(i,j);
                }
            }
            i++;
            swap(i,rightbound);
            quickSort(leftbound,i-1);
            quickSort(i+1,rightbound);
        }
    }

    private void swap( int aIndex, int bIndex){
        WebTree temp = lst.get(aIndex);
        lst.set(aIndex, lst.get(bIndex));
        lst.set(bIndex, temp);
    }

}
