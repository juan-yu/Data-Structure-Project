import java.util.ArrayList;

public class Sort {
    ArrayList<WebNode> lst;
    public Sort(ArrayList<WebNode>lst ){
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
                if(lst.get(j).getNodeScore()>lst.get(rightbound).getNodeScore()) {
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
        WebNode temp = lst.get(aIndex);
        lst.set(aIndex, lst.get(bIndex));
        lst.set(bIndex, temp);
    }

}
