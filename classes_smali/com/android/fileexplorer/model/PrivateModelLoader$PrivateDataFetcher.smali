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
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/model/PrivateModelLoader$PrivateDataFetcher;->mModel:Landroid/net/Uri;

    .line 6
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

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    .line 3
    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .registers 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->LOCAL:Lcom/bumptech/glide/load/DataSource;

    .line 3
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

    .line 1
    const-string p1, "encrypted_thumbnail"

    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/android/fileexplorer/model/PrivateModelLoader$PrivateDataFetcher;->mModel:Landroid/net/Uri;

    .line 6
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/android/fileexplorer/model/PrivateModelLoader$PrivateDataFetcher;->mModel:Landroid/net/Uri;

    .line 12
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/android/fileexplorer/model/PrivateModelLoader$PrivateDataFetcher;->mModel:Landroid/net/Uri;

    .line 18
    invoke-virtual {v3}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    const-string v4, "mtp"

    .line 24
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_5c

    .line 30
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    move-result-object p1

    .line 34
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object v1

    .line 42
    const v2, 0x7f0701ef

    .line 45
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    move-result v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_30} :catch_eb

    .line 49
    const-string v2, "FileIconHelper"

    .line 51
    :try_start_32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v4, "load thumnail:"

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v3, Landroid/graphics/Point;

    .line 77
    invoke-direct {v3, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 80
    invoke-static {p1, v3, v0}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->getDocumentThumbnail(Landroid/net/Uri;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    .line 83
    move-result-object v0

    .line 84
    if-nez v0, :cond_eb

    .line 86
    const-string p1, "failed to load thumbnail"

    .line 88
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    goto/16 :goto_eb

    .line 93
    :cond_5c
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_7c

    .line 99
    if-eqz v3, :cond_7c

    .line 101
    sget-boolean v4, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 103
    if-nez v4, :cond_7c

    .line 105
    invoke-static {v2}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->fileToBytes(Ljava/lang/String;)[B

    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_eb

    .line 111
    invoke-static {p1, v3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decrypt([BLjava/lang/String;)[B

    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_eb

    .line 117
    const/4 v1, 0x0

    .line 118
    array-length v2, p1

    .line 119
    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 122
    move-result-object v0

    .line 123
    goto/16 :goto_eb

    .line 125
    :cond_7c
    const-string v4, "midrive"

    .line 127
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_86

    .line 133
    goto/16 :goto_eb

    .line 135
    :cond_86
    invoke-static {v3, v1}, Lcom/android/fileexplorer/util/MimeUtils;->guessFileTypeFromMimeType(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    move-result v3

    .line 139
    sget-boolean v4, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 141
    if-eqz v4, :cond_a4

    .line 143
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_a4

    .line 149
    invoke-static {v2}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getPrivateEncryptedPath2(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    move-result-object v2

    .line 153
    invoke-static {v2}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileOldGlobalExt(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object p1

    .line 157
    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    move-result-object v1

    .line 161
    invoke-static {p1, v1}, Lcom/android/fileexplorer/util/MimeUtils;->guessFileTypeFromMimeType(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    move-result v3

    .line 165
    :cond_a4
    const/4 p1, 0x3

    .line 166
    if-eqz v3, :cond_e0

    .line 168
    const/4 v1, 0x1

    .line 169
    if-eq v3, v1, :cond_d6

    .line 171
    const/4 v4, 0x2

    .line 172
    if-eq v3, v4, :cond_d1

    .line 174
    if-eq v3, p1, :cond_c5

    .line 176
    const-string p1, ".bmp"

    .line 178
    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 181
    move-result p1

    .line 182
    if-eqz p1, :cond_eb

    .line 184
    new-instance p1, Ljava/io/File;

    .line 186
    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 192
    move-result-object p1

    .line 193
    invoke-static {p1, v1}, Lcom/android/fileexplorer/model/FileIconHelper;->getImageThumb(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    .line 196
    move-result-object v0

    .line 197
    goto :goto_eb

    .line 198
    :cond_c5
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->isAllMiuiLite()Z

    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_cc

    .line 204
    goto :goto_eb

    .line 205
    :cond_cc
    invoke-static {v2}, Lcom/android/fileexplorer/model/FileIconHelper;->getApkThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 208
    move-result-object v0

    .line 209
    goto :goto_eb

    .line 210
    :cond_d1
    invoke-static {v2}, Lcom/android/fileexplorer/model/FileIconHelper;->getVideoThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 213
    move-result-object v0

    .line 214
    goto :goto_eb

    .line 215
    :cond_d6
    sget-boolean p1, Lcom/android/fileexplorer/util/RomUtils;->IS_SHOW_MIUI_LITE_LAYOUT:Z

    .line 217
    if-eqz p1, :cond_db

    .line 219
    goto :goto_eb

    .line 220
    :cond_db
    invoke-static {v2}, Lcom/android/fileexplorer/model/FileIconHelper;->getAudioThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 223
    move-result-object v0

    .line 224
    goto :goto_eb

    .line 225
    :cond_e0
    if-eqz v4, :cond_e7

    .line 227
    invoke-static {v2}, Lcom/android/fileexplorer/model/FileIconHelper;->getImageThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 230
    move-result-object v0

    .line 231
    goto :goto_eb

    .line 232
    :cond_e7
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/FileIconHelper;->getImageThumb(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    .line 235
    move-result-object v0
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_eb} :catch_eb

    .line 236
    :catch_eb
    :cond_eb
    :goto_eb
    if-eqz v0, :cond_f1

    .line 238
    invoke-interface {p2, v0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    .line 241
    goto :goto_fb

    .line 242
    :cond_f1
    new-instance p1, Ljava/lang/Exception;

    .line 244
    const-string v0, "load private model fail"

    .line 246
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    .line 252
    :goto_fb
    return-void
.end method
