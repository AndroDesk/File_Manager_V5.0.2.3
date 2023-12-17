.class public Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;
.super Landroid/os/AsyncTask;
.source "TileLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDecoderRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mException:Ljava/lang/Exception;

.field private final mTileRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/view/viewlarge/struct/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;Lcom/android/fileexplorer/view/viewlarge/struct/Tile;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;->mDecoderRef:Ljava/lang/ref/WeakReference;

    .line 18
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 20
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;->mTileRef:Ljava/lang/ref/WeakReference;

    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p3, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->loading:Z

    .line 28
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 7

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;->mDecoderRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;

    .line 4
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;->mTileRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;

    if-eqz v0, :cond_53

    if-eqz v1, :cond_53

    if-eqz p1, :cond_53

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;->isReady()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 6
    iget-object v2, p1, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->decoderLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_59

    .line 7
    :try_start_27
    iget-object v3, v1, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sRect:Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->fileSRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->fileSRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 8
    iget-object p1, p1, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    if-eqz p1, :cond_3b

    .line 9
    iget-object v3, v1, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->fileSRect:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 10
    :cond_3b
    iget-object p1, v1, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->fileSRect:Landroid/graphics/Rect;

    iget v1, v1, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->sampleSize:I

    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;->decodeRegion(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_4e

    .line 11
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "range decode error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;->mException:Ljava/lang/Exception;

    .line 12
    :cond_4e
    monitor-exit v2

    return-object p1

    :catchall_50
    move-exception p1

    .line 13
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_27 .. :try_end_52} :catchall_50

    :try_start_52
    throw p1

    :cond_53
    if-eqz v1, :cond_69

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, v1, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->loading:Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_58} :catch_59

    goto :goto_69

    :catch_59
    move-exception p1

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to decode tile"

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;->mException:Ljava/lang/Exception;

    :cond_69
    :goto_69
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;->mTileRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;

    if-eqz v0, :cond_2a

    if-eqz v1, :cond_2a

    if-eqz p1, :cond_1f

    .line 4
    iput-object p1, v1, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->bitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, v1, Lcom/android/fileexplorer/view/viewlarge/struct/Tile;->loading:Z

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onTileLoaded()V

    goto :goto_2a

    .line 7
    :cond_1f
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;->mException:Ljava/lang/Exception;

    if-eqz p1, :cond_2a

    iget-object v0, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    if-eqz v0, :cond_2a

    .line 8
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onTileLoadError(Ljava/lang/Exception;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/task/TileLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
