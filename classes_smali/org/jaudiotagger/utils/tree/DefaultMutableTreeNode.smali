.class public Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
.super Ljava/lang/Object;
.source "DefaultMutableTreeNode.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/jaudiotagger/utils/tree/MutableTreeNode;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PathBetweenNodesEnumeration;,
        Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;,
        Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;,
        Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PreorderEnumeration;
    }
.end annotation


# static fields
.field public static final EMPTY_ENUMERATION:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Lorg/jaudiotagger/utils/tree/TreeNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowsChildren:Z

.field public children:Ljava/util/Vector;

.field public parent:Lorg/jaudiotagger/utils/tree/MutableTreeNode;

.field public transient userObject:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$1;

    .line 3
    invoke-direct {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$1;-><init>()V

    .line 6
    sput-object v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->parent:Lorg/jaudiotagger/utils/tree/MutableTreeNode;

    .line 5
    iput-boolean p2, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->allowsChildren:Z

    .line 6
    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, [Ljava/lang/Object;

    .line 10
    array-length v0, p1

    .line 11
    if-lez v0, :cond_1c

    .line 13
    const/4 v0, 0x0

    .line 14
    aget-object v0, p1, v0

    .line 16
    const-string v1, "userObject"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1c

    .line 24
    const/4 v0, 0x1

    .line 25
    aget-object p1, p1, v0

    .line 27
    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    .line 29
    :cond_1c
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 4
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_17

    .line 9
    instance-of v2, v0, Ljava/io/Serializable;

    .line 11
    if-eqz v2, :cond_17

    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    const-string v3, "userObject"

    .line 18
    aput-object v3, v2, v1

    .line 20
    const/4 v1, 0x1

    .line 21
    aput-object v0, v2, v1

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    new-array v2, v1, [Ljava/lang/Object;

    .line 26
    :goto_19
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 29
    return-void
.end method


# virtual methods
.method public add(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_12

    .line 3
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 6
    move-result-object v0

    .line 7
    if-ne v0, p0, :cond_12

    .line 9
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 15
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->insert(Lorg/jaudiotagger/utils/tree/MutableTreeNode;I)V

    .line 18
    goto :goto_19

    .line 19
    :cond_12
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->insert(Lorg/jaudiotagger/utils/tree/MutableTreeNode;I)V

    .line 26
    :goto_19
    return-void
.end method

.method public breadthFirstEnumeration()Ljava/util/Enumeration;
    .registers 2

    .line 1
    new-instance v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;

    .line 3
    invoke-direct {v0, p0, p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;-><init>(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;Lorg/jaudiotagger/utils/tree/TreeNode;)V

    .line 6
    return-object v0
.end method

.method public children()Ljava/util/Enumeration;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    .line 3
    if-nez v0, :cond_7

    .line 5
    sget-object v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    .line 7
    return-object v0

    .line 8
    :cond_7
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    .line 10
    iput-object v1, v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->parent:Lorg/jaudiotagger/utils/tree/MutableTreeNode;
    :try_end_b
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_b} :catch_c

    .line 12
    return-object v0

    .line 13
    :catch_c
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/Error;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 23
    throw v1
.end method

.method public depthFirstEnumeration()Ljava/util/Enumeration;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->postorderEnumeration()Ljava/util/Enumeration;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getAllowsChildren()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->allowsChildren:Z

    .line 3
    return v0
.end method

.method public getChildAfter(Lorg/jaudiotagger/utils/tree/TreeNode;)Lorg/jaudiotagger/utils/tree/TreeNode;
    .registers 3

    .line 1
    if-eqz p1, :cond_22

    .line 3
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getIndex(Lorg/jaudiotagger/utils/tree/TreeNode;)I

    .line 6
    move-result p1

    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p1, v0, :cond_1a

    .line 10
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 16
    if-ge p1, v0, :cond_18

    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_18
    const/4 p1, 0x0

    .line 26
    return-object p1

    .line 27
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    const-string v0, "node is not a child"

    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1

    .line 35
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    const-string v0, "argument is null"

    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1
.end method

.method public getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 11
    return-object p1

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 14
    const-string v0, "node has no children"

    .line 16
    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p1
.end method

.method public getChildBefore(Lorg/jaudiotagger/utils/tree/TreeNode;)Lorg/jaudiotagger/utils/tree/TreeNode;
    .registers 3

    .line 1
    if-eqz p1, :cond_1c

    .line 3
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getIndex(Lorg/jaudiotagger/utils/tree/TreeNode;)I

    .line 6
    move-result p1

    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p1, v0, :cond_14

    .line 10
    if-lez p1, :cond_12

    .line 12
    add-int/lit8 p1, p1, -0x1

    .line 14
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    const-string v0, "argument is not a child"

    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1

    .line 29
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    const-string v0, "argument is null"

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1
.end method

.method public getChildCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getDepth()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->breadthFirstEnumeration()Ljava/util/Enumeration;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_10

    .line 12
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    goto :goto_5

    .line 17
    :cond_10
    if-eqz v1, :cond_1e

    .line 19
    check-cast v1, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 21
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getLevel()I

    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getLevel()I

    .line 28
    move-result v1

    .line 29
    sub-int/2addr v0, v1

    .line 30
    return v0

    .line 31
    :cond_1e
    new-instance v0, Ljava/lang/Error;

    .line 33
    const-string v1, "nodes should be null"

    .line 35
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 38
    throw v0
.end method

.method public getFirstChild()Lorg/jaudiotagger/utils/tree/TreeNode;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_c

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 15
    const-string v1, "node has no children"

    .line 17
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 20
    throw v0
.end method

.method public getFirstLeaf()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .registers 3

    .line 1
    move-object v0, p0

    .line 2
    :goto_1
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isLeaf()Z

    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_e

    .line 8
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getFirstChild()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 14
    goto :goto_1

    .line 15
    :cond_e
    return-object v0
.end method

.method public getIndex(Lorg/jaudiotagger/utils/tree/TreeNode;)I
    .registers 3

    .line 1
    if-eqz p1, :cond_11

    .line 3
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isNodeChild(Lorg/jaudiotagger/utils/tree/TreeNode;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 p1, -0x1

    .line 10
    return p1

    .line 11
    :cond_a
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string v0, "argument is null"

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1
.end method

.method public getLastChild()Lorg/jaudiotagger/utils/tree/TreeNode;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_11

    .line 7
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 13
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 20
    const-string v1, "node has no children"

    .line 22
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 25
    throw v0
.end method

.method public getLastLeaf()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .registers 3

    .line 1
    move-object v0, p0

    .line 2
    :goto_1
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isLeaf()Z

    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_e

    .line 8
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getLastChild()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 14
    goto :goto_1

    .line 15
    :cond_e
    return-object v0
.end method

.method public getLeafCount()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->breadthFirstEnumeration()Ljava/util/Enumeration;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_1a

    .line 12
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 18
    invoke-interface {v2}, Lorg/jaudiotagger/utils/tree/TreeNode;->isLeaf()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_5

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_5

    .line 27
    :cond_1a
    const/4 v0, 0x1

    .line 28
    if-lt v1, v0, :cond_1e

    .line 30
    return v1

    .line 31
    :cond_1e
    new-instance v0, Ljava/lang/Error;

    .line 33
    const-string v1, "tree has zero leaves"

    .line 35
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 38
    throw v0
.end method

.method public getLevel()I
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, p0

    .line 3
    :goto_2
    invoke-interface {v1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_b

    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 11
    goto :goto_2

    .line 12
    :cond_b
    return v0
.end method

.method public getNextLeaf()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_a
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getNextSibling()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_15

    .line 17
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getFirstLeaf()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_15
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getNextLeaf()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public getNextNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_25

    .line 7
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getNextSibling()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_24

    .line 13
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 19
    :goto_12
    if-nez v0, :cond_16

    .line 21
    const/4 v0, 0x0

    .line 22
    return-object v0

    .line 23
    :cond_16
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getNextSibling()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1d

    .line 29
    return-object v1

    .line 30
    :cond_1d
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 36
    goto :goto_12

    .line 37
    :cond_24
    return-object v0

    .line 38
    :cond_25
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 45
    return-object v0
.end method

.method public getNextSibling()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_10

    .line 11
    :cond_a
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildAfter(Lorg/jaudiotagger/utils/tree/TreeNode;)Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 17
    :goto_10
    if-eqz v0, :cond_21

    .line 19
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isNodeSibling(Lorg/jaudiotagger/utils/tree/TreeNode;)Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_19

    .line 25
    goto :goto_21

    .line 26
    :cond_19
    new-instance v0, Ljava/lang/Error;

    .line 28
    const-string v1, "child of parent is not a sibling"

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0

    .line 34
    :cond_21
    :goto_21
    return-object v0
.end method

.method public getParent()Lorg/jaudiotagger/utils/tree/TreeNode;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->parent:Lorg/jaudiotagger/utils/tree/MutableTreeNode;

    .line 3
    return-object v0
.end method

.method public getPath()[Lorg/jaudiotagger/utils/tree/TreeNode;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p0, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;I)[Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;I)[Lorg/jaudiotagger/utils/tree/TreeNode;
    .registers 5

    .line 1
    if-nez p1, :cond_9

    .line 3
    if-nez p2, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_6
    new-array p1, p2, [Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 9
    goto :goto_18

    .line 10
    :cond_9
    add-int/lit8 p2, p2, 0x1

    .line 12
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0, p2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getPathToRoot(Lorg/jaudiotagger/utils/tree/TreeNode;I)[Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 19
    move-result-object v0

    .line 20
    array-length v1, v0

    .line 21
    sub-int/2addr v1, p2

    .line 22
    aput-object p1, v0, v1

    .line 24
    move-object p1, v0

    .line 25
    :goto_18
    return-object p1
.end method

.method public getPreviousLeaf()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_a
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getPreviousSibling()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_15

    .line 17
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getLastLeaf()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_15
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getPreviousLeaf()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public getPreviousNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_a
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getPreviousSibling()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1b

    .line 17
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_17

    .line 23
    return-object v1

    .line 24
    :cond_17
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getLastLeaf()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 27
    move-result-object v0

    .line 28
    :cond_1b
    return-object v0
.end method

.method public getPreviousSibling()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_10

    .line 11
    :cond_a
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildBefore(Lorg/jaudiotagger/utils/tree/TreeNode;)Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 17
    :goto_10
    if-eqz v0, :cond_21

    .line 19
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isNodeSibling(Lorg/jaudiotagger/utils/tree/TreeNode;)Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_19

    .line 25
    goto :goto_21

    .line 26
    :cond_19
    new-instance v0, Ljava/lang/Error;

    .line 28
    const-string v1, "child of parent is not a sibling"

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0

    .line 34
    :cond_21
    :goto_21
    return-object v0
.end method

.method public getRoot()Lorg/jaudiotagger/utils/tree/TreeNode;
    .registers 3

    .line 1
    move-object v0, p0

    .line 2
    :goto_1
    invoke-interface {v0}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_8

    .line 8
    return-object v0

    .line 9
    :cond_8
    move-object v0, v1

    .line 10
    goto :goto_1
.end method

.method public getSharedAncestor(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/utils/tree/TreeNode;
    .registers 5

    .line 1
    if-ne p1, p0, :cond_3

    .line 3
    return-object p0

    .line 4
    :cond_3
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_7

    .line 7
    return-object v0

    .line 8
    :cond_7
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getLevel()I

    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getLevel()I

    .line 15
    move-result v2

    .line 16
    if-le v2, v1, :cond_14

    .line 18
    sub-int/2addr v2, v1

    .line 19
    move-object v1, p0

    .line 20
    goto :goto_18

    .line 21
    :cond_14
    sub-int v2, v1, v2

    .line 23
    move-object v1, p1

    .line 24
    move-object p1, p0

    .line 25
    :goto_18
    if-lez v2, :cond_21

    .line 27
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 30
    move-result-object p1

    .line 31
    add-int/lit8 v2, v2, -0x1

    .line 33
    goto :goto_18

    .line 34
    :cond_21
    if-ne p1, v1, :cond_24

    .line 36
    return-object p1

    .line 37
    :cond_24
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 40
    move-result-object p1

    .line 41
    invoke-interface {v1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 44
    move-result-object v1

    .line 45
    if-nez p1, :cond_21

    .line 47
    if-nez p1, :cond_33

    .line 49
    if-nez v1, :cond_33

    .line 51
    return-object v0

    .line 52
    :cond_33
    new-instance p1, Ljava/lang/Error;

    .line 54
    const-string v0, "nodes should be null"

    .line 56
    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 59
    throw p1
.end method

.method public getSiblingCount()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_8
    invoke-interface {v0}, Lorg/jaudiotagger/utils/tree/TreeNode;->getChildCount()I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public getUserObjectPath()[Ljava/lang/Object;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getPath()[Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    array-length v3, v0

    .line 10
    if-ge v2, v3, :cond_18

    .line 12
    aget-object v3, v0, v2

    .line 14
    check-cast v3, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 16
    invoke-virtual {v3}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    aput-object v3, v1, v2

    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 24
    goto :goto_8

    .line 25
    :cond_18
    return-object v1
.end method

.method public insert(Lorg/jaudiotagger/utils/tree/MutableTreeNode;I)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->allowsChildren:Z

    .line 3
    if-eqz v0, :cond_3b

    .line 5
    if-eqz p1, :cond_33

    .line 7
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isNodeAncestor(Lorg/jaudiotagger/utils/tree/TreeNode;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2b

    .line 13
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lorg/jaudiotagger/utils/tree/MutableTreeNode;

    .line 19
    if-eqz v0, :cond_17

    .line 21
    invoke-interface {v0, p1}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->remove(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V

    .line 24
    :cond_17
    invoke-interface {p1, p0}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->setParent(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V

    .line 27
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    .line 29
    if-nez v0, :cond_25

    .line 31
    new-instance v0, Ljava/util/Vector;

    .line 33
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 36
    iput-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    .line 38
    :cond_25
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    .line 40
    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 43
    return-void

    .line 44
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    const-string p2, "new child is an ancestor"

    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p1

    .line 52
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 54
    const-string p2, "new child is null"

    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p1

    .line 60
    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    const-string p2, "node does not allow children"

    .line 64
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p1
.end method

.method public isLeaf()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isNodeAncestor(Lorg/jaudiotagger/utils/tree/TreeNode;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    move-object v1, p0

    .line 6
    :cond_5
    if-ne v1, p1, :cond_9

    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-interface {v1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_5

    .line 16
    return v0
.end method

.method public isNodeChild(Lorg/jaudiotagger/utils/tree/TreeNode;)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    goto :goto_13

    .line 5
    :cond_4
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_b

    .line 11
    goto :goto_13

    .line 12
    :cond_b
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 15
    move-result-object p1

    .line 16
    if-ne p1, p0, :cond_13

    .line 18
    const/4 p1, 0x1

    .line 19
    move v0, p1

    .line 20
    :cond_13
    :goto_13
    return v0
.end method

.method public isNodeDescendant(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Z
    .registers 2

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_4
    invoke-virtual {p1, p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isNodeAncestor(Lorg/jaudiotagger/utils/tree/TreeNode;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public isNodeRelated(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Z
    .registers 3

    .line 1
    if-eqz p1, :cond_e

    .line 3
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getRoot()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getRoot()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 10
    move-result-object p1

    .line 11
    if-ne v0, p1, :cond_e

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    :goto_f
    return p1
.end method

.method public isNodeSibling(Lorg/jaudiotagger/utils/tree/TreeNode;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p1, :cond_6

    .line 5
    move v0, v1

    .line 6
    goto :goto_2e

    .line 7
    :cond_6
    if-ne p1, p0, :cond_9

    .line 9
    goto :goto_2e

    .line 10
    :cond_9
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_16

    .line 16
    invoke-interface {p1}, Lorg/jaudiotagger/utils/tree/TreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 19
    move-result-object v3

    .line 20
    if-ne v2, v3, :cond_16

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v0, v1

    .line 24
    :goto_17
    if-eqz v0, :cond_2e

    .line 26
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 32
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isNodeChild(Lorg/jaudiotagger/utils/tree/TreeNode;)Z

    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_26

    .line 38
    goto :goto_2e

    .line 39
    :cond_26
    new-instance p1, Ljava/lang/Error;

    .line 41
    const-string v0, "sibling has different parent"

    .line 43
    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 46
    throw p1

    .line 47
    :cond_2e
    :goto_2e
    return v0
.end method

.method public isRoot()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public pathFromAncestorEnumeration(Lorg/jaudiotagger/utils/tree/TreeNode;)Ljava/util/Enumeration;
    .registers 3

    .line 1
    new-instance v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PathBetweenNodesEnumeration;

    .line 3
    invoke-direct {v0, p0, p1, p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PathBetweenNodesEnumeration;-><init>(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;Lorg/jaudiotagger/utils/tree/TreeNode;Lorg/jaudiotagger/utils/tree/TreeNode;)V

    .line 6
    return-object v0
.end method

.method public postorderEnumeration()Ljava/util/Enumeration;
    .registers 2

    .line 1
    new-instance v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;

    .line 3
    invoke-direct {v0, p0, p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;-><init>(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;Lorg/jaudiotagger/utils/tree/TreeNode;)V

    .line 6
    return-object v0
.end method

.method public preorderEnumeration()Ljava/util/Enumeration;
    .registers 2

    .line 1
    new-instance v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PreorderEnumeration;

    .line 3
    invoke-direct {v0, p0, p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PreorderEnumeration;-><init>(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;Lorg/jaudiotagger/utils/tree/TreeNode;)V

    .line 6
    return-object v0
.end method

.method public remove(I)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildAt(I)Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/MutableTreeNode;

    .line 2
    iget-object v1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->children:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElementAt(I)V

    const/4 p1, 0x0

    .line 3
    invoke-interface {v0, p1}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->setParent(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V

    return-void
.end method

.method public remove(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V
    .registers 3

    if-eqz p1, :cond_18

    .line 4
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->isNodeChild(Lorg/jaudiotagger/utils/tree/TreeNode;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getIndex(Lorg/jaudiotagger/utils/tree/TreeNode;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->remove(I)V

    return-void

    .line 6
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument is not a child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAllChildren()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    :goto_6
    if-ltz v0, :cond_e

    .line 9
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->remove(I)V

    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 14
    goto :goto_6

    .line 15
    :cond_e
    return-void
.end method

.method public removeFromParent()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/jaudiotagger/utils/tree/MutableTreeNode;

    .line 7
    if-eqz v0, :cond_b

    .line 9
    invoke-interface {v0, p0}, Lorg/jaudiotagger/utils/tree/MutableTreeNode;->remove(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V

    .line 12
    :cond_b
    return-void
.end method

.method public setAllowsChildren(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->allowsChildren:Z

    .line 3
    if-eq p1, v0, :cond_b

    .line 5
    iput-boolean p1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->allowsChildren:Z

    .line 7
    if-nez p1, :cond_b

    .line 9
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->removeAllChildren()V

    .line 12
    :cond_b
    return-void
.end method

.method public setParent(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->parent:Lorg/jaudiotagger/utils/tree/MutableTreeNode;

    .line 3
    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->userObject:Ljava/lang/Object;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
