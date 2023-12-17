.class final Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;
.super Ljava/lang/Object;
.source "DefaultMutableTreeNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Queue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;
    }
.end annotation


# instance fields
.field public head:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

.field public tail:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

.field public final synthetic this$1:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->this$1:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public dequeue()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->head:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    iget-object v1, v0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->object:Ljava/lang/Object;

    .line 7
    iget-object v2, v0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->next:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    .line 9
    iput-object v2, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->head:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_10

    .line 14
    iput-object v3, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->tail:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    .line 16
    goto :goto_12

    .line 17
    :cond_10
    iput-object v3, v0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->next:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    .line 19
    :goto_12
    return-object v1

    .line 20
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 22
    const-string v1, "No more elements"

    .line 24
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 27
    throw v0
.end method

.method public enqueue(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->head:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_f

    .line 6
    new-instance v0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    .line 8
    invoke-direct {v0, p0, p1, v1}, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;-><init>(Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;Ljava/lang/Object;Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;)V

    .line 11
    iput-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->tail:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    .line 13
    iput-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->head:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    .line 15
    goto :goto_1e

    .line 16
    :cond_f
    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->tail:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    .line 18
    new-instance v2, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    .line 20
    invoke-direct {v2, p0, p1, v1}, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;-><init>(Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;Ljava/lang/Object;Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;)V

    .line 23
    iput-object v2, v0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->next:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    .line 25
    iget-object p1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->tail:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    .line 27
    iget-object p1, p1, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->next:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    .line 29
    iput-object p1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->tail:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    .line 31
    :goto_1e
    return-void
.end method

.method public firstObject()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->head:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget-object v0, v0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->object:Ljava/lang/Object;

    .line 7
    return-object v0

    .line 8
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 10
    const-string v1, "No more elements"

    .line 12
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 15
    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->head:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method
