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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration;)V
    .registers 2

    iput-object p1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->this$1:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dequeue()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->head:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    if-eqz v0, :cond_13

    iget-object v1, v0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->object:Ljava/lang/Object;

    iget-object v2, v0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->next:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    iput-object v2, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->head:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    const/4 v3, 0x0

    if-nez v2, :cond_10

    iput-object v3, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->tail:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    goto :goto_12

    :cond_10
    iput-object v3, v0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->next:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    :goto_12
    return-object v1

    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enqueue(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->head:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    new-instance v0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    invoke-direct {v0, p0, p1, v1}, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;-><init>(Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;Ljava/lang/Object;Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;)V

    iput-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->tail:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    iput-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->head:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    goto :goto_1e

    :cond_f
    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->tail:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    new-instance v2, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    invoke-direct {v2, p0, p1, v1}, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;-><init>(Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;Ljava/lang/Object;Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;)V

    iput-object v2, v0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->next:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    iget-object p1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->tail:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    iget-object p1, p1, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->next:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    iput-object p1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->tail:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    :goto_1e
    return-void
.end method

.method public firstObject()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->head:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->object:Ljava/lang/Object;

    return-object v0

    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->head:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
