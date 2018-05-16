package cn.bryans.springboot.ms_server.aop;

/**
 * @author KeSong Zeng
 * @version V1.0
 * @e-mail kesongzeng@163.com
 * @date 2018/4/13 18:58
 * @Description:
 */
class BTree{
    private Object value;
    private BTree rNode;
    private BTree lNode;

    public Object getValue() {
        return value;
    }

    public void setValue(Object value) {
        this.value = value;
    }

    public BTree getrNode() {
        return rNode;
    }

    public void setrNode(BTree rNode) {
        this.rNode = rNode;
    }

    public BTree getlNode() {
        return lNode;
    }

    public void setlNode(BTree lNode) {
        this.lNode = lNode;
    }
}
public class Main {
    public static void main(String[] args) {
        BTree node1 = new BTree();
        node1.setValue("a");
        BTree node2 = new BTree();
        node2.setValue("b");
        BTree tree = new BTree();
        tree.setValue("c");
        tree.setlNode(node1);
        tree.setrNode(node2);
        preOrder(tree);
    }
    //递归实现
    public static void preOrder(BTree tree){
        if(tree == null) {
            return;
        }
        visit(tree.getValue());
        preOrder(tree.getlNode());
        preOrder(tree.getrNode());

    }
    //非递归
    public static void normalOrder(BTree tree){

    }

    public static void visit(Object o){
        System.out.println(o);;
    }
}
