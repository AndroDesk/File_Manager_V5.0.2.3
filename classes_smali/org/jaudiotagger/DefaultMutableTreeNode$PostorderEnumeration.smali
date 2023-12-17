.class final Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;
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
    name = "PostorderEnumeration"
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
.field public children:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Lorg/jaudiotagger/TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field public root:Lorg/jaudiotagger/TreeNode;

.field public subtree:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Lorg/jaudiotagger/TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lorg/jaudiotagger/DefaultMutableTreeNode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/DefaultMutableTreeNode;Lorg/jaudiotagger/TreeNode;)V
    .registers 3

    iput-object p1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;->this$0:Lorg/jaudiotagger/DefaultMutableTreeNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;->root:Lorg/jaudiotagger/TreeNode;

    invoke-interface {p2}, Lorg/jaudiotagger/TreeNode;->children()Ljava/util/Enumeration;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;->children:Ljava/util/Enumeration;

    sget-object p1, Lorg/jaudiotagger/DefaultMutableTreeNode;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    iput-object p1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;->subtree:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;->root:Lorg/jaudiotagger/TreeNode;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;->nextElement()Lorg/jaudiotagger/TreeNode;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lorg/jaudiotagger/TreeNode;
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;->subtree:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;->subtree:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/TreeNode;

    goto :goto_36

    :cond_11
    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;->children:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;

    iget-object v1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;->this$0:Lorg/jaudiotagger/DefaultMutableTreeNode;

    iget-object v2, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;->children:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/TreeNode;

    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;-><init>(Lorg/jaudiotagger/DefaultMutableTreeNode;Lorg/jaudiotagger/TreeNode;)V

    iput-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;->subtree:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/TreeNode;

    goto :goto_36

    :cond_31
    iget-object v0, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;->root:Lorg/jaudiotagger/TreeNode;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jaudiotagger/DefaultMutableTreeNode$PostorderEnumeration;->root:Lorg/jaudiotagger/TreeNode;

    :goto_36
    return-object v0
.end method
