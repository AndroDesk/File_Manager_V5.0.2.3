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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->lock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mViewLargeHelper:Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;

    invoke-direct {v0}, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mViewLargeHelper:Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;

    :cond_b
    sget-object v0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mViewLargeHelper:Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;

    return-object v0
.end method


# virtual methods
.method public clearFileList()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, ""

    iput-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mTitle:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPos:I

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mImageList:Ljava/util/List;

    if-eqz v1, :cond_19

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mImageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_19
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPreviewImageList:Ljava/util/List;

    if-eqz v1, :cond_28

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPreviewImageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPreviewImageList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mImageList:Ljava/util/List;

    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public getCurrentPos()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPos:I

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

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mImageList:Ljava/util/List;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mImageList:Ljava/util/List;

    :cond_e
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mImageList:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

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

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPreviewImageList:Ljava/util/List;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPreviewImageList:Ljava/util/List;

    :cond_e
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPreviewImageList:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mTitle:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->lock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1f

    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPreviewImageList:Ljava/util/List;

    if-nez v1, :cond_17

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPreviewImageList:Ljava/util/List;

    goto :goto_1a

    :cond_17
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_1a
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPreviewImageList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1f
    iput p2, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPos:I

    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

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

    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->lock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_1f

    :try_start_5
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mImageList:Ljava/util/List;

    if-nez v1, :cond_17

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mImageList:Ljava/util/List;

    goto :goto_1a

    :cond_17
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_1a
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mImageList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_27

    const-string p1, ""

    :cond_27
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mTitle:Ljava/lang/String;

    iput p3, p0, Lcom/android/fileexplorer/view/viewlarge/ViewLargeHelper;->mPos:I

    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2d

    throw p1
.end method
