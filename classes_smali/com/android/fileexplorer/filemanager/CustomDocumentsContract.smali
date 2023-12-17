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

.field private static final THUMBNAIL_BUFFER_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0xb2d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->THUMBNAIL_BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Failed to acquire provider for "

    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createDocument(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 8

    const-string v0, "uri"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_74
    .catchall {:try_start_3 .. :try_end_17} :catchall_72

    :try_start_17
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "mime_type"

    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_display_name"

    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android:createDocument"

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_4b

    sget-object p1, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to call android:createDocument on uri: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_47} :catch_70
    .catchall {:try_start_17 .. :try_end_47} :catchall_7f

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    return-object v1

    :cond_4b
    :try_start_4b
    sget-object p0, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "document "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is created"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_6c} :catch_70
    .catchall {:try_start_4b .. :try_end_6c} :catchall_7f

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    return-object p0

    :catch_70
    move-exception p0

    goto :goto_76

    :catchall_72
    move-exception p0

    goto :goto_81

    :catch_74
    move-exception p0

    move-object v2, v1

    :goto_76
    :try_start_76
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7f

    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_7e
    return-object v1

    :catchall_7f
    move-exception p0

    move-object v1, v2

    :goto_81
    if-eqz v1, :cond_86

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_86
    throw p0
.end method

.method public static deleteDocument(Landroid/net/Uri;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_31
    .catchall {:try_start_1 .. :try_end_15} :catchall_2f

    :try_start_15
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "uri"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "android:deleteDocument"

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_2c
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    const/4 p0, 0x1

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    return p0

    :catchall_29
    move-exception p0

    move-object v0, v1

    goto :goto_3c

    :catch_2c
    move-exception p0

    move-object v0, v1

    goto :goto_32

    :catchall_2f
    move-exception p0

    goto :goto_3c

    :catch_31
    move-exception p0

    :goto_32
    :try_start_32
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_2f

    const/4 p0, 0x0

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_3b
    return p0

    :goto_3c
    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    :cond_41
    throw p0
.end method

.method public static getDocumentThumbnail(Landroid/net/Uri;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .registers 14

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.content.extra.SIZE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v1, 0x0

    :try_start_b
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1f} :catch_124
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_1f} :catch_114
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1f} :catch_104
    .catchall {:try_start_b .. :try_end_1f} :catchall_100

    :try_start_1f
    const-string v3, "image/*"

    invoke-virtual {v2, p0, v3, v0, p2}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_25} :catch_fc
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_25} :catch_f8
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_25} :catch_f4
    .catchall {:try_start_1f .. :try_end_25} :catchall_f1

    if-nez p0, :cond_38

    :try_start_27
    sget-object p1, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->TAG:Ljava/lang/String;

    const-string p2, "failed to open typed asset file descriptor"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_ec
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2e} :catch_e7
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2e} :catch_e2
    .catchall {:try_start_27 .. :try_end_2e} :catchall_dd

    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    return-object v1

    :cond_38
    :try_start_38
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_40} :catch_ec
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_40} :catch_e7
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_40} :catch_e2
    .catchall {:try_start_38 .. :try_end_40} :catchall_dd

    :try_start_40
    invoke-static {p2, v3, v4}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->lseek(Ljava/io/FileDescriptor;J)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_45
    .catchall {:try_start_40 .. :try_end_43} :catchall_dd

    move-object v0, v1

    goto :goto_54

    :catch_45
    :try_start_45
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/high16 v6, 0x20000

    invoke-direct {v0, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_51} :catch_ec
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_51} :catch_e7
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_51} :catch_e2
    .catchall {:try_start_45 .. :try_end_51} :catchall_dd

    :try_start_51
    invoke-virtual {v0, v6}, Ljava/io/BufferedInputStream;->mark(I)V

    :goto_54
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_62

    invoke-static {v0, v1, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_65

    :cond_62
    invoke-static {p2, v1, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :goto_65
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, p1, Landroid/graphics/Point;->x:I

    div-int/2addr v6, v7

    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    div-int/2addr v7, p1

    const/4 p1, 0x0

    iput-boolean p1, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz v0, :cond_83

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    invoke-static {v0, v1, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_81} :catch_d7
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_81} :catch_d1
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_81} :catch_cb
    .catchall {:try_start_51 .. :try_end_81} :catchall_c9

    :goto_81
    move-object v1, p2

    goto :goto_8b

    :cond_83
    :try_start_83
    invoke-static {p2, v3, v4}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->lseek(Ljava/io/FileDescriptor;J)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_c3
    .catchall {:try_start_83 .. :try_end_86} :catchall_c9

    :try_start_86
    invoke-static {p2, v1, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_81

    :goto_8b
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_97

    const-string v3, "android.provider.extra.ORIENTATION"

    invoke-virtual {p2, v3, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    :cond_97
    if-eqz p1, :cond_b8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    div-int/lit8 p2, v6, 0x2

    int-to-float p2, p2

    div-int/lit8 v3, v7, 0x2

    int-to-float v3, v3

    invoke-virtual {v8, p1, p2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_b8} :catch_d7
    .catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_b8} :catch_d1
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_b8} :catch_cb
    .catchall {:try_start_86 .. :try_end_b8} :catchall_c9

    :cond_b8
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_137

    :catch_c3
    :try_start_c3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_c9} :catch_d7
    .catch Ljava/io/FileNotFoundException; {:try_start_c3 .. :try_end_c9} :catch_d1
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c9} :catch_cb
    .catchall {:try_start_c3 .. :try_end_c9} :catchall_c9

    :catchall_c9
    move-exception p1

    goto :goto_df

    :catch_cb
    move-exception p1

    move-object v10, v1

    move-object v1, p0

    move-object p0, v10

    goto/16 :goto_108

    :catch_d1
    move-exception p1

    move-object v10, v1

    move-object v1, p0

    move-object p0, v10

    goto/16 :goto_118

    :catch_d7
    move-exception p1

    move-object v10, v1

    move-object v1, p0

    move-object p0, v10

    goto/16 :goto_128

    :catchall_dd
    move-exception p1

    move-object v0, v1

    :goto_df
    move-object v1, p0

    goto/16 :goto_139

    :catch_e2
    move-exception p1

    move-object v0, v1

    move-object v1, p0

    move-object p0, v0

    goto :goto_108

    :catch_e7
    move-exception p1

    move-object v0, v1

    move-object v1, p0

    move-object p0, v0

    goto :goto_118

    :catch_ec
    move-exception p1

    move-object v0, v1

    move-object v1, p0

    move-object p0, v0

    goto :goto_128

    :catchall_f1
    move-exception p1

    move-object v0, v1

    goto :goto_139

    :catch_f4
    move-exception p1

    move-object p0, v1

    move-object v0, p0

    goto :goto_108

    :catch_f8
    move-exception p1

    move-object p0, v1

    move-object v0, p0

    goto :goto_118

    :catch_fc
    move-exception p1

    move-object p0, v1

    move-object v0, p0

    goto :goto_128

    :catchall_100
    move-exception p1

    move-object v0, v1

    move-object v2, v0

    goto :goto_139

    :catch_104
    move-exception p1

    move-object p0, v1

    move-object v0, p0

    move-object v2, v0

    :goto_108
    :try_start_108
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10b
    .catchall {:try_start_108 .. :try_end_10b} :catchall_138

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v2, :cond_136

    goto :goto_133

    :catch_114
    move-exception p1

    move-object p0, v1

    move-object v0, p0

    move-object v2, v0

    :goto_118
    :try_start_118
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_138

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v2, :cond_136

    goto :goto_133

    :catch_124
    move-exception p1

    move-object p0, v1

    move-object v0, p0

    move-object v2, v0

    :goto_128
    :try_start_128
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12b
    .catchall {:try_start_128 .. :try_end_12b} :catchall_138

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v2, :cond_136

    :goto_133
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_136
    move-object v1, p0

    :goto_137
    return-object v1

    :catchall_138
    move-exception p1

    :goto_139
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v2, :cond_144

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_144
    throw p1
.end method

.method private static lseek(Ljava/io/FileDescriptor;J)V
    .registers 10

    const-string v0, "android.system.Os"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/io/FileDescriptor;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Long;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/Integer;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "lseek"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v6

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static renameDocument(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7

    const-string v0, "uri"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_57
    .catchall {:try_start_3 .. :try_end_17} :catchall_55

    :try_start_17
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "_display_name"

    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android:renameDocument"

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_46

    sget-object p1, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to call android:renameDocument on uri: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_42} :catch_53
    .catchall {:try_start_17 .. :try_end_42} :catchall_62

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    return-object v1

    :cond_46
    :try_start_46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4c} :catch_53
    .catchall {:try_start_46 .. :try_end_4c} :catchall_62

    if-eqz p1, :cond_4f

    move-object p0, p1

    :cond_4f
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    return-object p0

    :catch_53
    move-exception p0

    goto :goto_59

    :catchall_55
    move-exception p0

    goto :goto_64

    :catch_57
    move-exception p0

    move-object v2, v1

    :goto_59
    :try_start_59
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_62

    if-eqz v2, :cond_61

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    :cond_61
    return-object v1

    :catchall_62
    move-exception p0

    move-object v1, v2

    :goto_64
    if-eqz v1, :cond_69

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_69
    throw p0
.end method
