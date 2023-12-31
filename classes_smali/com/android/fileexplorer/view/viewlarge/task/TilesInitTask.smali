.class public Lcom/android/fileexplorer/view/viewlarge/task/TilesInitTask;
.super Landroid/os/AsyncTask;
.source "TilesInitTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final decoderFactoryRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory<",
            "+",
            "Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final source:Landroid/net/Uri;

.field private final viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/content/Context;Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;Landroid/net/Uri;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;",
            "Landroid/content/Context;",
            "Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory<",
            "+",
            "Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/task/TilesInitTask;->viewRef:Ljava/lang/ref/WeakReference;

    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/task/TilesInitTask;->contextRef:Ljava/lang/ref/WeakReference;

    .line 18
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 20
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/task/TilesInitTask;->decoderFactoryRef:Ljava/lang/ref/WeakReference;

    .line 25
    iput-object p4, p0, Lcom/android/fileexplorer/view/viewlarge/task/TilesInitTask;->source:Landroid/net/Uri;

    .line 27
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 7

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/task/TilesInitTask;->source:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/task/TilesInitTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 4
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/task/TilesInitTask;->decoderFactoryRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;

    .line 5
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/task/TilesInitTask;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    if-eqz v0, :cond_62

    if-eqz v1, :cond_62

    if-eqz v2, :cond_62

    .line 6
    invoke-interface {v1}, Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;->make()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;

    if-eqz v1, :cond_62

    .line 7
    invoke-virtual {v2, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getExifOrientation(Ljava/lang/String;)I

    move-result p1

    .line 8
    iget-object v3, v2, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    if-eqz v3, :cond_3f

    .line 9
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 10
    iget-object v3, v2, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    goto :goto_4c

    .line 11
    :cond_3f
    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/task/TilesInitTask;->source:Landroid/net/Uri;

    invoke-interface {v1, v0, v3}, Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;->init(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Point;

    move-result-object v0

    .line 12
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 13
    iget v0, v0, Landroid/graphics/Point;->y:I

    move v4, v3

    move v3, v0

    move v0, v4

    .line 14
    :goto_4c
    invoke-virtual {v2, v1, v0, v3, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onTilesInited(Lcom/android/fileexplorer/view/viewlarge/decoder/ImageRegionDecoder;III)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_55

    return-object p1

    .line 15
    :catch_55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to initialise bitmap decoder"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_62
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/task/TilesInitTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/task/TilesInitTask;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_16

    if-eqz v0, :cond_16

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/task/TilesInitTask;->source:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->loadFile(Landroid/net/Uri;)V

    goto :goto_24

    :cond_16
    if-eqz v0, :cond_24

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->checkReady()Z

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->checkImageLoaded()Z

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_24
    :goto_24
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/task/TilesInitTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
