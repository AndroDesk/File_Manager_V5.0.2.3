.class public Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;
.super Ljava/lang/Object;
.source "CustomDocumentsContract.java"


# static fields
.field private static final EXTRA_ORIENTATION:Ljava/lang/String; = "android.provider.extra.ORIENTATION"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field private static final EXTRA_SIZE:Ljava/lang/String; = "android.content.extra.SIZE"

.field public static final EXTRA_TARGET_URI:Ljava/lang/String; = "android.content.extra.TARGET_URI"

.field public static final EXTRA_URI:Ljava/lang/String; = "uri"

.field public static final METHOD_COPY_DOCUMENT:Ljava/lang/String; = "android:copyDocument"

.field public static final METHOD_CREATE_DOCUMENT:Ljava/lang/String; = "android:createDocument"

.field public static final METHOD_DELETE_DOCUMENT:Ljava/lang/String; = "android:deleteDocument"

.field public static final METHOD_IS_CHILD_DOCUMENT:Ljava/lang/String; = "android:isChildDocument"

.field public static final METHOD_MOVE_DOCUMENT:Ljava/lang/String; = "android:moveDocument"

.field public static final METHOD_REMOVE_DOCUMENT:Ljava/lang/String; = "android:removeDocument"

.field public static final METHOD_RENAME_DOCUMENT:Ljava/lang/String; = "android:renameDocument"

.field private static final TAG:Ljava/lang/String; = "CustomDocumentsContract"

.field private static final THUMBNAIL_BUFFER_SIZE:I = 0x20000


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_7

    .line 7
    return-object p0

    .line 8
    :cond_7
    new-instance p0, Landroid/os/RemoteException;

    .line 10
    const-string v0, "Failed to acquire provider for "

    .line 12
    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
.end method

.method public static createDocument(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 8

    .line 1
    const-string v0, "uri"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    invoke-static {v2, v3}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 23
    move-result-object v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_74
    .catchall {:try_start_3 .. :try_end_17} :catchall_72

    .line 24
    :try_start_17
    new-instance v3, Landroid/os/Bundle;

    .line 26
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 29
    invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    const-string v4, "mime_type"

    .line 34
    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string p1, "_display_name"

    .line 39
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string p1, "android:createDocument"

    .line 44
    invoke-virtual {v2, p1, v1, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_4b

    .line 50
    sget-object p1, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->TAG:Ljava/lang/String;

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    const-string v0, "failed to call android:createDocument on uri: "

    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_47} :catch_70
    .catchall {:try_start_17 .. :try_end_47} :catchall_7f

    .line 72
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 75
    return-object v1

    .line 76
    :cond_4b
    :try_start_4b
    sget-object p0, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->TAG:Ljava/lang/String;

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    const-string v4, "document "

    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string p2, " is created"

    .line 93
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p2

    .line 100
    invoke-static {p0, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 106
    move-result-object p0

    .line 107
    check-cast p0, Landroid/net/Uri;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_6c} :catch_70
    .catchall {:try_start_4b .. :try_end_6c} :catchall_7f

    .line 109
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 112
    return-object p0

    .line 113
    :catch_70
    move-exception p0

    .line 114
    goto :goto_76

    .line 115
    :catchall_72
    move-exception p0

    .line 116
    goto :goto_81

    .line 117
    :catch_74
    move-exception p0

    .line 118
    move-object v2, v1

    .line 119
    :goto_76
    :try_start_76
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7f

    .line 122
    if-eqz v2, :cond_7e

    .line 124
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 127
    :cond_7e
    return-object v1

    .line 128
    :catchall_7f
    move-exception p0

    .line 129
    move-object v1, v2

    .line 130
    :goto_81
    if-eqz v1, :cond_86

    .line 132
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 135
    :cond_86
    throw p0
.end method

.method public static deleteDocument(Landroid/net/Uri;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    invoke-static {v1, v2}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 21
    move-result-object v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_31
    .catchall {:try_start_1 .. :try_end_15} :catchall_2f

    .line 22
    :try_start_15
    new-instance v2, Landroid/os/Bundle;

    .line 24
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 27
    const-string v3, "uri"

    .line 29
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    const-string p0, "android:deleteDocument"

    .line 34
    invoke-virtual {v1, p0, v0, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_2c
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 37
    const/4 p0, 0x1

    .line 38
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 41
    return p0

    .line 42
    :catchall_29
    move-exception p0

    .line 43
    move-object v0, v1

    .line 44
    goto :goto_3c

    .line 45
    :catch_2c
    move-exception p0

    .line 46
    move-object v0, v1

    .line 47
    goto :goto_32

    .line 48
    :catchall_2f
    move-exception p0

    .line 49
    goto :goto_3c

    .line 50
    :catch_31
    move-exception p0

    .line 51
    :goto_32
    :try_start_32
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_2f

    .line 54
    const/4 p0, 0x0

    .line 55
    if-eqz v0, :cond_3b

    .line 57
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 60
    :cond_3b
    return p0

    .line 61
    :goto_3c
    if-eqz v0, :cond_41

    .line 63
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 66
    :cond_41
    throw p0
.end method

.method public static getDocumentThumbnail(Landroid/net/Uri;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .registers 14

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const-string v1, "android.content.extra.SIZE"

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_b
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 31
    move-result-object v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1f} :catch_124
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_1f} :catch_114
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1f} :catch_104
    .catchall {:try_start_b .. :try_end_1f} :catchall_100

    .line 32
    :try_start_1f
    const-string v3, "image/*"

    .line 34
    invoke-virtual {v2, p0, v3, v0, p2}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    .line 37
    move-result-object p0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_25} :catch_fc
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_25} :catch_f8
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_25} :catch_f4
    .catchall {:try_start_1f .. :try_end_25} :catchall_f1

    .line 38
    if-nez p0, :cond_38

    .line 40
    :try_start_27
    sget-object p1, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->TAG:Ljava/lang/String;

    .line 42
    const-string p2, "failed to open typed asset file descriptor"

    .line 44
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_ec
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2e} :catch_e7
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2e} :catch_e2
    .catchall {:try_start_27 .. :try_end_2e} :catchall_dd

    .line 47
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 50
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 53
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 56
    return-object v1

    .line 57
    :cond_38
    :try_start_38
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 64
    move-result-wide v3
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_40} :catch_ec
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_40} :catch_e7
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_40} :catch_e2
    .catchall {:try_start_38 .. :try_end_40} :catchall_dd

    .line 65
    :try_start_40
    invoke-static {p2, v3, v4}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->lseek(Ljava/io/FileDescriptor;J)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_45
    .catchall {:try_start_40 .. :try_end_43} :catchall_dd

    .line 68
    move-object v0, v1

    .line 69
    goto :goto_54

    .line 70
    :catch_45
    :try_start_45
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 72
    new-instance v5, Ljava/io/FileInputStream;

    .line 74
    invoke-direct {v5, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 77
    const/high16 v6, 0x20000

    .line 79
    invoke-direct {v0, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_51} :catch_ec
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_51} :catch_e7
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_51} :catch_e2
    .catchall {:try_start_45 .. :try_end_51} :catchall_dd

    .line 82
    :try_start_51
    invoke-virtual {v0, v6}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 85
    :goto_54
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    .line 87
    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 90
    const/4 v6, 0x1

    .line 91
    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 93
    if-eqz v0, :cond_62

    .line 95
    invoke-static {v0, v1, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 98
    goto :goto_65

    .line 99
    :cond_62
    invoke-static {p2, v1, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 102
    :goto_65
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 104
    iget v7, p1, Landroid/graphics/Point;->x:I

    .line 106
    div-int/2addr v6, v7

    .line 107
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 109
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 111
    div-int/2addr v7, p1

    .line 112
    const/4 p1, 0x0

    .line 113
    iput-boolean p1, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 115
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 118
    move-result v6

    .line 119
    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 121
    if-eqz v0, :cond_83

    .line 123
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 126
    invoke-static {v0, v1, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 129
    move-result-object p2
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_81} :catch_d7
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_81} :catch_d1
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_81} :catch_cb
    .catchall {:try_start_51 .. :try_end_81} :catchall_c9

    .line 130
    :goto_81
    move-object v1, p2

    .line 131
    goto :goto_8b

    .line 132
    :cond_83
    :try_start_83
    invoke-static {p2, v3, v4}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->lseek(Ljava/io/FileDescriptor;J)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_c3
    .catchall {:try_start_83 .. :try_end_86} :catchall_c9

    .line 135
    :try_start_86
    invoke-static {p2, v1, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 138
    move-result-object p2

    .line 139
    goto :goto_81

    .line 140
    :goto_8b
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getExtras()Landroid/os/Bundle;

    .line 143
    move-result-object p2

    .line 144
    if-eqz p2, :cond_97

    .line 146
    const-string v3, "android.provider.extra.ORIENTATION"

    .line 148
    invoke-virtual {p2, v3, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 151
    move-result p1

    .line 152
    :cond_97
    if-eqz p1, :cond_b8

    .line 154
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 157
    move-result v6

    .line 158
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 161
    move-result v7

    .line 162
    new-instance v8, Landroid/graphics/Matrix;

    .line 164
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 167
    int-to-float p1, p1

    .line 168
    div-int/lit8 p2, v6, 0x2

    .line 170
    int-to-float p2, p2

    .line 171
    div-int/lit8 v3, v7, 0x2

    .line 173
    int-to-float v3, v3

    .line 174
    invoke-virtual {v8, p1, p2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 177
    const/4 v4, 0x0

    .line 178
    const/4 v5, 0x0

    .line 179
    const/4 v9, 0x0

    .line 180
    move-object v3, v1

    .line 181
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 184
    move-result-object v1
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_b8} :catch_d7
    .catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_b8} :catch_d1
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_b8} :catch_cb
    .catchall {:try_start_86 .. :try_end_b8} :catchall_c9

    .line 185
    :cond_b8
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 188
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 191
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 194
    goto/16 :goto_137

    .line 196
    :catch_c3
    :try_start_c3
    new-instance p1, Ljava/io/IOException;

    .line 198
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 201
    throw p1
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_c9} :catch_d7
    .catch Ljava/io/FileNotFoundException; {:try_start_c3 .. :try_end_c9} :catch_d1
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c9} :catch_cb
    .catchall {:try_start_c3 .. :try_end_c9} :catchall_c9

    .line 202
    :catchall_c9
    move-exception p1

    .line 203
    goto :goto_df

    .line 204
    :catch_cb
    move-exception p1

    .line 205
    move-object v10, v1

    .line 206
    move-object v1, p0

    .line 207
    move-object p0, v10

    .line 208
    goto/16 :goto_108

    .line 210
    :catch_d1
    move-exception p1

    .line 211
    move-object v10, v1

    .line 212
    move-object v1, p0

    .line 213
    move-object p0, v10

    .line 214
    goto/16 :goto_118

    .line 216
    :catch_d7
    move-exception p1

    .line 217
    move-object v10, v1

    .line 218
    move-object v1, p0

    .line 219
    move-object p0, v10

    .line 220
    goto/16 :goto_128

    .line 222
    :catchall_dd
    move-exception p1

    .line 223
    move-object v0, v1

    .line 224
    :goto_df
    move-object v1, p0

    .line 225
    goto/16 :goto_139

    .line 227
    :catch_e2
    move-exception p1

    .line 228
    move-object v0, v1

    .line 229
    move-object v1, p0

    .line 230
    move-object p0, v0

    .line 231
    goto :goto_108

    .line 232
    :catch_e7
    move-exception p1

    .line 233
    move-object v0, v1

    .line 234
    move-object v1, p0

    .line 235
    move-object p0, v0

    .line 236
    goto :goto_118

    .line 237
    :catch_ec
    move-exception p1

    .line 238
    move-object v0, v1

    .line 239
    move-object v1, p0

    .line 240
    move-object p0, v0

    .line 241
    goto :goto_128

    .line 242
    :catchall_f1
    move-exception p1

    .line 243
    move-object v0, v1

    .line 244
    goto :goto_139

    .line 245
    :catch_f4
    move-exception p1

    .line 246
    move-object p0, v1

    .line 247
    move-object v0, p0

    .line 248
    goto :goto_108

    .line 249
    :catch_f8
    move-exception p1

    .line 250
    move-object p0, v1

    .line 251
    move-object v0, p0

    .line 252
    goto :goto_118

    .line 253
    :catch_fc
    move-exception p1

    .line 254
    move-object p0, v1

    .line 255
    move-object v0, p0

    .line 256
    goto :goto_128

    .line 257
    :catchall_100
    move-exception p1

    .line 258
    move-object v0, v1

    .line 259
    move-object v2, v0

    .line 260
    goto :goto_139

    .line 261
    :catch_104
    move-exception p1

    .line 262
    move-object p0, v1

    .line 263
    move-object v0, p0

    .line 264
    move-object v2, v0

    .line 265
    :goto_108
    :try_start_108
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10b
    .catchall {:try_start_108 .. :try_end_10b} :catchall_138

    .line 268
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 271
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 274
    if-eqz v2, :cond_136

    .line 276
    goto :goto_133

    .line 277
    :catch_114
    move-exception p1

    .line 278
    move-object p0, v1

    .line 279
    move-object v0, p0

    .line 280
    move-object v2, v0

    .line 281
    :goto_118
    :try_start_118
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_138

    .line 284
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 287
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 290
    if-eqz v2, :cond_136

    .line 292
    goto :goto_133

    .line 293
    :catch_124
    move-exception p1

    .line 294
    move-object p0, v1

    .line 295
    move-object v0, p0

    .line 296
    move-object v2, v0

    .line 297
    :goto_128
    :try_start_128
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12b
    .catchall {:try_start_128 .. :try_end_12b} :catchall_138

    .line 300
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 303
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 306
    if-eqz v2, :cond_136

    .line 308
    :goto_133
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 311
    :cond_136
    move-object v1, p0

    .line 312
    :goto_137
    return-object v1

    .line 313
    :catchall_138
    move-exception p1

    .line 314
    :goto_139
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 317
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 320
    if-eqz v2, :cond_144

    .line 322
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 325
    :cond_144
    throw p1
.end method

.method private static lseek(Ljava/io/FileDescriptor;J)V
    .registers 10

    .line 1
    const-string v0, "android.system.Os"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x3

    .line 8
    new-array v2, v1, [Ljava/lang/Class;

    .line 10
    const-class v3, Ljava/io/FileDescriptor;

    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v3, v2, v4

    .line 15
    const-class v3, Ljava/lang/Long;

    .line 17
    const/4 v5, 0x1

    .line 18
    aput-object v3, v2, v5

    .line 20
    const-class v3, Ljava/lang/Integer;

    .line 22
    const/4 v6, 0x2

    .line 23
    aput-object v3, v2, v6

    .line 25
    const-string v3, "lseek"

    .line 27
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    move-result-object v2

    .line 31
    new-array v1, v1, [Ljava/lang/Object;

    .line 33
    aput-object p0, v1, v4

    .line 35
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    move-result-object p0

    .line 39
    aput-object p0, v1, v5

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p0

    .line 45
    aput-object p0, v1, v6

    .line 47
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public static renameDocument(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7

    .line 1
    const-string v0, "uri"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    invoke-static {v2, v3}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 23
    move-result-object v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_57
    .catchall {:try_start_3 .. :try_end_17} :catchall_55

    .line 24
    :try_start_17
    new-instance v3, Landroid/os/Bundle;

    .line 26
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 29
    invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    const-string v4, "_display_name"

    .line 34
    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string p1, "android:renameDocument"

    .line 39
    invoke-virtual {v2, p1, v1, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 42
    move-result-object p1

    .line 43
    if-nez p1, :cond_46

    .line 45
    sget-object p1, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const-string v3, "failed to call android:renameDocument on uri: "

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_42} :catch_53
    .catchall {:try_start_17 .. :try_end_42} :catchall_62

    .line 67
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 70
    return-object v1

    .line 71
    :cond_46
    :try_start_46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/net/Uri;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4c} :catch_53
    .catchall {:try_start_46 .. :try_end_4c} :catchall_62

    .line 77
    if-eqz p1, :cond_4f

    .line 79
    move-object p0, p1

    .line 80
    :cond_4f
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 83
    return-object p0

    .line 84
    :catch_53
    move-exception p0

    .line 85
    goto :goto_59

    .line 86
    :catchall_55
    move-exception p0

    .line 87
    goto :goto_64

    .line 88
    :catch_57
    move-exception p0

    .line 89
    move-object v2, v1

    .line 90
    :goto_59
    :try_start_59
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_62

    .line 93
    if-eqz v2, :cond_61

    .line 95
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 98
    :cond_61
    return-object v1

    .line 99
    :catchall_62
    move-exception p0

    .line 100
    move-object v1, v2

    .line 101
    :goto_64
    if-eqz v1, :cond_69

    .line 103
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 106
    :cond_69
    throw p0
.end method
