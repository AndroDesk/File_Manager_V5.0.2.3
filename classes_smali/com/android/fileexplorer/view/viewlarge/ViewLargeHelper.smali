.class public Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;
.super Ljava/lang/Object;
.source "ViewLargeHelper.java"


# static fields
.field private static mViewLargeHelper:Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private mImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileWithExt;",
            ">;"
        }
    .end annotation
.end field

.field private mPos:I

.field private mPreviewImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->lock:Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mViewLargeHelper:Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;

    .line 7
    invoke-direct {v0}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;-><init>()V

    .line 10
    sput-object v0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mViewLargeHelper:Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;

    .line 12
    :cond_b
    sget-object v0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mViewLargeHelper:Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;

    .line 14
    return-object v0
.end method


# virtual methods
.method public clearFileList()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    const-string v1, ""

    .line 6
    iput-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mTitle:Ljava/lang/String;

    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPos:I

    .line 11
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mImageList:Ljava/util/List;

    .line 13
    if-eqz v1, :cond_19

    .line 15
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_19

    .line 21
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mImageList:Ljava/util/List;

    .line 23
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 26
    :cond_19
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPreviewImageList:Ljava/util/List;

    .line 28
    if-eqz v1, :cond_28

    .line 30
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_28

    .line 36
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPreviewImageList:Ljava/util/List;

    .line 38
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 41
    :cond_28
    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPreviewImageList:Ljava/util/List;

    .line 44
    iput-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mImageList:Ljava/util/List;

    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :catchall_2f
    move-exception v1

    .line 49
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    .line 50
    throw v1
.end method

.method public getCurrentPos()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPos:I

    .line 3
    return v0
.end method

.method public getFileList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileWithExt;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mImageList:Ljava/util/List;

    .line 6
    if-nez v1, :cond_e

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mImageList:Ljava/util/List;

    .line 15
    :cond_e
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mImageList:Ljava/util/List;

    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_12
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    .line 21
    throw v1
.end method

.method public getPreviewImageList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPreviewImageList:Ljava/util/List;

    .line 6
    if-nez v1, :cond_e

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPreviewImageList:Ljava/util/List;

    .line 15
    :cond_e
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPreviewImageList:Ljava/util/List;

    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_12
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    .line 21
    throw v1
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mTitle:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_b

    .line 9
    const-string v0, ""

    .line 11
    goto :goto_d

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mTitle:Ljava/lang/String;

    .line 14
    :goto_d
    return-object v0
.end method

.method public setPreviewImageList(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_1f

    .line 6
    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1f

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPreviewImageList:Ljava/util/List;

    .line 14
    if-nez v1, :cond_17

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPreviewImageList:Ljava/util/List;

    .line 23
    goto :goto_1a

    .line 24
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 27
    :goto_1a
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPreviewImageList:Ljava/util/List;

    .line 29
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    :cond_1f
    iput p2, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPos:I

    .line 34
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_23
    move-exception p1

    .line 37
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    .line 38
    throw p1
.end method

.method public setViewLargeInfo(Ljava/lang/String;Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileWithExt;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    if-eqz p2, :cond_1f

    .line 6
    :try_start_5
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1f

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mImageList:Ljava/util/List;

    .line 14
    if-nez v1, :cond_17

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mImageList:Ljava/util/List;

    .line 23
    goto :goto_1a

    .line 24
    :cond_17
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 27
    :goto_1a
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mImageList:Ljava/util/List;

    .line 29
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    :cond_1f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_27

    .line 38
    const-string p1, ""

    .line 40
    :cond_27
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mTitle:Ljava/lang/String;

    .line 42
    iput p3, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPos:I

    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2d

    .line 48
    throw p1
.end method
