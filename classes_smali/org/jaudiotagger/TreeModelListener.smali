.class public interface abstract Lorg/jaudiotagger/TreeModelListener;
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
.method public abstract treeNodesChanged(Lorg/jaudiotagger/TreeModelEvent;)V
.end method

.method public abstract treeNodesInserted(Lorg/jaudiotagger/TreeModelEvent;)V
.end method

.method public abstract treeNodesRemoved(Lorg/jaudiotagger/TreeModelEvent;)V
.end method

.method public abstract treeStructureChanged(Lorg/jaudiotagger/TreeModelEvent;)V
.end method
