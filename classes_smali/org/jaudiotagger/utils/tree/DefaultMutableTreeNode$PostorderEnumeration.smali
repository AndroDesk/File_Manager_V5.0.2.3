.class final Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;
.super Ljava/lang/Object;
.source "DefaultMutableTreeNode.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PostorderEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Lorg/jaudiotagger/utils/tree/TreeNode;",
        ">;"
    }
.end annotation


# instance fields
.field public children:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Lorg/jaudiotagger/utils/tree/TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field public root:Lorg/jaudiotagger/utils/tree/TreeNode;

.field public subtree:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Lorg/jaudiotagger/utils/tree/TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;Lorg/jaudiotagger/utils/tree/TreeNode;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->this$0:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 8
    invoke-interface {p2}, Lorg/jaudiotagger/utils/tree/TreeNode;->children()Ljava/util/Enumeration;

    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->children:Ljava/util/Enumeration;

    .line 14
    sget-object p1, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    .line 16
    iput-object p1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->subtree:Ljava/util/Enumeration;

    .line 18
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 3
    if-eqz v0, :cond_6

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

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->nextElement()Lorg/jaudiotagger/utils/tree/TreeNode;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lorg/jaudiotagger/utils/tree/TreeNode;
    .registers 4

    .line 2
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->subtree:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->subtree:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/TreeNode;

    goto :goto_36

    .line 4
    :cond_11
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->children:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 5
    new-instance v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;

    iget-object v1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->this$0:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    iget-object v2, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->children:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/utils/tree/TreeNode;

    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;-><init>(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;Lorg/jaudiotagger/utils/tree/TreeNode;)V

    iput-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->subtree:Ljava/util/Enumeration;

    .line 6
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/utils/tree/TreeNode;

    goto :goto_36

    .line 7
    :cond_31
    iget-object v0, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->root:Lorg/jaudiotagger/utils/tree/TreeNode;

    :goto_36
    return-object v0
.end method
