.class public Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "GroupItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$n;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpaceAroundDecoration"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mColumn:I

.field private mHeaderCount:I

.field private marginMiddle:I

.field private marginSide:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(IIILjava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TT;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    iput p5, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->mHeaderCount:I

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->mColumn:I

    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    iput p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginMiddle:I

    iput-object p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 7

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    instance-of v1, p3, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    if-eqz v1, :cond_16

    move-object v1, p3

    check-cast v1, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;->isSpecialViewType(I)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    goto/16 :goto_c5

    :cond_16
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->mHeaderCount:I

    add-int/2addr p2, p3

    if-le p2, v0, :cond_c5

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->list:Ljava/util/List;

    sub-int/2addr v0, p3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/group/FileGroupData;

    invoke-virtual {p2}, Lcom/android/fileexplorer/model/group/FileGroupData;->isSingle()Z

    move-result p3

    if-nez p3, :cond_36

    invoke-virtual {p2}, Lcom/android/fileexplorer/model/group/FileGroupData;->isMulti()Z

    move-result p3

    if-eqz p3, :cond_c5

    :cond_36
    iget p2, p2, Lcom/android/fileexplorer/model/group/FileGroupData;->mIndexInParent:I

    iget p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->mColumn:I

    rem-int/2addr p2, p3

    iget p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginMiddle:I

    div-int/lit8 v0, p4, 0x2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v0, p4, 0x2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, p3, -0x1

    mul-int/2addr v0, p4

    iget p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    const/4 v1, 0x2

    mul-int/2addr p4, v1

    add-int/2addr p4, v0

    div-int/2addr p4, p3

    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result p3

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->isInGroupFirst(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    if-eqz p3, :cond_62

    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, p2

    iput p4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_be

    :cond_62
    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p2

    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_be

    :cond_6a
    const/4 v0, 0x1

    if-ne p2, v0, :cond_89

    if-eqz p3, :cond_7c

    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginMiddle:I

    iget p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    sub-int p3, p4, p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, p2

    iput p4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_be

    :cond_7c
    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginMiddle:I

    iget p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    sub-int p3, p4, p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p2

    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_be

    :cond_89
    if-ne p2, v1, :cond_a7

    if-eqz p3, :cond_9a

    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginMiddle:I

    iget p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    sub-int p3, p4, p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p2

    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_be

    :cond_9a
    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginMiddle:I

    iget p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    sub-int p3, p4, p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, p2

    iput p4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_be

    :cond_a7
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->isInGroupLast(I)Z

    move-result p2

    if-eqz p2, :cond_be

    if-eqz p3, :cond_b7

    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    sub-int/2addr p4, p2

    iput p4, p1, Landroid/graphics/Rect;->right:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_be

    :cond_b7
    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->marginSide:I

    sub-int/2addr p4, p2

    iput p4, p1, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_be
    :goto_be
    const-string p1, "SpaceAroundDecoration"

    const-string p2, "realIndex"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c5
    :goto_c5
    return-void
.end method

.method public isInGroupFirst(I)Z
    .registers 3

    const/4 v0, -0x1

    if-eq v0, p1, :cond_a

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->mColumn:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public isInGroupLast(I)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq v1, p1, :cond_b

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/GroupItemDecoration;->mColumn:I

    rem-int/2addr p1, v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method
