.class final Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;
.super Ljava/lang/Object;
.source "DefaultMutableTreeNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "QNode"
.end annotation


# instance fields
.field public next:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

.field public object:Ljava/lang/Object;

.field public final synthetic this$2:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;Ljava/lang/Object;Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->this$2:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->object:Ljava/lang/Object;

    .line 8
    iput-object p3, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->next:Lorg/jaudiotagger/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    .line 10
    return-void
.end method
