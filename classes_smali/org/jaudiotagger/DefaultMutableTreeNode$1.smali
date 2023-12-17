.class Lorg/jaudiotagger/DefaultMutableTreeNode$1;
.super Ljava/lang/Object;
.source "DefaultMutableTreeNode.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/DefaultMutableTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Lorg/jaudiotagger/TreeNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode$1;->nextElement()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lorg/jaudiotagger/TreeNode;
    .registers 3

    .line 2
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
