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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/TreeNode;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/DefaultTreeModel;-><init>(Lorg/jaudiotagger/TreeNode;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/TreeNode;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jaudiotagger/EventListenerList;

    invoke-direct {v0}, Lorg/jaudiotagger/EventListenerList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    iput-object p1, p0, Lorg/jaudiotagger/DefaultTreeModel;->root:Lorg/jaudiotagger/TreeNode;

    iput-boolean p2, p0, Lorg/jaudiotagger/DefaultTreeModel;->asksAllowsChildren:Z

    return-void
.end method

.method private fireTreeStructureChanged(Ljava/lang/Object;Lorg/jaudiotagger/TreePath;)V
    .registers 8

    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    invoke-virtual {v0}, Lorg/jaudiotagger/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    :goto_a
    if-ltz v1, :cond_25

    aget-object v3, v0, v1

    const-class v4, Lorg/jaudiotagger/TreeModelListener;

    if-ne v3, v4, :cond_22

    if-nez v2, :cond_19

    new-instance v2, Lorg/jaudiotagger/TreeModelEvent;

    invoke-direct {v2, p1, p2}, Lorg/jaudiotagger/TreeModelEvent;-><init>(Ljava/lang/Object;Lorg/jaudiotagger/TreePath;)V

    :cond_19
    add-int/lit8 v3, v1, 0x1

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

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_25

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "root"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/TreeNode;

    iput-object p1, p0, Lorg/jaudiotagger/DefaultTreeModel;->root:Lorg/jaudiotagger/TreeNode;

    :cond_25
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v1, p0, Lorg/jaudiotagger/DefaultTreeModel;->root:Lorg/jaudiotagger/TreeNode;

    if-eqz v1, :cond_1a

    instance-of v1, v1, Ljava/io/Serializable;

    if-eqz v1, :cond_1a

    const-string v1, "root"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/jaudiotagger/DefaultTreeModel;->root:Lorg/jaudiotagger/TreeNode;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1a
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addTreeModelListener(Lorg/jaudiotagger/TreeModelListener;)V
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    const-class v1, Lorg/jaudiotagger/TreeModelListener;

    invoke-virtual {v0, v1, p1}, Lorg/jaudiotagger/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void
.end method

.method public asksAllowsChildren()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->asksAllowsChildren:Z

    return v0
.end method

.method public fireTreeNodesChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    invoke-virtual {v0}, Lorg/jaudiotagger/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    :goto_a
    if-ltz v1, :cond_25

    aget-object v3, v0, v1

    const-class v4, Lorg/jaudiotagger/TreeModelListener;

    if-ne v3, v4, :cond_22

    if-nez v2, :cond_19

    new-instance v2, Lorg/jaudiotagger/TreeModelEvent;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/jaudiotagger/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_19
    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    check-cast v3, Lorg/jaudiotagger/TreeModelListener;

    invoke-interface {v3, v2}, Lorg/jaudiotagger/TreeModelListener;->treeNodesChanged(Lorg/jaudiotagger/TreeModelEvent;)V

    :cond_22
    add-int/lit8 v1, v1, -0x2

    goto :goto_a

    :cond_25
    return-void
.end method

.method public fireTreeNodesInserted(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    invoke-virtual {v0}, Lorg/jaudiotagger/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    :goto_a
    if-ltz v1, :cond_25

    aget-object v3, v0, v1

    const-class v4, Lorg/jaudiotagger/TreeModelListener;

    if-ne v3, v4, :cond_22

    if-nez v2, :cond_19

    new-instance v2, Lorg/jaudiotagger/TreeModelEvent;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/jaudiotagger/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_19
    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    check-cast v3, Lorg/jaudiotagger/TreeModelListener;

    invoke-interface {v3, v2}, Lorg/jaudiotagger/TreeModelListener;->treeNodesInserted(Lorg/jaudiotagger/TreeModelEvent;)V

    :cond_22
    add-int/lit8 v1, v1, -0x2

    goto :goto_a

    :cond_25
    return-void
.end method

.method public fireTreeNodesRemoved(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    invoke-virtual {v0}, Lorg/jaudiotagger/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    :goto_a
    if-ltz v1, :cond_25

    aget-object v3, v0, v1

    const-class v4, Lorg/jaudiotagger/TreeModelListener;

    if-ne v3, v4, :cond_22

    if-nez v2, :cond_19

    new-instance v2, Lorg/jaudiotagger/TreeModelEvent;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/jaudiotagger/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_19
    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    check-cast v3, Lorg/jaudiotagger/TreeModelListener;

    invoke-interface {v3, v2}, Lorg/jaudiotagger/TreeModelListener;->treeNodesRemoved(Lorg/jaudiotagger/TreeModelEvent;)V

    :cond_22
    add-int/lit8 v1, v1, -0x2

    goto :goto_a

    :cond_25
    return-void
.end method

.method public fireTreeStructureChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    invoke-virtual {v0}, Lorg/jaudiotagger/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    :goto_a
    if-ltz v1, :cond_25

    aget-object v3, v0, v1

    const-class v4, Lorg/jaudiotagger/TreeModelListener;

    if-ne v3, v4, :cond_22

    if-nez v2, :cond_19

    new-instance v2, Lorg/jaudiotagger/TreeModelEvent;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/jaudiotagger/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_19
    add-int/lit8 v3, v1, 0x1

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

    check-cast p1, Lorg/jaudiotagger/TreeNode;

    invoke-interface {p1, p2}, Lorg/jaudiotagger/TreeNode;->getChildAt(I)Lorg/jaudiotagger/TreeNode;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lorg/jaudiotagger/TreeNode;

    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->getChildCount()I

    move-result p1

    return p1
.end method

.method public getIndexOfChild(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    if-eqz p1, :cond_e

    if-nez p2, :cond_5

    goto :goto_e

    :cond_5
    check-cast p1, Lorg/jaudiotagger/TreeNode;

    check-cast p2, Lorg/jaudiotagger/TreeNode;

    invoke-interface {p1, p2}, Lorg/jaudiotagger/TreeNode;->getIndex(Lorg/jaudiotagger/TreeNode;)I

    move-result p1

    return p1

    :cond_e
    :goto_e
    const/4 p1, -0x1

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

    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/EventListenerList;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p1

    return-object p1
.end method

.method public getPathToRoot(Lorg/jaudiotagger/TreeNode;)[Lorg/jaudiotagger/TreeNode;
    .registers 3

    const/4 v0, 0x0

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

    :cond_6
    new-array p1, p2, [Lorg/jaudiotagger/TreeNode;

    goto :goto_1f

    :cond_9
    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->root:Lorg/jaudiotagger/TreeNode;

    if-ne p1, v0, :cond_12

    new-array v0, p2, [Lorg/jaudiotagger/TreeNode;

    goto :goto_1a

    :cond_12
    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/jaudiotagger/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/TreeNode;I)[Lorg/jaudiotagger/TreeNode;

    move-result-object v0

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

    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->root:Lorg/jaudiotagger/TreeNode;

    return-object v0
.end method

.method public getTreeModelListeners()[Lorg/jaudiotagger/TreeModelListener;
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    const-class v1, Lorg/jaudiotagger/TreeModelListener;

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/EventListenerList;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Lorg/jaudiotagger/TreeModelListener;

    check-cast v0, [Lorg/jaudiotagger/TreeModelListener;

    return-object v0
.end method

.method public insertNodeInto(Lorg/jaudiotagger/MutableTreeNode;Lorg/jaudiotagger/MutableTreeNode;I)V
    .registers 5

    invoke-interface {p2, p1, p3}, Lorg/jaudiotagger/MutableTreeNode;->insert(Lorg/jaudiotagger/MutableTreeNode;I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p3, p1, v0

    invoke-virtual {p0, p2, p1}, Lorg/jaudiotagger/DefaultTreeModel;->nodesWereInserted(Lorg/jaudiotagger/TreeNode;[I)V

    return-void
.end method

.method public isLeaf(Ljava/lang/Object;)Z
    .registers 3

    iget-boolean v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->asksAllowsChildren:Z

    if-eqz v0, :cond_d

    check-cast p1, Lorg/jaudiotagger/TreeNode;

    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->getAllowsChildren()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_d
    check-cast p1, Lorg/jaudiotagger/TreeNode;

    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->isLeaf()Z

    move-result p1

    return p1
.end method

.method public nodeChanged(Lorg/jaudiotagger/TreeNode;)V
    .registers 5

    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    if-eqz v0, :cond_27

    if-eqz p1, :cond_27

    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-interface {v0, p1}, Lorg/jaudiotagger/TreeNode;->getIndex(Lorg/jaudiotagger/TreeNode;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_27

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/DefaultTreeModel;->nodesChanged(Lorg/jaudiotagger/TreeNode;[I)V

    goto :goto_27

    :cond_1d
    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_27

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/DefaultTreeModel;->nodesChanged(Lorg/jaudiotagger/TreeNode;[I)V

    :cond_27
    :goto_27
    return-void
.end method

.method public nodeStructureChanged(Lorg/jaudiotagger/TreeNode;)V
    .registers 3

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/TreeNode;)[Lorg/jaudiotagger/TreeNode;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p0, p1, v0, v0}, Lorg/jaudiotagger/DefaultTreeModel;->fireTreeStructureChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public nodesChanged(Lorg/jaudiotagger/TreeNode;[I)V
    .registers 7

    if-eqz p1, :cond_2d

    if-eqz p2, :cond_1f

    array-length v0, p2

    if-lez v0, :cond_2d

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_17

    aget v3, p2, v2

    invoke-interface {p1, v3}, Lorg/jaudiotagger/TreeNode;->getChildAt(I)Lorg/jaudiotagger/TreeNode;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_17
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/TreeNode;)[Lorg/jaudiotagger/TreeNode;

    move-result-object p1

    invoke-virtual {p0, p0, p1, p2, v1}, Lorg/jaudiotagger/DefaultTreeModel;->fireTreeNodesChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    goto :goto_2d

    :cond_1f
    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2d

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/TreeNode;)[Lorg/jaudiotagger/TreeNode;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p0, p1, p2, p2}, Lorg/jaudiotagger/DefaultTreeModel;->fireTreeNodesChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public nodesWereInserted(Lorg/jaudiotagger/TreeNode;[I)V
    .registers 7

    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    if-eqz v0, :cond_23

    if-eqz p1, :cond_23

    if-eqz p2, :cond_23

    array-length v0, p2

    if-lez v0, :cond_23

    array-length v0, p2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_1c

    aget v3, p2, v2

    invoke-interface {p1, v3}, Lorg/jaudiotagger/TreeNode;->getChildAt(I)Lorg/jaudiotagger/TreeNode;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1c
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/TreeNode;)[Lorg/jaudiotagger/TreeNode;

    move-result-object p1

    invoke-virtual {p0, p0, p1, p2, v1}, Lorg/jaudiotagger/DefaultTreeModel;->fireTreeNodesInserted(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_23
    return-void
.end method

.method public nodesWereRemoved(Lorg/jaudiotagger/TreeNode;[I[Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/TreeNode;)[Lorg/jaudiotagger/TreeNode;

    move-result-object p1

    invoke-virtual {p0, p0, p1, p2, p3}, Lorg/jaudiotagger/DefaultTreeModel;->fireTreeNodesRemoved(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public reload()V
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->root:Lorg/jaudiotagger/TreeNode;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/DefaultTreeModel;->reload(Lorg/jaudiotagger/TreeNode;)V

    return-void
.end method

.method public reload(Lorg/jaudiotagger/TreeNode;)V
    .registers 3

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultTreeModel;->getPathToRoot(Lorg/jaudiotagger/TreeNode;)[Lorg/jaudiotagger/TreeNode;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p0, p1, v0, v0}, Lorg/jaudiotagger/DefaultTreeModel;->fireTreeStructureChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public removeNodeFromParent(Lorg/jaudiotagger/MutableTreeNode;)V
    .registers 7

    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/MutableTreeNode;

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1}, Lorg/jaudiotagger/TreeNode;->getIndex(Lorg/jaudiotagger/TreeNode;)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-interface {v0, v3}, Lorg/jaudiotagger/MutableTreeNode;->remove(I)V

    aput-object p1, v1, v4

    invoke-virtual {p0, v0, v2, v1}, Lorg/jaudiotagger/DefaultTreeModel;->nodesWereRemoved(Lorg/jaudiotagger/TreeNode;[I[Ljava/lang/Object;)V

    return-void

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "node does not have a parent."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeTreeModelListener(Lorg/jaudiotagger/TreeModelListener;)V
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->listenerList:Lorg/jaudiotagger/EventListenerList;

    const-class v1, Lorg/jaudiotagger/TreeModelListener;

    invoke-virtual {v0, v1, p1}, Lorg/jaudiotagger/EventListenerList;->remove(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void
.end method

.method public setAsksAllowsChildren(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/jaudiotagger/DefaultTreeModel;->asksAllowsChildren:Z

    return-void
.end method

.method public setRoot(Lorg/jaudiotagger/TreeNode;)V
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/DefaultTreeModel;->root:Lorg/jaudiotagger/TreeNode;

    iput-object p1, p0, Lorg/jaudiotagger/DefaultTreeModel;->root:Lorg/jaudiotagger/TreeNode;

    if-nez p1, :cond_d

    if-eqz v0, :cond_d

    const/4 p1, 0x0

    invoke-direct {p0, p0, p1}, Lorg/jaudiotagger/DefaultTreeModel;->fireTreeStructureChanged(Ljava/lang/Object;Lorg/jaudiotagger/TreePath;)V

    goto :goto_10

    :cond_d
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultTreeModel;->nodeStructureChanged(Lorg/jaudiotagger/TreeNode;)V

    :goto_10
    return-void
.end method

.method public valueForPathChanged(Lorg/jaudiotagger/TreePath;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p1}, Lorg/jaudiotagger/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/MutableTreeNode;

    invoke-interface {p1, p2}, Lorg/jaudiotagger/MutableTreeNode;->setUserObject(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/DefaultTreeModel;->nodeChanged(Lorg/jaudiotagger/TreeNode;)V

    return-void
.end method
