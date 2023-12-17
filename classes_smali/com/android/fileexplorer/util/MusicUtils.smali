.class public Lcom/android/fileexplorer/util/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# static fields
.field private static final sArtworkUri:Landroid/net/Uri;

.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const-string v1, "content://media/external/audio/albumart"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/fileexplorer/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArtwork(JJ)Landroid/graphics/Bitmap;
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    if-gez v2, :cond_15

    cmp-long p2, p0, v0

    if-ltz p2, :cond_14

    const-wide/16 p2, -0x1

    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/util/MusicUtils;->getArtworkFromFile(JJ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_14

    return-object p0

    :cond_14
    return-object v3

    :cond_15
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_59

    :try_start_29
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_2d} :catch_3e
    .catchall {:try_start_29 .. :try_end_2d} :catchall_3c

    :try_start_2d
    sget-object v1, Lcom/android/fileexplorer/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_33} :catch_3a
    .catchall {:try_start_2d .. :try_end_33} :catchall_37

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_37
    move-exception p0

    move-object v3, v0

    goto :goto_55

    :catch_3a
    move-object v3, v0

    goto :goto_3e

    :catchall_3c
    move-exception p0

    goto :goto_55

    :catch_3e
    :goto_3e
    :try_start_3e
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/util/MusicUtils;->getArtworkFromFile(JJ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_51

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    if-nez p1, :cond_51

    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_51
    .catchall {:try_start_3e .. :try_end_51} :catchall_3c

    :cond_51
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :goto_55
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_59
    return-object v3
.end method

.method private static getArtworkFromFile(JJ)Landroid/graphics/Bitmap;
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_13

    cmp-long v0, p0, v0

    if-ltz v0, :cond_b

    goto :goto_13

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify an album or a song id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_13
    const-string v0, "r"

    const/4 v1, 0x0

    if-gez v2, :cond_4e

    :try_start_18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "content://media/external/audio/media/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "/albumart"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_42
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_42} :catch_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_42} :catch_7b
    .catchall {:try_start_18 .. :try_end_42} :catchall_76

    if-eqz p0, :cond_72

    :try_start_44
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_44 .. :try_end_4c} :catch_72
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_4c} :catch_72
    .catchall {:try_start_44 .. :try_end_4c} :catchall_6f

    move-object v1, p1

    goto :goto_72

    :cond_4e
    :try_start_4e
    sget-object p0, Lcom/android/fileexplorer/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    invoke-static {p0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_64
    .catch Ljava/lang/IllegalStateException; {:try_start_4e .. :try_end_64} :catch_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_64} :catch_7b
    .catchall {:try_start_4e .. :try_end_64} :catchall_76

    if-eqz p0, :cond_72

    :try_start_66
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_6e
    .catch Ljava/lang/IllegalStateException; {:try_start_66 .. :try_end_6e} :catch_72
    .catch Ljava/io/FileNotFoundException; {:try_start_66 .. :try_end_6e} :catch_72
    .catchall {:try_start_66 .. :try_end_6e} :catchall_6f

    goto :goto_72

    :catchall_6f
    move-exception p1

    move-object v1, p0

    goto :goto_77

    :catch_72
    :cond_72
    :goto_72
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_7d

    :catchall_76
    move-exception p1

    :goto_77
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :catch_7b
    move-object p0, v1

    goto :goto_72

    :goto_7d
    return-object v1
.end method
