.class final Lorg/jaudiotagger/DefaultMutableTreeNode$PathBetweenNodesEnumeration;
.super Ljava/lang/Object;
.source "DefaultMutableTreeNode.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/DefaultMutableTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PathBetweenNodesEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Lorg/jaudiotagger/TreeNode;",
        ">;"
    }
.end annotation


# instance fields
.field public stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/jaudiotagger/TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lorg/jaudiotagger/DefaultMutableTreeNode;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/DefaultMutableTreeNode;Lorg/jaudiotagger/TreeNode;Lorg/jaudiotagger/TreeNode;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PathBetweenNodesEnumeration;->this$0:Lorg/jaudiotagger/DefaultMutableTreeNode;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    if-eqz p2, :cond_45

    .line 8
    if-eqz p3, :cond_45

    .line 10
    new-instance p1, Ljava/util/Stack;

    .line 12
    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PathBetweenNodesEnumeration;->stack:Ljava/util/Stack;

    .line 17
    invoke-virtual {p1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-object p1, p3

    .line 21
    :goto_14
    if-eq p1, p2, :cond_44

    .line 23
    invoke-interface {p1}, Lorg/jaudiotagger/TreeNode;->getParent()Lorg/jaudiotagger/TreeNode;

    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_3e

    .line 29
    if-ne p3, p2, :cond_1f

    .line 31
    goto :goto_3e

    .line 32
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const-string v1, "node "

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    const-string p2, " is not an ancestor of "

    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p2

    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p1

    .line 63
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PathBetweenNodesEnumeration;->stack:Ljava/util/Stack;

    .line 65
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    goto :goto_14

    .line 69
    :cond_44
    return-void

    .line 70
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 72
    const-string p2, "argument is null"

    .line 74
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p1
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PathBetweenNodesEnumeration;->stack:Ljava/util/Stack;

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode$PathBetweenNodesEnumeration;->nextElement()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lorg/jaudiotagger/TreeNode;
    .registers 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PathBetweenNodesEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/TreeNode;
    :try_end_8
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 3
    :catch_9
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
