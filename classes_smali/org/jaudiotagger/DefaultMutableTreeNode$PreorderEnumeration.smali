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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/DefaultMutableTreeNode;Lorg/jaudiotagger/TreeNode;)V
    .registers 4

    iput-object p1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;->this$0:Lorg/jaudiotagger/DefaultMutableTreeNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Vector;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance p2, Ljava/util/Stack;

    invoke-direct {p2}, Ljava/util/Stack;-><init>()V

    iput-object p2, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;->nextElement()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lorg/jaudiotagger/TreeNode;
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/TreeNode;

    invoke-interface {v1}, Lorg/jaudiotagger/TreeNode;->children()Ljava/util/Enumeration;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_1d
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PreorderEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    return-object v1
.end method