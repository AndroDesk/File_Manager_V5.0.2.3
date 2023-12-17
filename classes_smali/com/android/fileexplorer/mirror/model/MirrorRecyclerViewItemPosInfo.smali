.class public Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;
.super Ljava/lang/Object;
.source "MirrorRecyclerViewItemPosInfo.java"


# instance fields
.field public b:I

.field public l:I

.field public mIsGroupHeader:Z

.field public r:I

.field public t:I

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->mIsGroupHeader:Z

    .line 7
    return-void
.end method


# virtual methods
.method public b(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->b:I

    .line 3
    return-object p0
.end method

.method public getB()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->b:I

    .line 3
    return v0
.end method

.method public getL()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->l:I

    .line 3
    return v0
.end method

.method public getR()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->r:I

    .line 3
    return v0
.end method

.method public getT()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->t:I

    .line 3
    return v0
.end method

.method public getY()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->y:F

    .line 3
    return v0
.end method

.method public isGroupHeader()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->mIsGroupHeader:Z

    .line 3
    return v0
.end method

.method public l(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->l:I

    .line 3
    return-object p0
.end method

.method public r(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->r:I

    .line 3
    return-object p0
.end method

.method public setGroupHeader(Z)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->mIsGroupHeader:Z

    .line 3
    return-object p0
.end method

.method public t(I)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->t:I

    .line 3
    return-object p0
.end method

.method public y(F)Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorRecyclerViewItemPosInfo;->y:F

    .line 3
    return-object p0
.end method
