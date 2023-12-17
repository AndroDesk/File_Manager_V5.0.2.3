.class public Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;
.super Landroid/os/AsyncTask;
.source "BitmapLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBytes:[B

.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mDecoderFactoryRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory<",
            "+",
            "Lcom/android/fileexplorer/view/viewlarge/decoder/ImageDecoder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mException:Ljava/lang/Exception;

.field private final mPreview:Z

.field private final mSource:Landroid/net/Uri;

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
.method public constructor <init>(Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;Landroid/content/Context;Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;Landroid/net/Uri;[BZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;",
            "Landroid/content/Context;",
            "Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory<",
            "+",
            "Lcom/android/fileexplorer/view/viewlarge/decoder/ImageDecoder;",
            ">;",
            "Landroid/net/Uri;",
            "[BZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 18
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 20
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mDecoderFactoryRef:Ljava/lang/ref/WeakReference;

    .line 25
    iput-object p4, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mSource:Landroid/net/Uri;

    .line 27
    iput-boolean p6, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mPreview:Z

    .line 29
    iput-object p5, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mBytes:[B

    .line 31
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 6

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mDecoderFactoryRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;

    .line 4
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    .line 5
    iget-object v2, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mBytes:[B

    if-nez v2, :cond_41

    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mSource:Landroid/net/Uri;

    if-eqz v3, :cond_41

    .line 6
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_6b

    if-eqz v0, :cond_6b

    if-eqz v1, :cond_6b

    .line 7
    invoke-interface {v0}, Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;->make()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/viewlarge/decoder/ImageDecoder;

    iget-object v3, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mSource:Landroid/net/Uri;

    invoke-interface {v0, p1, v3}, Lcom/android/fileexplorer/view/viewlarge/decoder/ImageDecoder;->decode(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 8
    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->getExifOrientation(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 9
    :cond_41
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mSource:Landroid/net/Uri;

    if-nez v1, :cond_6b

    if-eqz v2, :cond_6b

    .line 10
    invoke-interface {v0}, Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;->make()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/viewlarge/decoder/ImageDecoder;

    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mBytes:[B

    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/view/viewlarge/decoder/ImageDecoder;->decode(Landroid/content/Context;[B)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_5b

    return-object p1

    :catch_5b
    move-exception p1

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to load bitmap"

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mException:Ljava/lang/Exception;

    :cond_6b
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;

    if-eqz v0, :cond_46

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_20

    if-eqz p1, :cond_20

    .line 4
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mPreview:Z

    if-eqz v2, :cond_18

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onPreviewLoaded(Landroid/graphics/Bitmap;)V

    goto :goto_46

    .line 6
    :cond_18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageLoaded(Landroid/graphics/Bitmap;I)V

    goto :goto_46

    .line 7
    :cond_20
    iget-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mException:Ljava/lang/Exception;

    if-eqz p1, :cond_34

    iget-object v2, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    if-eqz v2, :cond_34

    .line 8
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mPreview:Z

    if-eqz v0, :cond_30

    .line 9
    invoke-interface {v2, p1}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onPreviewLoadError(Ljava/lang/Exception;)V

    goto :goto_46

    .line 10
    :cond_30
    invoke-interface {v2, p1}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onImageLoadError(Ljava/lang/Exception;)V

    goto :goto_46

    :cond_34
    if-nez v1, :cond_46

    .line 11
    iget-object p1, v0, Lcom/android/fileexplorer/view/viewlarge/SubsamplingScaleImageView;->onImageEventListener:Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;

    if-eqz p1, :cond_46

    .line 12
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->mPreview:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 13
    invoke-interface {p1, v1}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onPreviewLoadError(Ljava/lang/Exception;)V

    goto :goto_46

    .line 14
    :cond_43
    invoke-interface {p1, v1}, Lcom/android/fileexplorer/view/viewlarge/listener/OnImageEventListener;->onImageLoadError(Ljava/lang/Exception;)V

    :cond_46
    :goto_46
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/viewlarge/task/BitmapLoadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
