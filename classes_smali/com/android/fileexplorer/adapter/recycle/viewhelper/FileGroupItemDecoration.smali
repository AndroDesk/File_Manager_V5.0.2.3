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

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    .line 4
    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mVideoColumnCount:I

    .line 7
    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mPicColumnCount:I

    .line 9
    const/4 v0, 0x3

    .line 10
    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocColumnCount:I

    .line 12
    const v0, 0x7f070247

    .line 15
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mCommonMargin:I

    .line 21
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mHeaderCount:I

    .line 23
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDataList:Ljava/util/List;

    .line 25
    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocTop:I

    .line 28
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocBottom:I

    .line 30
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocMiddle:I

    .line 32
    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    .line 34
    const p1, 0x7f070726

    .line 37
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 40
    move-result p2

    .line 41
    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    .line 43
    div-int/lit8 v0, p2, 0x2

    .line 45
    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mVideoTop:I

    .line 47
    div-int/lit8 p2, p2, 0x2

    .line 49
    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mVideoBottom:I

    .line 51
    iget p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mCommonMargin:I

    .line 53
    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    .line 55
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 58
    move-result p1

    .line 59
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginMiddle:I

    .line 61
    div-int/lit8 p2, p1, 0x2

    .line 63
    iput p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mPicTop:I

    .line 65
    div-int/lit8 p1, p1, 0x2

    .line 67
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mPicBottom:I

    .line 69
    return-void
.end method

.method private fitDocRect(Lcom/android/fileexplorer/model/group/FileGroupData;Landroid/graphics/Rect;)V
    .registers 7

    .line 1
    iget p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mIndexInParent:I

    .line 3
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocColumnCount:I

    .line 5
    rem-int/2addr p1, v0

    .line 6
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->docMarginSide:I

    .line 8
    mul-int/lit8 v1, v1, 0x2

    .line 10
    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocMiddle:I

    .line 12
    const/4 v3, 0x1

    .line 13
    sub-int/2addr v0, v3

    .line 14
    mul-int/2addr v0, v2

    .line 15
    add-int/2addr v0, v1

    .line 16
    div-int/lit8 v0, v0, 0x3

    .line 18
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocTop:I

    .line 20
    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 22
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocBottom:I

    .line 24
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 26
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    .line 29
    move-result v1

    .line 30
    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocColumnCount:I

    .line 32
    invoke-virtual {p0, p1, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->isInGroupFirst(II)Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_37

    .line 38
    if-eqz v1, :cond_2f

    .line 40
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->docMarginSide:I

    .line 42
    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 44
    sub-int/2addr v0, p1

    .line 45
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 47
    goto :goto_6e

    .line 48
    :cond_2f
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->docMarginSide:I

    .line 50
    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 52
    sub-int/2addr v0, p1

    .line 53
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 55
    goto :goto_6e

    .line 56
    :cond_37
    if-ne p1, v3, :cond_55

    .line 58
    if-eqz v1, :cond_48

    .line 60
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocMiddle:I

    .line 62
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->docMarginSide:I

    .line 64
    sub-int v1, v0, v1

    .line 66
    sub-int/2addr p1, v1

    .line 67
    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 69
    sub-int/2addr v0, p1

    .line 70
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 72
    goto :goto_6e

    .line 73
    :cond_48
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocMiddle:I

    .line 75
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->docMarginSide:I

    .line 77
    sub-int v1, v0, v1

    .line 79
    sub-int/2addr p1, v1

    .line 80
    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 82
    sub-int/2addr v0, p1

    .line 83
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 85
    goto :goto_6e

    .line 86
    :cond_55
    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDocColumnCount:I

    .line 88
    invoke-virtual {p0, p1, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->isInGroupLast(II)Z

    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_6e

    .line 94
    if-eqz v1, :cond_67

    .line 96
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->docMarginSide:I

    .line 98
    sub-int/2addr v0, p1

    .line 99
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 101
    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 103
    goto :goto_6e

    .line 104
    :cond_67
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->docMarginSide:I

    .line 106
    sub-int/2addr v0, p1

    .line 107
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 109
    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 111
    :cond_6e
    :goto_6e
    return-void
.end method

.method private fitPicture(Lcom/android/fileexplorer/model/group/FileGroupData;Landroid/graphics/Rect;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isSingle()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_c

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isMulti()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_98

    .line 13
    :cond_c
    iget p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mIndexInParent:I

    .line 15
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mPicColumnCount:I

    .line 17
    rem-int/2addr p1, v0

    .line 18
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mPicBottom:I

    .line 20
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 22
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mPicTop:I

    .line 24
    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 26
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginMiddle:I

    .line 28
    add-int/lit8 v2, v0, -0x1

    .line 30
    mul-int/2addr v2, v1

    .line 31
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    .line 33
    const/4 v3, 0x2

    .line 34
    mul-int/2addr v1, v3

    .line 35
    add-int/2addr v1, v2

    .line 36
    div-int/2addr v1, v0

    .line 37
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    .line 40
    move-result v0

    .line 41
    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mPicColumnCount:I

    .line 43
    invoke-virtual {p0, p1, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->isInGroupFirst(II)Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_42

    .line 49
    if-nez v0, :cond_3a

    .line 51
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    .line 53
    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 55
    sub-int/2addr v1, p1

    .line 56
    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 58
    goto :goto_98

    .line 59
    :cond_3a
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    .line 61
    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 63
    sub-int/2addr v1, p1

    .line 64
    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 66
    goto :goto_98

    .line 67
    :cond_42
    const/4 v2, 0x1

    .line 68
    if-ne p1, v2, :cond_61

    .line 70
    if-nez v0, :cond_54

    .line 72
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    .line 74
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    .line 76
    sub-int v0, v1, v0

    .line 78
    sub-int/2addr p1, v0

    .line 79
    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 81
    sub-int/2addr v1, p1

    .line 82
    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 84
    goto :goto_98

    .line 85
    :cond_54
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    .line 87
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    .line 89
    sub-int v0, v1, v0

    .line 91
    sub-int/2addr p1, v0

    .line 92
    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 94
    sub-int/2addr v1, p1

    .line 95
    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 97
    goto :goto_98

    .line 98
    :cond_61
    if-ne p1, v3, :cond_7f

    .line 100
    if-nez v0, :cond_72

    .line 102
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    .line 104
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    .line 106
    sub-int v0, v1, v0

    .line 108
    sub-int/2addr p1, v0

    .line 109
    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 111
    sub-int/2addr v1, p1

    .line 112
    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 114
    goto :goto_98

    .line 115
    :cond_72
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    .line 117
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    .line 119
    sub-int v0, v1, v0

    .line 121
    sub-int/2addr p1, v0

    .line 122
    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 124
    sub-int/2addr v1, p1

    .line 125
    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 127
    goto :goto_98

    .line 128
    :cond_7f
    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mPicColumnCount:I

    .line 130
    invoke-virtual {p0, p1, v2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->isInGroupLast(II)Z

    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_98

    .line 136
    if-nez v0, :cond_91

    .line 138
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    .line 140
    sub-int/2addr v1, p1

    .line 141
    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 143
    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 145
    goto :goto_98

    .line 146
    :cond_91
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->pictureMarginSide:I

    .line 148
    sub-int/2addr v1, p1

    .line 149
    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 151
    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 153
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

    .line 1
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isSingle()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_c

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isMulti()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d2

    .line 13
    :cond_c
    iget v0, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mIndexInParent:I

    .line 15
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mVideoColumnCount:I

    .line 17
    rem-int/2addr v0, v1

    .line 18
    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mVideoBottom:I

    .line 20
    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 22
    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mVideoTop:I

    .line 24
    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 26
    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    .line 28
    add-int/lit8 v3, v1, -0x1

    .line 30
    mul-int/2addr v3, v2

    .line 31
    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    .line 33
    const/4 v4, 0x2

    .line 34
    mul-int/2addr v2, v4

    .line 35
    add-int/2addr v2, v3

    .line 36
    div-int/2addr v2, v1

    .line 37
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->isRTL()Z

    .line 40
    move-result v1

    .line 41
    iget v3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mVideoColumnCount:I

    .line 43
    invoke-virtual {p0, v0, v3}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->isInGroupFirst(II)Z

    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_44

    .line 49
    if-eqz v1, :cond_3b

    .line 51
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    .line 53
    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 55
    sub-int/2addr v2, p1

    .line 56
    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 58
    goto/16 :goto_d2

    .line 60
    :cond_3b
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    .line 62
    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 64
    sub-int/2addr v2, p1

    .line 65
    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 67
    goto/16 :goto_d2

    .line 69
    :cond_44
    const/4 v3, 0x1

    .line 70
    if-ne v0, v3, :cond_65

    .line 72
    if-eqz v1, :cond_57

    .line 74
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    .line 76
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    .line 78
    sub-int v0, v2, v0

    .line 80
    sub-int/2addr p1, v0

    .line 81
    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 83
    sub-int/2addr v2, p1

    .line 84
    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 86
    goto/16 :goto_d2

    .line 88
    :cond_57
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    .line 90
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    .line 92
    sub-int v0, v2, v0

    .line 94
    sub-int/2addr p1, v0

    .line 95
    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 97
    sub-int/2addr v2, p1

    .line 98
    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 100
    goto/16 :goto_d2

    .line 102
    :cond_65
    if-ne v0, v4, :cond_83

    .line 104
    if-eqz v1, :cond_76

    .line 106
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    .line 108
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    .line 110
    sub-int v0, v2, v0

    .line 112
    sub-int/2addr p1, v0

    .line 113
    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 115
    sub-int/2addr v2, p1

    .line 116
    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 118
    goto :goto_d2

    .line 119
    :cond_76
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginMiddle:I

    .line 121
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    .line 123
    sub-int v0, v2, v0

    .line 125
    sub-int/2addr p1, v0

    .line 126
    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 128
    sub-int/2addr v2, p1

    .line 129
    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 131
    goto :goto_d2

    .line 132
    :cond_83
    iget v3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mVideoColumnCount:I

    .line 134
    invoke-virtual {p0, v0, v3}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->isInGroupLast(II)Z

    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_d2

    .line 140
    if-eqz v1, :cond_94

    .line 142
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    .line 144
    sub-int v0, v2, v0

    .line 146
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 148
    goto :goto_9a

    .line 149
    :cond_94
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    .line 151
    sub-int v0, v2, v0

    .line 153
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 155
    :goto_9a
    const v0, 0x7f070753

    .line 158
    if-eqz v1, :cond_b9

    .line 160
    iget-object p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    .line 162
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 164
    iget-boolean p1, p1, Lcom/android/fileexplorer/dao/file/FileItem;->mJumpToVideo:Z

    .line 166
    if-eqz p1, :cond_b4

    .line 168
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    .line 170
    sub-int/2addr v2, p1

    .line 171
    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 173
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 176
    move-result v0

    .line 177
    sub-int/2addr p1, v0

    .line 178
    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 180
    goto :goto_d2

    .line 181
    :cond_b4
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    .line 183
    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 185
    goto :goto_d2

    .line 186
    :cond_b9
    iget-object p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    .line 188
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 190
    iget-boolean p1, p1, Lcom/android/fileexplorer/dao/file/FileItem;->mJumpToVideo:Z

    .line 192
    if-eqz p1, :cond_ce

    .line 194
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    .line 196
    sub-int/2addr v2, p1

    .line 197
    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 199
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 202
    move-result v0

    .line 203
    sub-int/2addr p1, v0

    .line 204
    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 206
    goto :goto_d2

    .line 207
    :cond_ce
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->videoMarginSide:I

    .line 209
    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 211
    :cond_d2
    :goto_d2
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .registers 9

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 4
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mCommonMargin:I

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/android/fileexplorer/util/DisplayUtil;->getRealScreenWidth(Landroid/content/Context;)I

    .line 13
    move-result v1

    .line 14
    iget v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mCommonMargin:I

    .line 16
    mul-int/lit8 v2, v2, 0x2

    .line 18
    sub-int/2addr v1, v2

    .line 19
    const v2, 0x7f070168

    .line 22
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 25
    move-result v2

    .line 26
    mul-int/lit8 v2, v2, 0x3

    .line 28
    sub-int/2addr v1, v2

    .line 29
    const/4 v2, 0x4

    .line 30
    div-int/2addr v1, v2

    .line 31
    sub-int/2addr v0, v1

    .line 32
    iput v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->docMarginSide:I

    .line 34
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 37
    move-result v0

    .line 38
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDataList:Ljava/util/List;

    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 43
    move-result v1

    .line 44
    iget v3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mHeaderCount:I

    .line 46
    add-int/2addr v1, v3

    .line 47
    if-gt v1, v0, :cond_34

    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 52
    return-void

    .line 53
    :cond_34
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->mDataList:Ljava/util/List;

    .line 55
    sub-int/2addr v0, v3

    .line 56
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 62
    iget v1, v0, Lcom/android/fileexplorer/model/group/FileGroupData;->viewType:I

    .line 64
    if-eq v1, v2, :cond_55

    .line 66
    const/16 v2, 0xf

    .line 68
    if-eq v1, v2, :cond_51

    .line 70
    const/16 v2, 0x10

    .line 72
    if-eq v1, v2, :cond_4d

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V

    .line 77
    goto :goto_58

    .line 78
    :cond_4d
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->fitDocRect(Lcom/android/fileexplorer/model/group/FileGroupData;Landroid/graphics/Rect;)V

    .line 81
    goto :goto_58

    .line 82
    :cond_51
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->fitVideo(Lcom/android/fileexplorer/model/group/FileGroupData;Landroid/graphics/Rect;)V

    .line 85
    goto :goto_58

    .line 86
    :cond_55
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/FileGroupItemDecoration;->fitPicture(Lcom/android/fileexplorer/model/group/FileGroupData;Landroid/graphics/Rect;)V

    .line 89
    :goto_58
    return-void
.end method

.method public isInGroupFirst(II)Z
    .registers 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq v0, p1, :cond_8

    .line 4
    rem-int/2addr p1, p2

    .line 5
    if-nez p1, :cond_8

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p1, 0x0

    .line 10
    :goto_9
    return p1
.end method

.method public isInGroupLast(II)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    if-eq v1, p1, :cond_9

    .line 5
    rem-int/2addr p1, p2

    .line 6
    sub-int/2addr p2, v0

    .line 7
    if-ne p1, p2, :cond_9

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return v0
.end method
