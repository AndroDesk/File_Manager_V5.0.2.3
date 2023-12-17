.class public Lorg/jaudiotagger/DefaultMutableTreeNode;
.super Ljava/lang/Object;
.source "DefaultMutableTreeNode.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/jaudiotagger/MutableTreeNode;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/DefaultMutableTreeNode$PathBetweenNodesEnumeration;,
        Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration;,
        Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;,
        Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;
    }
.end annotation


# static fields
.field public static final EMPTY_ENUMERATION:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Lorg/jaudiotagger/TreeNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowsChildren:Z

.field public children:Ljava/util/Vector;

.field public parent:Lorg/jaudiotagger/MutableTreeNode;

.field public transient userObject:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/jaudiotagger/DefaultMutableTreeNode$1;

    invoke-direct {v0}, Lorg/jaudiotagger/DefaultMutableTreeNode$1;-><init>()V

    sput-object v0, Lorg/jaudiotagger/DefaultMutableTreeNode;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jaudiotagger/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->parent:Lorg/jaudiotagger/MutableTreeNode;

    iput-boolean p2, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->allowsChildren:Z

    iput-object p1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    if-lez v0, :cond_1c

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v1, "userObject"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    :cond_1c
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    instance-of v2, v0, Ljava/io/Serializable;

    if-eqz v2, :cond_17

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "userObject"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object v0, v2, v1

    goto :goto_19

    :cond_17
    new-array v2, v1, [Ljava/lang/Object;

    :goto_19
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/jaudiotagger/MutableTreeNode;)V
    .registers 3

    if-eqz p1, :cond_12

    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    if-ne v0, p0, :cond_12

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->insert(Lorg/jaudiotagger/MutableTreeNode;I)V

    goto :goto_19

    :cond_12
    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->insert(Lorg/jaudiotagger/MutableTreeNode;I)V

    :goto_19
    return-void
.end method

.method public breadthFirstEnumeration()Ljava/util/Enumeration;
    .registers 2

    new-instance v0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration;

    invoke-direct {v0, p0, p0}, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration;-><init>(Lorg/jaudiotagger/DefaultMutableTreeNode;Lorg/jaudiotagger/TreeNode;)V

    return-object v0
.end method

.method public children()Ljava/util/Enumeration;
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    if-nez v0, :cond_7

    sget-object v0, Lorg/jaudiotagger/DefaultMutableTreeNode;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-object v0

    :cond_7
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/DefaultMutableTreeNode;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jaudiotagger/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    iput-object v1, v0, Lorg/jaudiotagger/DefaultMutableTreeNode;->parent:Lorg/jaudiotagger/MutableTreeNode;
    :try_end_b
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public depthFirstEnumeration()Ljava/util/Enumeration;
    .registers 2

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->postorderEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllowsChildren()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->allowsChildren:Z

    return v0
.end method

.method public getChildAfter(Lorg/jaudiotagger/TreeNode;)Lorg/jaudiotagger/TreeNode;
    .registers 3

    if-eqz p1, :cond_22

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getIndex(Lorg/jaudiotagger/TreeNode;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1a

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_18

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getChildAt(I)Lorg/jaudiotagger/TreeNode;

    move-result-object p1

    return-object p1

    :cond_18
    const/4 p1, 0x0

    return-object p1

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "node is not a child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getChildAt(I)Lorg/jaudiotagger/TreeNode;
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/TreeNode;

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "node has no children"

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getChildBefore(Lorg/jaudiotagger/TreeNode;)Lorg/jaudiotagger/TreeNode;
    .registers 3

    if-eqz p1, :cond_1c

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getIndex(Lorg/jaudiotagger/TreeNode;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_14

    if-lez p1, :cond_12

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getChildAt(I)Lorg/jaudiotagger/TreeNode;

    move-result-object p1

    return-object p1

    :cond_12
    const/4 p1, 0x0

    return-object p1

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument is not a child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getChildCount()I
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getDepth()I
    .registers 4

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->breadthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    :cond_10
    if-eqz v1, :cond_1e

    check-cast v1, Lorg/jaudiotagger/DefaultMutableTreeNode;

    invoke-virtual {v1}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getLevel()I

    move-result v0

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getLevel()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_1e
    new-instance v0, Ljava/lang/Error;

    const-string v1, "nodes should be null"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFirstChild()Lorg/jaudiotagger/TreeNode;
    .registers 3

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getChildAt(I)Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    return-object v0

    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "node has no children"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFirstLeaf()Lorg/jaudiotagger/DefaultMutableTreeNode;
    .registers 3

    move-object v0, p0

    :goto_1
    invoke-virtual {v0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getFirstChild()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/DefaultMutableTreeNode;

    goto :goto_1

    :cond_e
    return-object v0
.end method

.method public getIndex(Lorg/jaudiotagger/TreeNode;)I
    .registers 3

    if-eqz p1, :cond_11

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultMutableTreeNode;->isNodeChild(Lorg/jaudiotagger/TreeNode;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLastChild()Lorg/jaudiotagger/TreeNode;
    .registers 3

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getChildAt(I)Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "node has no children"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastLeaf()Lorg/jaudiotagger/DefaultMutableTreeNode;
    .registers 3

    move-object v0, p0

    :goto_1
    invoke-virtual {v0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getLastChild()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/DefaultMutableTreeNode;

    goto :goto_1

    :cond_e
    return-object v0
.end method

.method public getLeafCount()I
    .registers 4

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->breadthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/TreeNode;

    invoke-interface {v2}, Lorg/jaudiotagger/TreeNode;->isLeaf()Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1a
    const/4 v0, 0x1

    if-lt v1, v0, :cond_1e

    return v1

    :cond_1e
    new-instance v0, Ljava/lang/Error;

    const-string v1, "tree has zero leaves"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLevel()I
    .registers 3

    const/4 v0, 0x0

    move-object v1, p0

    :goto_2
    invoke-interface {v1}, Lorg/jaudiotagger/TreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v1

    if-eqz v1, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    return v0
.end method

.method public getNextLeaf()Lorg/jaudiotagger/DefaultMutableTreeNode;
    .registers 3

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/DefaultMutableTreeNode;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getNextSibling()Lorg/jaudiotagger/DefaultMutableTreeNode;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getFirstLeaf()Lorg/jaudiotagger/DefaultMutableTreeNode;

    move-result-object v0

    return-object v0

    :cond_15
    invoke-virtual {v0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getNextLeaf()Lorg/jaudiotagger/DefaultMutableTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public getNextNode()Lorg/jaudiotagger/DefaultMutableTreeNode;
    .registers 3

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getNextSibling()Lorg/jaudiotagger/DefaultMutableTreeNode;

    move-result-object v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/DefaultMutableTreeNode;

    :goto_12
    if-nez v0, :cond_16

    const/4 v0, 0x0

    return-object v0

    :cond_16
    invoke-virtual {v0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getNextSibling()Lorg/jaudiotagger/DefaultMutableTreeNode;

    move-result-object v1

    if-eqz v1, :cond_1d

    return-object v1

    :cond_1d
    invoke-virtual {v0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/DefaultMutableTreeNode;

    goto :goto_12

    :cond_24
    return-object v0

    :cond_25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getChildAt(I)Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/DefaultMutableTreeNode;

    return-object v0
.end method

.method public getNextSibling()Lorg/jaudiotagger/DefaultMutableTreeNode;
    .registers 3

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/DefaultMutableTreeNode;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getChildAfter(Lorg/jaudiotagger/TreeNode;)Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/DefaultMutableTreeNode;

    :goto_10
    if-eqz v0, :cond_21

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->isNodeSibling(Lorg/jaudiotagger/TreeNode;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_21

    :cond_19
    new-instance v0, Ljava/lang/Error;

    const-string v1, "child of parent is not a sibling"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_21
    return-object v0
.end method

.method public getParent()Lorg/jaudiotagger/TreeNode;
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->parent:Lorg/jaudiotagger/MutableTreeNode;

    return-object v0
.end method

.method public getPath()[Lorg/jaudiotagger/TreeNode;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getPathToRoot(Lorg/jaudiotagger/TreeNode;I)[Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    return-object v0
.end method

.method public getPathToRoot(Lorg/jaudiotagger/TreeNode;I)[Lorg/jaudiotagger/TreeNode;
    .registers 5

    if-nez p1, :cond_9

    if-nez p2, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    new-array p1, p2, [Lorg/jaudiotagger/TreeNode;

    goto :goto_18

    :cond_9
    add-int/lit8 p2, p2, 0x1

    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getPathToRoot(Lorg/jaudiotagger/TreeNode;I)[Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    array-length v1, v0

    sub-int/2addr v1, p2

    aput-object p1, v0, v1

    move-object p1, v0

    :goto_18
    return-object p1
.end method

.method public getPreviousLeaf()Lorg/jaudiotagger/DefaultMutableTreeNode;
    .registers 3

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/DefaultMutableTreeNode;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getPreviousSibling()Lorg/jaudiotagger/DefaultMutableTreeNode;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getLastLeaf()Lorg/jaudiotagger/DefaultMutableTreeNode;

    move-result-object v0

    return-object v0

    :cond_15
    invoke-virtual {v0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getPreviousLeaf()Lorg/jaudiotagger/DefaultMutableTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousNode()Lorg/jaudiotagger/DefaultMutableTreeNode;
    .registers 3

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/DefaultMutableTreeNode;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getPreviousSibling()Lorg/jaudiotagger/DefaultMutableTreeNode;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    if-nez v0, :cond_17

    return-object v1

    :cond_17
    invoke-virtual {v1}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getLastLeaf()Lorg/jaudiotagger/DefaultMutableTreeNode;

    move-result-object v0

    :cond_1b
    return-object v0
.end method

.method public getPreviousSibling()Lorg/jaudiotagger/DefaultMutableTreeNode;
    .registers 3

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/DefaultMutableTreeNode;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getChildBefore(Lorg/jaudiotagger/TreeNode;)Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/DefaultMutableTreeNode;

    :goto_10
    if-eqz v0, :cond_21

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->isNodeSibling(Lorg/jaudiotagger/TreeNode;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_21

    :cond_19
    new-instance v0, Ljava/lang/Error;

    const-string v1, "child of parent is not a sibling"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_21
    return-object v0
.end method

.method public getRoot()Lorg/jaudiotagger/TreeNode;
    .registers 3

    move-object v0, p0

    :goto_1
    invoke-interface {v0}, Lorg/jaudiotagger/TreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method

.method public getSharedAncestor(Lorg/jaudiotagger/DefaultMutableTreeNode;)Lorg/jaudiotagger/TreeNode;
    .registers 5

    if-ne p1, p0, :cond_3

    return-object p0

    :cond_3
    const/4 v0, 0x0

    if-nez p1, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getLevel()I

    move-result v1

    invoke-virtual {p1}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getLevel()I

    move-result v2

    if-le v2, v1, :cond_14

    sub-int/2addr v2, v1

    move-object v1, p0

    goto :goto_18

    :cond_14
    sub-int v2, v1, v2

    move-object v1, p1

    move-object p1, p0

    :goto_18
    if-lez v2, :cond_21

    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object p1

    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    :cond_21
    if-ne p1, v1, :cond_24

    return-object p1

    :cond_24
    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object p1

    invoke-interface {v1}, Lorg/jaudiotagger/TreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v1

    if-nez p1, :cond_21

    if-nez p1, :cond_33

    if-nez v1, :cond_33

    return-object v0

    :cond_33
    new-instance p1, Ljava/lang/Error;

    const-string v0, "nodes should be null"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSiblingCount()I
    .registers 2

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    invoke-interface {v0}, Lorg/jaudiotagger/TreeNode;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getUserObjectPath()[Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getPath()[Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_18

    aget-object v3, v0, v2

    check-cast v3, Lorg/jaudiotagger/DefaultMutableTreeNode;

    invoke-virtual {v3}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    return-object v1
.end method

.method public insert(Lorg/jaudiotagger/MutableTreeNode;I)V
    .registers 4

    iget-boolean v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->allowsChildren:Z

    if-eqz v0, :cond_3b

    if-eqz p1, :cond_33

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultMutableTreeNode;->isNodeAncestor(Lorg/jaudiotagger/TreeNode;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/MutableTreeNode;

    if-eqz v0, :cond_17

    invoke-interface {v0, p1}, Lorg/jaudiotagger/MutableTreeNode;->remove(Lorg/jaudiotagger/MutableTreeNode;)V

    :cond_17
    invoke-interface {p1, p0}, Lorg/jaudiotagger/MutableTreeNode;->setParent(Lorg/jaudiotagger/MutableTreeNode;)V

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    if-nez v0, :cond_25

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    :cond_25
    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    return-void

    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "new child is an ancestor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "new child is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "node does not allow children"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isLeaf()Z
    .registers 2

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isNodeAncestor(Lorg/jaudiotagger/TreeNode;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    move-object v1, p0

    :cond_5
    if-ne v1, p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    invoke-interface {v1}, Lorg/jaudiotagger/TreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v1

    if-nez v1, :cond_5

    return v0
.end method

.method public isNodeChild(Lorg/jaudiotagger/TreeNode;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_13

    :cond_4
    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getChildCount()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_13

    :cond_b
    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object p1

    if-ne p1, p0, :cond_13

    const/4 p1, 0x1

    move v0, p1

    :cond_13
    :goto_13
    return v0
.end method

.method public isNodeDescendant(Lorg/jaudiotagger/DefaultMutableTreeNode;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-virtual {p1, p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->isNodeAncestor(Lorg/jaudiotagger/TreeNode;)Z

    move-result p1

    return p1
.end method

.method public isNodeRelated(Lorg/jaudiotagger/DefaultMutableTreeNode;)Z
    .registers 3

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getRoot()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getRoot()Lorg/jaudiotagger/TreeNode;

    move-result-object p1

    if-ne v0, p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public isNodeSibling(Lorg/jaudiotagger/TreeNode;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_6

    move v0, v1

    goto :goto_2e

    :cond_6
    if-ne p1, p0, :cond_9

    goto :goto_2e

    :cond_9
    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v3

    if-ne v2, v3, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/DefaultMutableTreeNode;

    invoke-virtual {v1, p1}, Lorg/jaudiotagger/DefaultMutableTreeNode;->isNodeChild(Lorg/jaudiotagger/TreeNode;)Z

    move-result p1

    if-eqz p1, :cond_26

    goto :goto_2e

    :cond_26
    new-instance p1, Ljava/lang/Error;

    const-string v0, "sibling has different parent"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2e
    :goto_2e
    return v0
.end method

.method public isRoot()Z
    .registers 2

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public pathFromAncestorEnumeration(Lorg/jaudiotagger/TreeNode;)Ljava/util/Enumeration;
    .registers 3

    new-instance v0, Lorg/jaudiotagger/DefaultMutableTreeNode$PathBetweenNodesEnumeration;

    invoke-direct {v0, p0, p1, p0}, Lorg/jaudiotagger/DefaultMutableTreeNode$PathBetweenNodesEnumeration;-><init>(Lorg/jaudiotagger/DefaultMutableTreeNode;Lorg/jaudiotagger/TreeNode;Lorg/jaudiotagger/TreeNode;)V

    return-object v0
.end method

.method public postorderEnumeration()Ljava/util/Enumeration;
    .registers 2

    new-instance v0, Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;

    invoke-direct {v0, p0, p0}, Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;-><init>(Lorg/jaudiotagger/DefaultMutableTreeNode;Lorg/jaudiotagger/TreeNode;)V

    return-object v0
.end method

.method public preorderEnumeration()Ljava/util/Enumeration;
    .registers 2

    new-instance v0, Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;

    invoke-direct {v0, p0, p0}, Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;-><init>(Lorg/jaudiotagger/DefaultMutableTreeNode;Lorg/jaudiotagger/TreeNode;)V

    return-object v0
.end method

.method public remove(I)V
    .registers 4

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getChildAt(I)Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/MutableTreeNode;

    iget-object v1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElementAt(I)V

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Lorg/jaudiotagger/MutableTreeNode;->setParent(Lorg/jaudiotagger/MutableTreeNode;)V

    return-void
.end method

.method public remove(Lorg/jaudiotagger/MutableTreeNode;)V
    .registers 3

    if-eqz p1, :cond_18

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultMutableTreeNode;->isNodeChild(Lorg/jaudiotagger/TreeNode;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getIndex(Lorg/jaudiotagger/TreeNode;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultMutableTreeNode;->remove(I)V

    return-void

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument is not a child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAllChildren()V
    .registers 2

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_e

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->remove(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_e
    return-void
.end method

.method public removeFromParent()V
    .registers 2

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/MutableTreeNode;

    if-eqz v0, :cond_b

    invoke-interface {v0, p0}, Lorg/jaudiotagger/MutableTreeNode;->remove(Lorg/jaudiotagger/MutableTreeNode;)V

    :cond_b
    return-void
.end method

.method public setAllowsChildren(Z)V
    .registers 3

    iget-boolean v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->allowsChildren:Z

    if-eq p1, v0, :cond_b

    iput-boolean p1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->allowsChildren:Z

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode;->removeAllChildren()V

    :cond_b
    return-void
.end method

.method public setParent(Lorg/jaudiotagger/MutableTreeNode;)V
    .registers 2

    iput-object p1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->parent:Lorg/jaudiotagger/MutableTreeNode;

    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
