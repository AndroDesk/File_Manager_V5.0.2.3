.class Lcom/android/fileexplorer/model/PrivateModelLoader$PrivateDataFetcher;
.super Ljava/lang/Object;
.source "PrivateModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/model/PrivateModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivateDataFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public mModel:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/model/PrivateModelLoader$PrivateDataFetcher;->mModel:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    return-void
.end method

.method public cleanup()V
    .registers 1

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .registers 2

    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string p1, "encrypted_thumbnail"

    const/4 v0, 0x0

    :try_start_3
    iget-object v1, p0, Lcom/android/fileexplorer/model/PrivateModelLoader$PrivateDataFetcher;->mModel:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/model/PrivateModelLoader$PrivateDataFetcher;->mModel:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/model/PrivateModelLoader$PrivateDataFetcher;->mModel:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mtp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_30} :catch_eb

    const-string v2, "FileIconHelper"

    :try_start_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load thumnail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {p1, v3, v0}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->getDocumentThumbnail(Landroid/net/Uri;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_eb

    const-string p1, "failed to load thumbnail"

    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_eb

    :cond_5c
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    if-eqz v3, :cond_7c

    sget-boolean v4, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    if-nez v4, :cond_7c

    invoke-static {v2}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->fileToBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_eb

    invoke-static {p1, v3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decrypt([BLjava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_eb

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_eb

    :cond_7c
    const-string v4, "midrive"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    goto/16 :goto_eb

    :cond_86
    invoke-static {v3, v1}, Lcom/android/fileexplorer/util/MimeUtils;->guessFileTypeFromMimeType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget-boolean v4, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    if-eqz v4, :cond_a4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a4

    invoke-static {v2}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getPrivateEncryptedPath2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileOldGlobalExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/fileexplorer/util/MimeUtils;->guessFileTypeFromMimeType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :cond_a4
    const/4 p1, 0x3

    if-eqz v3, :cond_e0

    const/4 v1, 0x1

    if-eq v3, v1, :cond_d6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_d1

    if-eq v3, p1, :cond_c5

    const-string p1, ".bmp"

    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_eb

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/FileIconHelper;->getImageThumb(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_eb

    :cond_c5
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isAllMiuiLite()Z

    move-result p1

    if-eqz p1, :cond_cc

    goto :goto_eb

    :cond_cc
    invoke-static {v2}, Lcom/android/fileexplorer/model/FileIconHelper;->getApkThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_eb

    :cond_d1
    invoke-static {v2}, Lcom/android/fileexplorer/model/FileIconHelper;->getVideoThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_eb

    :cond_d6
    sget-boolean p1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    if-eqz p1, :cond_db

    goto :goto_eb

    :cond_db
    invoke-static {v2}, Lcom/android/fileexplorer/model/FileIconHelper;->getAudioThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_eb

    :cond_e0
    if-eqz v4, :cond_e7

    invoke-static {v2}, Lcom/android/fileexplorer/model/FileIconHelper;->getImageThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_eb

    :cond_e7
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/FileIconHelper;->getImageThumb(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_eb} :catch_eb

    :catch_eb
    :cond_eb
    :goto_eb
    if-eqz v0, :cond_f1

    invoke-interface {p2, v0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    goto :goto_fb

    :cond_f1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "load private model fail"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    :goto_fb
    return-void
.end method
