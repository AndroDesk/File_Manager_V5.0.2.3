.class public Lorg/jaudiotagger/DefaultTreeModel;
.super Ljava/lang/Object;
.source "DefaultTreeModel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/jaudiotagger/TreeModel;


# instance fields
.field public asksAllowsChildren:Z

.field public listenerList:Lorg/jaudiotagger/EventListenerList;

.field public root:Lorg/jaudiotagger/TreeNode;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/TreeNode;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/DefaultTreeModel;-><init>(Lorg/jaudiotagger/TreeNode;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/TreeNode;Z)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/jaudiotagger/EventListenerList;

    invoke-direct {v0}, Lorg/jaudiotagger/EventListenerList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    .line 4
    iput-object p1, p0, Lorg/jaudiotagger/DefaultTreeModel;->root:Lorg/jaudiotagger/TreeNode;

    .line 5
    iput-boolean p2, p0, Lorg/jaudiotagger/DefaultTreeModel;->asksAllowsChildren:Z

    return-void
.end method

.method private fireTreeStructureChanged(Ljava/lang/Object;Lorg/jaudiotagger/TreePath;)V
    .registers 8

    .line 6
    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    invoke-virtual {v0}, Lorg/jaudiotagger/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    .line 7
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    :goto_a
    if-ltz v1, :cond_25

    .line 8
    aget-object v3, v0, v1

    const-class v4, Lorg/jaudiotagger/TreeModelListener;

    if-ne v3, v4, :cond_22

    if-nez v2, :cond_19

    .line 9
    new-instance v2, Lorg/jaudiotagger/TreeModelEvent;

    invoke-direct {v2, p1, p2}, Lorg/jaudiotagger/TreeModelEvent;-><init>(Ljava/lang/Object;Lorg/jaudiotagger/TreePath;)V

    :cond_19
    add-int/lit8 v3, v1, 0x1

    .line 10
    aget-object v3, v0, v3

    check-cast v3, Lorg/jaudiotagger/TreeModelListener;

    invoke-interface {v3, v2}, Lorg/jaudiotagger/TreeModelListener;->treeStructureChanged(Lorg/jaudiotagger/TreeModelEvent;)V

    :cond_22
    add-int/lit8 v1, v1, -0x2

    goto :goto_a

    :cond_25
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
    check-cast p1, Ljava/util/Vector;

    .line 10
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_25

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "root"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_25

    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lorg/jaudiotagger/TreeNode;

    .line 36
    iput-object p1, p0, Lorg/jaudiotagger/DefaultTreeModel;->root:Lorg/jaudiotagger/TreeNode;

    .line 38
    :cond_25
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/Vector;

    .line 3
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 9
    iget-object v1, p0, Lorg/jaudiotagger/DefaultTreeModel;->root:Lorg/jaudiotagger/TreeNode;

    .line 11
    if-eqz v1, :cond_1a

    .line 13
    instance-of v1, v1, Ljava/io/Serializable;

    .line 15
    if-eqz v1, :cond_1a

    .line 17
    const-string v1, "root"

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 22
    iget-object v1, p0, Lorg/jaudiotagger/DefaultTreeModel;->root:Lorg/jaudiotagger/TreeNode;

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 27
    :cond_1a
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public addTreeModelListener(Lorg/jaudiotagger/TreeModelListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    .line 3
    const-class v1, Lorg/jaudiotagger/TreeModelListener;

    .line 5
    invoke-virtual {v0, v1, p1}, Lorg/jaudiotagger/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    .line 8
    return-void
.end method

.method public asksAllowsChildren()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->asksAllowsChildren:Z

    .line 3
    return v0
.end method

.method public fireTreeNodesChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/EventListenerList;->getListenerList()[Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    add-int/lit8 v1, v1, -0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_a
    if-ltz v1, :cond_25

    .line 13
    aget-object v3, v0, v1

    .line 15
    const-class v4, Lorg/jaudiotagger/TreeModelListener;

    .line 17
    if-ne v3, v4, :cond_22

    .line 19
    if-nez v2, :cond_19

    .line 21
    new-instance v2, Lorg/jaudiotagger/TreeModelEvent;

    .line 23
    invoke-direct {v2, p1, p2, p3, p4}, Lorg/jaudiotagger/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    .line 26
    :cond_19
    add-int/lit8 v3, v1, 0x1

    .line 28
    aget-object v3, v0, v3

    .line 30
    check-cast v3, Lorg/jaudiotagger/TreeModelListener;

    .line 32
    invoke-interface {v3, v2}, Lorg/jaudiotagger/TreeModelListener;->treeNodesChanged(Lorg/jaudiotagger/TreeModelEvent;)V

    .line 35
    :cond_22
    add-int/lit8 v1, v1, -0x2

    .line 37
    goto :goto_a

    .line 38
    :cond_25
    return-void
.end method

.method public fireTreeNodesInserted(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/EventListenerList;->getListenerList()[Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    add-int/lit8 v1, v1, -0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_a
    if-ltz v1, :cond_25

    .line 13
    aget-object v3, v0, v1

    .line 15
    const-class v4, Lorg/jaudiotagger/TreeModelListener;

    .line 17
    if-ne v3, v4, :cond_22

    .line 19
    if-nez v2, :cond_19

    .line 21
    new-instance v2, Lorg/jaudiotagger/TreeModelEvent;

    .line 23
    invoke-direct {v2, p1, p2, p3, p4}, Lorg/jaudiotagger/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    .line 26
    :cond_19
    add-int/lit8 v3, v1, 0x1

    .line 28
    aget-object v3, v0, v3

    .line 30
    check-cast v3, Lorg/jaudiotagger/TreeModelListener;

    .line 32
    invoke-interface {v3, v2}, Lorg/jaudiotagger/TreeModelListener;->treeNodesInserted(Lorg/jaudiotagger/TreeModelEvent;)V

    .line 35
    :cond_22
    add-int/lit8 v1, v1, -0x2

    .line 37
    goto :goto_a

    .line 38
    :cond_25
    return-void
.end method

.method public fireTreeNodesRemoved(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/EventListenerList;->getListenerList()[Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    add-int/lit8 v1, v1, -0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_a
    if-ltz v1, :cond_25

    .line 13
    aget-object v3, v0, v1

    .line 15
    const-class v4, Lorg/jaudiotagger/TreeModelListener;

    .line 17
    if-ne v3, v4, :cond_22

    .line 19
    if-nez v2, :cond_19

    .line 21
    new-instance v2, Lorg/jaudiotagger/TreeModelEvent;

    .line 23
    invoke-direct {v2, p1, p2, p3, p4}, Lorg/jaudiotagger/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    .line 26
    :cond_19
    add-int/lit8 v3, v1, 0x1

    .line 28
    aget-object v3, v0, v3

    .line 30
    check-cast v3, Lorg/jaudiotagger/TreeModelListener;

    .line 32
    invoke-interface {v3, v2}, Lorg/jaudiotagger/TreeModelListener;->treeNodesRemoved(Lorg/jaudiotagger/TreeModelEvent;)V

    .line 35
    :cond_22
    add-int/lit8 v1, v1, -0x2

    .line 37
    goto :goto_a

    .line 38
    :cond_25
    return-void
.end method

.method public fireTreeStructureChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    invoke-virtual {v0}, Lorg/jaudiotagger/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    .line 2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    :goto_a
    if-ltz v1, :cond_25

    .line 3
    aget-object v3, v0, v1

    const-class v4, Lorg/jaudiotagger/TreeModelListener;

    if-ne v3, v4, :cond_22

    if-nez v2, :cond_19

    .line 4
    new-instance v2, Lorg/jaudiotagger/TreeModelEvent;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/jaudiotagger/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_19
    add-int/lit8 v3, v1, 0x1

    .line 5
    aget-object v3, v0, v3

    check-cast v3, Lorg/jaudiotagger/TreeModelListener;

    invoke-interface {v3, v2}, Lorg/jaudiotagger/TreeModelListener;->treeStructureChanged(Lorg/jaudiotagger/TreeModelEvent;)V

    :cond_22
    add-int/lit8 v1, v1, -0x2

    goto :goto_a

    :cond_25
    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lorg/jaudiotagger/TreeNode;

    .line 3
    invoke-interface {p1, p2}, Lorg/jaudiotagger/TreeNode;->getChildAt(I)Lorg/jaudiotagger/TreeNode;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lorg/jaudiotagger/TreeNode;

    .line 3
    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->getChildCount()I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getIndexOfChild(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    if-eqz p1, :cond_e

    .line 3
    if-nez p2, :cond_5

    .line 5
    goto :goto_e

    .line 6
    :cond_5
    check-cast p1, Lorg/jaudiotagger/TreeNode;

    .line 8
    check-cast p2, Lorg/jaudiotagger/TreeNode;

    .line 10
    invoke-interface {p1, p2}, Lorg/jaudiotagger/TreeNode;->getIndex(Lorg/jaudiotagger/TreeNode;)I

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_e
    :goto_e
    const/4 p1, -0x1

    .line 16
    return p1
.end method

.method public getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    .line 3
    invoke-virtual {v0, p1}, Lorg/jaudiotagger/EventListenerList;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getPathToRoot(Lorg/jaudiotagger/TreeNode;)[Lorg/jaudiotagger/TreeNode;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/TreeNode;I)[Lorg/jaudiotagger/TreeNode;

    move-result-object p1

    return-object p1
.end method

.method public getPathToRoot(Lorg/jaudiotagger/TreeNode;I)[Lorg/jaudiotagger/TreeNode;
    .registers 5

    if-nez p1, :cond_9

    if-nez p2, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_6
    new-array p1, p2, [Lorg/jaudiotagger/TreeNode;

    goto :goto_1f

    :cond_9
    add-int/lit8 p2, p2, 0x1

    .line 3
    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->root:Lorg/jaudiotagger/TreeNode;

    if-ne p1, v0, :cond_12

    .line 4
    new-array v0, p2, [Lorg/jaudiotagger/TreeNode;

    goto :goto_1a

    .line 5
    :cond_12
    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/jaudiotagger/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/TreeNode;I)[Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    .line 6
    :goto_1a
    array-length v1, v0

    sub-int/2addr v1, p2

    aput-object p1, v0, v1

    move-object p1, v0

    :goto_1f
    return-object p1
.end method

.method public getRoot()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->root:Lorg/jaudiotagger/TreeNode;

    .line 3
    return-object v0
.end method

.method public getTreeModelListeners()[Lorg/jaudiotagger/TreeModelListener;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    .line 3
    const-class v1, Lorg/jaudiotagger/TreeModelListener;

    .line 5
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/EventListenerList;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, [Lorg/jaudiotagger/TreeModelListener;

    .line 11
    check-cast v0, [Lorg/jaudiotagger/TreeModelListener;

    .line 13
    return-object v0
.end method

.method public insertNodeInto(Lorg/jaudiotagger/MutableTreeNode;Lorg/jaudiotagger/MutableTreeNode;I)V
    .registers 5

    .line 1
    invoke-interface {p2, p1, p3}, Lorg/jaudiotagger/MutableTreeNode;->insert(Lorg/jaudiotagger/MutableTreeNode;I)V

    .line 4
    const/4 p1, 0x1

    .line 5
    new-array p1, p1, [I

    .line 7
    const/4 v0, 0x0

    .line 8
    aput p3, p1, v0

    .line 10
    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/DefaultTreeModel;->nodesWereInserted(Lorg/jaudiotagger/TreeNode;[I)V

    .line 13
    return-void
.end method

.method public isLeaf(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->asksAllowsChildren:Z

    .line 3
    if-eqz v0, :cond_d

    .line 5
    check-cast p1, Lorg/jaudiotagger/TreeNode;

    .line 7
    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->getAllowsChildren()Z

    .line 10
    move-result p1

    .line 11
    xor-int/lit8 p1, p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_d
    check-cast p1, Lorg/jaudiotagger/TreeNode;

    .line 16
    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->isLeaf()Z

    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public nodeChanged(Lorg/jaudiotagger/TreeNode;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    .line 3
    if-eqz v0, :cond_27

    .line 5
    if-eqz p1, :cond_27

    .line 7
    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1d

    .line 13
    invoke-interface {v0, p1}, Lorg/jaudiotagger/TreeNode;->getIndex(Lorg/jaudiotagger/TreeNode;)I

    .line 16
    move-result p1

    .line 17
    const/4 v1, -0x1

    .line 18
    if-eq p1, v1, :cond_27

    .line 20
    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [I

    .line 23
    const/4 v2, 0x0

    .line 24
    aput p1, v1, v2

    .line 26
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/DefaultTreeModel;->nodesChanged(Lorg/jaudiotagger/TreeNode;[I)V

    .line 29
    goto :goto_27

    .line 30
    :cond_1d
    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    if-ne p1, v0, :cond_27

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/DefaultTreeModel;->nodesChanged(Lorg/jaudiotagger/TreeNode;[I)V

    .line 40
    :cond_27
    :goto_27
    return-void
.end method

.method public nodeStructureChanged(Lorg/jaudiotagger/TreeNode;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_a

    .line 3
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/TreeNode;)[Lorg/jaudiotagger/TreeNode;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p0, p1, v0, v0}, Lorg/jaudiotagger/DefaultTreeModel;->fireTreeStructureChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    .line 11
    :cond_a
    return-void
.end method

.method public nodesChanged(Lorg/jaudiotagger/TreeNode;[I)V
    .registers 7

    .line 1
    if-eqz p1, :cond_2d

    .line 3
    if-eqz p2, :cond_1f

    .line 5
    array-length v0, p2

    .line 6
    if-lez v0, :cond_2d

    .line 8
    new-array v1, v0, [Ljava/lang/Object;

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_a
    if-ge v2, v0, :cond_17

    .line 13
    aget v3, p2, v2

    .line 15
    invoke-interface {p1, v3}, Lorg/jaudiotagger/TreeNode;->getChildAt(I)Lorg/jaudiotagger/TreeNode;

    .line 18
    move-result-object v3

    .line 19
    aput-object v3, v1, v2

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 23
    goto :goto_a

    .line 24
    :cond_17
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/TreeNode;)[Lorg/jaudiotagger/TreeNode;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p0, p1, p2, v1}, Lorg/jaudiotagger/DefaultTreeModel;->fireTreeNodesChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    .line 31
    goto :goto_2d

    .line 32
    :cond_1f
    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    .line 35
    move-result-object p2

    .line 36
    if-ne p1, p2, :cond_2d

    .line 38
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/TreeNode;)[Lorg/jaudiotagger/TreeNode;

    .line 41
    move-result-object p1

    .line 42
    const/4 p2, 0x0

    .line 43
    invoke-virtual {p0, p0, p1, p2, p2}, Lorg/jaudiotagger/DefaultTreeModel;->fireTreeNodesChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    .line 46
    :cond_2d
    :goto_2d
    return-void
.end method

.method public nodesWereInserted(Lorg/jaudiotagger/TreeNode;[I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    .line 3
    if-eqz v0, :cond_23

    .line 5
    if-eqz p1, :cond_23

    .line 7
    if-eqz p2, :cond_23

    .line 9
    array-length v0, p2

    .line 10
    if-lez v0, :cond_23

    .line 12
    array-length v0, p2

    .line 13
    new-array v1, v0, [Ljava/lang/Object;

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_f
    if-ge v2, v0, :cond_1c

    .line 18
    aget v3, p2, v2

    .line 20
    invoke-interface {p1, v3}, Lorg/jaudiotagger/TreeNode;->getChildAt(I)Lorg/jaudiotagger/TreeNode;

    .line 23
    move-result-object v3

    .line 24
    aput-object v3, v1, v2

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_f

    .line 29
    :cond_1c
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/TreeNode;)[Lorg/jaudiotagger/TreeNode;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p0, p1, p2, v1}, Lorg/jaudiotagger/DefaultTreeModel;->fireTreeNodesInserted(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    .line 36
    :cond_23
    return-void
.end method

.method public nodesWereRemoved(Lorg/jaudiotagger/TreeNode;[I[Ljava/lang/Object;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_b

    .line 3
    if-eqz p2, :cond_b

    .line 5
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/TreeNode;)[Lorg/jaudiotagger/TreeNode;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p0, p1, p2, p3}, Lorg/jaudiotagger/DefaultTreeModel;->fireTreeNodesRemoved(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    .line 12
    :cond_b
    return-void
.end method

.method public reload()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->root:Lorg/jaudiotagger/TreeNode;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/DefaultTreeModel;->reload(Lorg/jaudiotagger/TreeNode;)V

    return-void
.end method

.method public reload(Lorg/jaudiotagger/TreeNode;)V
    .registers 3

    if-eqz p1, :cond_a

    .line 2
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/TreeNode;)[Lorg/jaudiotagger/TreeNode;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p0, p1, v0, v0}, Lorg/jaudiotagger/DefaultTreeModel;->fireTreeStructureChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public removeNodeFromParent(Lorg/jaudiotagger/MutableTreeNode;)V
    .registers 7

    .line 1
    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/jaudiotagger/MutableTreeNode;

    .line 7
    if-eqz v0, :cond_1d

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v2, v1, [I

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    invoke-interface {v0, p1}, Lorg/jaudiotagger/TreeNode;->getIndex(Lorg/jaudiotagger/TreeNode;)I

    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    aput v3, v2, v4

    .line 21
    invoke-interface {v0, v3}, Lorg/jaudiotagger/MutableTreeNode;->remove(I)V

    .line 24
    aput-object p1, v1, v4

    .line 26
    invoke-virtual {p0, v0, v2, v1}, Lorg/jaudiotagger/DefaultTreeModel;->nodesWereRemoved(Lorg/jaudiotagger/TreeNode;[I[Ljava/lang/Object;)V

    .line 29
    return-void

    .line 30
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    const-string v0, "node does not have a parent."

    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p1
.end method

.method public removeTreeModelListener(Lorg/jaudiotagger/TreeModelListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    .line 3
    const-class v1, Lorg/jaudiotagger/TreeModelListener;

    .line 5
    invoke-virtual {v0, v1, p1}, Lorg/jaudiotagger/EventListenerList;->remove(Ljava/lang/Class;Ljava/util/EventListener;)V

    .line 8
    return-void
.end method

.method public setAsksAllowsChildren(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/DefaultTreeModel;->asksAllowsChildren:Z

    .line 3
    return-void
.end method

.method public setRoot(Lorg/jaudiotagger/TreeNode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->root:Lorg/jaudiotagger/TreeNode;

    .line 3
    iput-object p1, p0, Lorg/jaudiotagger/DefaultTreeModel;->root:Lorg/jaudiotagger/TreeNode;

    .line 5
    if-nez p1, :cond_d

    .line 7
    if-eqz v0, :cond_d

    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p0, p1}, Lorg/jaudiotagger/DefaultTreeModel;->fireTreeStructureChanged(Ljava/lang/Object;Lorg/jaudiotagger/TreePath;)V

    .line 13
    goto :goto_10

    .line 14
    :cond_d
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultTreeModel;->nodeStructureChanged(Lorg/jaudiotagger/TreeNode;)V

    .line 17
    :goto_10
    return-void
.end method

.method public valueForPathChanged(Lorg/jaudiotagger/TreePath;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lorg/jaudiotagger/TreePath;->getLastPathComponent()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lorg/jaudiotagger/MutableTreeNode;

    .line 7
    invoke-interface {p1, p2}, Lorg/jaudiotagger/MutableTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultTreeModel;->nodeChanged(Lorg/jaudiotagger/TreeNode;)V

    .line 13
    return-void
.end method
