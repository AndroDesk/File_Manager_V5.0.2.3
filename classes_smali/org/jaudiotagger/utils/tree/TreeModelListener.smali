.class public interface abstract Lorg/jaudiotagger/utils/tree/TreeModelListener;
.super Ljava/lang/Object;
.source "TreeModelListener.java"

# interfaces
.implements Ljava/util/EventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract treeNodesChanged(Lorg/jaudiotagger/utils/tree/TreeModelEvent;)V
.end method

.method public abstract treeNodesInserted(Lorg/jaudiotagger/utils/tree/TreeModelEvent;)V
.end method

.method public abstract treeNodesRemoved(Lorg/jaudiotagger/utils/tree/TreeModelEvent;)V
.end method

.method public abstract treeStructureChanged(Lorg/jaudiotagger/utils/tree/TreeModelEvent;)V
.end method
