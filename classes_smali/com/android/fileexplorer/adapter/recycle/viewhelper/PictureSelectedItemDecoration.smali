.class public Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "PictureSelectedItemDecoration.java"


# instance fields
.field private mColumn:I

.field private marginMiddle:I

.field private marginSide:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->mColumn:I

    .line 6
    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginSide:I

    .line 8
    iput p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginMiddle:I

    .line 10
    return-void
.end method

.method private isInGroupFirst(I)Z
    .registers 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq v0, p1, :cond_a

    .line 4
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->mColumn:I

    .line 6
    rem-int/2addr p1, v0

    .line 7
    if-nez p1, :cond_a

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    :goto_b
    return p1
.end method

.method private isInGroupLast(I)Z
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    if-eq v1, p1, :cond_b

    .line 5
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->mColumn:I

    .line 7
    rem-int/2addr p1, v1

    .line 8
    sub-int/2addr v1, v0

    .line 9
    if-ne p1, v1, :cond_b

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return v0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 7

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 4
    move-result p2

    .line 5
    iget p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->mColumn:I

    .line 7
    rem-int/2addr p2, p3

    .line 8
    iget p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginMiddle:I

    .line 10
    div-int/lit8 v0, p4, 0x2

    .line 12
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 14
    div-int/lit8 v0, p4, 0x2

    .line 16
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 18
    add-int/lit8 v0, p3, -0x1

    .line 20
    mul-int/2addr v0, p4

    .line 21
    iget p4, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginSide:I

    .line 23
    const/4 v1, 0x2

    .line 24
    mul-int/2addr p4, v1

    .line 25
    add-int/2addr p4, v0

    .line 26
    div-int/2addr p4, p3

    .line 27
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->isInGroupFirst(I)Z

    .line 30
    move-result p3

    .line 31
    if-eqz p3, :cond_28

    .line 33
    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginSide:I

    .line 35
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 37
    sub-int/2addr p4, p2

    .line 38
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 40
    goto :goto_54

    .line 41
    :cond_28
    const/4 p3, 0x1

    .line 42
    if-ne p2, p3, :cond_38

    .line 44
    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginMiddle:I

    .line 46
    iget p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginSide:I

    .line 48
    sub-int p3, p4, p3

    .line 50
    sub-int/2addr p2, p3

    .line 51
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 53
    sub-int/2addr p4, p2

    .line 54
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 56
    goto :goto_54

    .line 57
    :cond_38
    if-ne p2, v1, :cond_47

    .line 59
    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginMiddle:I

    .line 61
    iget p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginSide:I

    .line 63
    sub-int p3, p4, p3

    .line 65
    sub-int/2addr p2, p3

    .line 66
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 68
    sub-int/2addr p4, p2

    .line 69
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 71
    goto :goto_54

    .line 72
    :cond_47
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->isInGroupLast(I)Z

    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_54

    .line 78
    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/PictureSelectedItemDecoration;->marginSide:I

    .line 80
    sub-int/2addr p4, p2

    .line 81
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 83
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 85
    :cond_54
    :goto_54
    return-void
.end method
