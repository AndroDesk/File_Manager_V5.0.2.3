.class Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;
.super Landroid/os/AsyncTask;
.source "CropImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/crop/CropImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mCropPath:Ljava/lang/String;

.field private final mLoadBitmap:Z

.field private final mTargetUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/fileexplorer/view/crop/CropImageActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/view/crop/CropImageActivity;Landroid/net/Uri;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->this$0:Lcom/android/fileexplorer/view/crop/CropImageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->mTargetUri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->mLoadBitmap:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/view/crop/CropImageActivity;Landroid/net/Uri;ZLcom/android/fileexplorer/view/crop/CropImageActivity$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;-><init>(Lcom/android/fileexplorer/view/crop/CropImageActivity;Landroid/net/Uri;Z)V

    return-void
.end method

.method private deleteCropCache(Ljava/io/File;)V
    .registers 5

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_24

    :cond_f
    new-instance v0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask$1;-><init>(Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_24

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_24
    :goto_24
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->mTargetUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/fileexplorer/view/crop/ImagePathUtil;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_f
    iget-boolean v1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->mLoadBitmap:Z

    if-eqz v1, :cond_27

    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->this$0:Lcom/android/fileexplorer/view/crop/CropImageActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->access$100(Lcom/android/fileexplorer/view/crop/CropImageActivity;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->this$0:Lcom/android/fileexplorer/view/crop/CropImageActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->access$200(Lcom/android/fileexplorer/view/crop/CropImageActivity;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->this$0:Lcom/android/fileexplorer/view/crop/CropImageActivity;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->access$300(Lcom/android/fileexplorer/view/crop/CropImageActivity;Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->access$400(Lcom/android/fileexplorer/view/crop/CropImageActivity;Z)V

    goto :goto_7f

    :cond_27
    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->this$0:Lcom/android/fileexplorer/view/crop/CropImageActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->access$500(Lcom/android/fileexplorer/view/crop/CropImageActivity;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->this$0:Lcom/android/fileexplorer/view/crop/CropImageActivity;

    invoke-static {v1}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->access$600(Lcom/android/fileexplorer/view/crop/CropImageActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v0, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    aget-object p1, p1, v6

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->deleteCropCache(Ljava/io/File;)V

    const-string v0, "crop_image"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->mCropPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->this$0:Lcom/android/fileexplorer/view/crop/CropImageActivity;

    invoke-static {v0, v3, p1}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->access$700(Lcom/android/fileexplorer/view/crop/CropImageActivity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :goto_7f
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_45

    iget-boolean p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->mLoadBitmap:Z

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->this$0:Lcom/android/fileexplorer/view/crop/CropImageActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->access$600(Lcom/android/fileexplorer/view/crop/CropImageActivity;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->this$0:Lcom/android/fileexplorer/view/crop/CropImageActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->access$800(Lcom/android/fileexplorer/view/crop/CropImageActivity;)Lcom/android/fileexplorer/view/crop/MultiTouchImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->this$0:Lcom/android/fileexplorer/view/crop/CropImageActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/view/crop/CropImageActivity;->access$600(Lcom/android/fileexplorer/view/crop/CropImageActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/crop/MultiTouchImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_54

    :cond_22
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->mCropPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "inline-data"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "crop_image_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->this$0:Lcom/android/fileexplorer/view/crop/CropImageActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->this$0:Lcom/android/fileexplorer/view/crop/CropImageActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_54

    :cond_45
    iget-boolean p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->mLoadBitmap:Z

    if-nez p1, :cond_4f

    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->this$0:Lcom/android/fileexplorer/view/crop/CropImageActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    :cond_4f
    iget-object p1, p0, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->this$0:Lcom/android/fileexplorer/view/crop/CropImageActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_54
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/view/crop/CropImageActivity$BackgroundTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
