.class final Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;
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
    name = "PreorderEnumeration"
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

.field public final synthetic this$0:Lorg/jaudiotagger/DefaultMutableTreeNode;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/DefaultMutableTreeNode;Lorg/jaudiotagger/TreeNode;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;->this$0:Lorg/jaudiotagger/DefaultMutableTreeNode;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/util/Vector;

    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0}, Ljava/util/Vector;-><init>(I)V

    .line 12
    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 15
    new-instance p2, Ljava/util/Stack;

    .line 17
    invoke-direct {p2}, Ljava/util/Stack;-><init>()V

    .line 20
    iput-object p2, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;->stack:Ljava/util/Stack;

    .line 22
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;->stack:Ljava/util/Stack;

    .line 3
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_18

    .line 9
    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;->stack:Ljava/util/Stack;

    .line 11
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/Enumeration;

    .line 17
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_18

    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    :goto_19
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;->nextElement()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lorg/jaudiotagger/TreeNode;
    .registers 4

    .line 2
    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    .line 3
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/TreeNode;

    .line 4
    invoke-interface {v1}, Lorg/jaudiotagger/TreeNode;->children()Ljava/util/Enumeration;

    move-result-object v2

    .line 5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 6
    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 7
    :cond_1d
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 8
    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    return-object v1
.end method
