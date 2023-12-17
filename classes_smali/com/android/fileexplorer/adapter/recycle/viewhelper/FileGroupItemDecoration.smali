.class public Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "FileGroupItemDecoration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileGroupItemDecoration"


# instance fields
.field private docMarginSide:I

.field private mCommonMargin:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDocBottom:I

.field private mDocColumnCount:I

.field private mDocMiddle:I

.field private mDocTop:I

.field private mHeaderCount:I

.field private mPicBottom:I

.field private mPicColumnCount:I

.field private mPicTop:I

.field private mVideoBottom:I

.field private mVideoColumnCount:I

.field private mVideoTop:I

.field private pictureMarginMiddle:I

.field private pictureMarginSide:I

.field private videoMarginMiddle:I

.field private videoMarginSide:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mVideoColumnCount:I

    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mPicColumnCount:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocColumnCount:I

    const v0, 0x7f070247

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mCommonMargin:I

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mHeaderCount:I

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDataList:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocTop:I

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocBottom:I

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocMiddle:I

    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    const p1, 0x7f070726

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mVideoTop:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mVideoBottom:I

    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mCommonMargin:I

    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginMiddle:I

    div-int/lit8 p2, p1, 0x2

    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mPicTop:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mPicBottom:I

    return-void
.end method

.method private fitDocRect(Lcom/android/fileexplorer/model/group/FileGroupData;Landroid/graphics/Rect;)V
    .registers 7

    iget p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mIndexInParent:I

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocColumnCount:I

    rem-int/2addr p1, v0

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->docMarginSide:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocMiddle:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocTop:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocBottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result v1

    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocColumnCount:I

    invoke-virtual {p0, p1, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->isInGroupFirst(II)Z

    move-result v2

    if-eqz v2, :cond_37

    if-eqz v1, :cond_2f

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->docMarginSide:I

    iput p1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_6e

    :cond_2f
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->docMarginSide:I

    iput p1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_6e

    :cond_37
    if-ne p1, v3, :cond_55

    if-eqz v1, :cond_48

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocMiddle:I

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->docMarginSide:I

    sub-int v1, v0, v1

    sub-int/2addr p1, v1

    iput p1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_6e

    :cond_48
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocMiddle:I

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->docMarginSide:I

    sub-int v1, v0, v1

    sub-int/2addr p1, v1

    iput p1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_6e

    :cond_55
    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocColumnCount:I

    invoke-virtual {p0, p1, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->isInGroupLast(II)Z

    move-result p1

    if-eqz p1, :cond_6e

    if-eqz v1, :cond_67

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->docMarginSide:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iput p1, p2, Landroid/graphics/Rect;->left:I

    goto :goto_6e

    :cond_67
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->docMarginSide:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->left:I

    iput p1, p2, Landroid/graphics/Rect;->right:I

    :cond_6e
    :goto_6e
    return-void
.end method

.method private fitPicture(Lcom/android/fileexplorer/model/group/FileGroupData;Landroid/graphics/Rect;)V
    .registers 7

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isSingle()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isMulti()Z

    move-result v0

    if-eqz v0, :cond_98

    :cond_c
    iget p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mIndexInParent:I

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mPicColumnCount:I

    rem-int/2addr p1, v0

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mPicBottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mPicTop:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginMiddle:I

    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, v1

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    const/4 v3, 0x2

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    div-int/2addr v1, v0

    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result v0

    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mPicColumnCount:I

    invoke-virtual {p0, p1, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->isInGroupFirst(II)Z

    move-result v2

    if-eqz v2, :cond_42

    if-nez v0, :cond_3a

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    iput p1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_98

    :cond_3a
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    iput p1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    iput v1, p2, Landroid/graphics/Rect;->left:I

    goto :goto_98

    :cond_42
    const/4 v2, 0x1

    if-ne p1, v2, :cond_61

    if-nez v0, :cond_54

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    sub-int v0, v1, v0

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_98

    :cond_54
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    sub-int v0, v1, v0

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    iput v1, p2, Landroid/graphics/Rect;->left:I

    goto :goto_98

    :cond_61
    if-ne p1, v3, :cond_7f

    if-nez v0, :cond_72

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    sub-int v0, v1, v0

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    iput v1, p2, Landroid/graphics/Rect;->left:I

    goto :goto_98

    :cond_72
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    sub-int v0, v1, v0

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    iput v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_98

    :cond_7f
    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mPicColumnCount:I

    invoke-virtual {p0, p1, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->isInGroupLast(II)Z

    move-result p1

    if-eqz p1, :cond_98

    if-nez v0, :cond_91

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    sub-int/2addr v1, p1

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iput p1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_98

    :cond_91
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    sub-int/2addr v1, p1

    iput v1, p2, Landroid/graphics/Rect;->right:I

    iput p1, p2, Landroid/graphics/Rect;->left:I

    :cond_98
    :goto_98
    return-void
.end method

.method private fitVideo(Lcom/android/fileexplorer/model/group/FileGroupData;Landroid/graphics/Rect;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isSingle()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isMulti()Z

    move-result v0

    if-eqz v0, :cond_d2

    :cond_c
    iget v0, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mIndexInParent:I

    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mVideoColumnCount:I

    rem-int/2addr v0, v1

    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mVideoBottom:I

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mVideoTop:I

    iput v2, p2, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    add-int/lit8 v3, v1, -0x1

    mul-int/2addr v3, v2

    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    const/4 v4, 0x2

    mul-int/2addr v2, v4

    add-int/2addr v2, v3

    div-int/2addr v2, v1

    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    move-result v1

    iget v3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mVideoColumnCount:I

    invoke-virtual {p0, v0, v3}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->isInGroupFirst(II)Z

    move-result v3

    if-eqz v3, :cond_44

    if-eqz v1, :cond_3b

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    iput p1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p1

    iput v2, p2, Landroid/graphics/Rect;->left:I

    goto/16 :goto_d2

    :cond_3b
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    iput p1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p1

    iput v2, p2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_d2

    :cond_44
    const/4 v3, 0x1

    if-ne v0, v3, :cond_65

    if-eqz v1, :cond_57

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    sub-int v0, v2, v0

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p1

    iput v2, p2, Landroid/graphics/Rect;->left:I

    goto/16 :goto_d2

    :cond_57
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    sub-int v0, v2, v0

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p1

    iput v2, p2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_d2

    :cond_65
    if-ne v0, v4, :cond_83

    if-eqz v1, :cond_76

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    sub-int v0, v2, v0

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p1

    iput v2, p2, Landroid/graphics/Rect;->right:I

    goto :goto_d2

    :cond_76
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    sub-int v0, v2, v0

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p1

    iput v2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_d2

    :cond_83
    iget v3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mVideoColumnCount:I

    invoke-virtual {p0, v0, v3}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->isInGroupLast(II)Z

    move-result v0

    if-eqz v0, :cond_d2

    if-eqz v1, :cond_94

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    sub-int v0, v2, v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_9a

    :cond_94
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    sub-int v0, v2, v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    :goto_9a
    const v0, 0x7f070753

    if-eqz v1, :cond_b9

    iget-object p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    iget-boolean p1, p1, Lcom/android/fileexplorer/dao/file/FileItem;->mJumpToVideo:Z

    if-eqz p1, :cond_b4

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    sub-int/2addr v2, p1

    iput v2, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Rect;->left:I

    goto :goto_d2

    :cond_b4
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    iput p1, p2, Landroid/graphics/Rect;->left:I

    goto :goto_d2

    :cond_b9
    iget-object p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    iget-boolean p1, p1, Lcom/android/fileexplorer/dao/file/FileItem;->mJumpToVideo:Z

    if-eqz p1, :cond_ce

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    sub-int/2addr v2, p1

    iput v2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_d2

    :cond_ce
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    iput p1, p2, Landroid/graphics/Rect;->right:I

    :cond_d2
    :goto_d2
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 9

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mCommonMargin:I

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/util/DisplayUtil;->getRealScreenWidth(Landroid/content/Context;)I

    move-result v1

    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mCommonMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const v2, 0x7f070168

    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    const/4 v2, 0x4

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->docMarginSide:I

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mHeaderCount:I

    add-int/2addr v1, v3

    if-gt v1, v0, :cond_34

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    return-void

    :cond_34
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDataList:Ljava/util/List;

    sub-int/2addr v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/group/FileGroupData;

    iget v1, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->viewType:I

    if-eq v1, v2, :cond_55

    const/16 v2, 0xf

    if-eq v1, v2, :cond_51

    const/16 v2, 0x10

    if-eq v1, v2, :cond_4d

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    goto :goto_58

    :cond_4d
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->fitDocRect(Lcom/android/fileexplorer/model/group/FileGroupData;Landroid/graphics/Rect;)V

    goto :goto_58

    :cond_51
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->fitVideo(Lcom/android/fileexplorer/model/group/FileGroupData;Landroid/graphics/Rect;)V

    goto :goto_58

    :cond_55
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->fitPicture(Lcom/android/fileexplorer/model/group/FileGroupData;Landroid/graphics/Rect;)V

    :goto_58
    return-void
.end method

.method public isInGroupFirst(II)Z
    .registers 4

    const/4 v0, -0x1

    if-eq v0, p1, :cond_8

    rem-int/2addr p1, p2

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public isInGroupLast(II)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq v1, p1, :cond_9

    rem-int/2addr p1, p2

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
