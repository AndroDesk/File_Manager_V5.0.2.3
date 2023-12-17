.class public Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "PictureSelectedItemDecoration.java"


# instance fields
.field private mColumn:I

.field private marginMiddle:I

.field private marginSide:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->mColumn:I

    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginSide:I

    iput p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginMiddle:I

    return-void
.end method

.method private isInGroupFirst(I)Z
    .registers 3

    const/4 v0, -0x1

    if-eq v0, p1, :cond_a

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->mColumn:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private isInGroupLast(I)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq v1, p1, :cond_b

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->mColumn:I

    rem-int/2addr p1, v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 7

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->mColumn:I

    rem-int/2addr p2, p3

    iget p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginMiddle:I

    div-int/lit8 v0, p4, 0x2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v0, p4, 0x2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, p3, -0x1

    mul-int/2addr v0, p4

    iget p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginSide:I

    const/4 v1, 0x2

    mul-int/2addr p4, v1

    add-int/2addr p4, v0

    div-int/2addr p4, p3

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->isInGroupFirst(I)Z

    move-result p3

    if-eqz p3, :cond_28

    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginSide:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p2

    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_54

    :cond_28
    const/4 p3, 0x1

    if-ne p2, p3, :cond_38

    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginMiddle:I

    iget p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginSide:I

    sub-int p3, p4, p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p2

    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_54

    :cond_38
    if-ne p2, v1, :cond_47

    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginMiddle:I

    iget p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginSide:I

    sub-int p3, p4, p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, p2

    iput p4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_54

    :cond_47
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->isInGroupLast(I)Z

    move-result p2

    if-eqz p2, :cond_54

    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginSide:I

    sub-int/2addr p4, p2

    iput p4, p1, Landroid/graphics/Rect;->left:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_54
    :goto_54
    return-void
.end method
