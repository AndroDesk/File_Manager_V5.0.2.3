.class public Lcom/android/fileexplorer/util/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# static fields
.field private static final sArtworkUri:Landroid/net/Uri;

.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 8
    const-string v1, "content://media/external/audio/albumart"

    .line 10
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    move-result-object v1

    .line 14
    sput-object v1, Lcom/android/fileexplorer/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    .line 16
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 18
    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArtwork(JJ)Landroid/graphics/Bitmap;
    .registers 8

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v2, p2, v0

    .line 5
    const/4 v3, 0x0

    .line 6
    if-gez v2, :cond_15

    .line 8
    cmp-long p2, p0, v0

    .line 10
    if-ltz p2, :cond_14

    .line 12
    const-wide/16 p2, -0x1

    .line 14
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/util/MusicUtils;->getArtworkFromFile(JJ)Landroid/graphics/Bitmap;

    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_14

    .line 20
    return-object p0

    .line 21
    :cond_14
    return-object v3

    .line 22
    :cond_15
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    move-result-object v0

    .line 34
    sget-object v1, Lcom/android/fileexplorer/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    .line 36
    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_59

    .line 42
    :try_start_29
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 45
    move-result-object v0
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_2d} :catch_3e
    .catchall {:try_start_29 .. :try_end_2d} :catchall_3c

    .line 46
    :try_start_2d
    sget-object v1, Lcom/android/fileexplorer/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 48
    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 51
    move-result-object p0
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_33} :catch_3a
    .catchall {:try_start_2d .. :try_end_33} :catchall_37

    .line 52
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 55
    return-object p0

    .line 56
    :catchall_37
    move-exception p0

    .line 57
    move-object v3, v0

    .line 58
    goto :goto_55

    .line 59
    :catch_3a
    move-object v3, v0

    .line 60
    goto :goto_3e

    .line 61
    :catchall_3c
    move-exception p0

    .line 62
    goto :goto_55

    .line 63
    :catch_3e
    :goto_3e
    :try_start_3e
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/util/MusicUtils;->getArtworkFromFile(JJ)Landroid/graphics/Bitmap;

    .line 66
    move-result-object p0

    .line 67
    if-eqz p0, :cond_51

    .line 69
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 72
    move-result-object p1

    .line 73
    if-nez p1, :cond_51

    .line 75
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 77
    const/4 p2, 0x0

    .line 78
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 81
    move-result-object p0
    :try_end_51
    .catchall {:try_start_3e .. :try_end_51} :catchall_3c

    .line 82
    :cond_51
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 85
    return-object p0

    .line 86
    :goto_55
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 89
    throw p0

    .line 90
    :cond_59
    return-object v3
.end method

.method private static getArtworkFromFile(JJ)Landroid/graphics/Bitmap;
    .registers 7

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v2, p2, v0

    .line 5
    if-gez v2, :cond_13

    .line 7
    cmp-long v0, p0, v0

    .line 9
    if-ltz v0, :cond_b

    .line 11
    goto :goto_13

    .line 12
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 14
    const-string p1, "Must specify an album or a song id"

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0

    .line 20
    :cond_13
    :goto_13
    const-string v0, "r"

    .line 22
    const/4 v1, 0x0

    .line 23
    if-gez v2, :cond_4e

    .line 25
    :try_start_18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const-string p3, "content://media/external/audio/media/"

    .line 32
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    const-string p0, "/albumart"

    .line 40
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 50
    move-result-object p0

    .line 51
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 66
    move-result-object p0
    :try_end_42
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_42} :catch_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_42} :catch_7b
    .catchall {:try_start_18 .. :try_end_42} :catchall_76

    .line 67
    if-eqz p0, :cond_72

    .line 69
    :try_start_44
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    .line 76
    move-result-object p1
    :try_end_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_44 .. :try_end_4c} :catch_72
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_4c} :catch_72
    .catchall {:try_start_44 .. :try_end_4c} :catchall_6f

    .line 77
    move-object v1, p1

    .line 78
    goto :goto_72

    .line 79
    :cond_4e
    :try_start_4e
    sget-object p0, Lcom/android/fileexplorer/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    .line 81
    invoke-static {p0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 84
    move-result-object p0

    .line 85
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 100
    move-result-object p0
    :try_end_64
    .catch Ljava/lang/IllegalStateException; {:try_start_4e .. :try_end_64} :catch_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_64} :catch_7b
    .catchall {:try_start_4e .. :try_end_64} :catchall_76

    .line 101
    if-eqz p0, :cond_72

    .line 103
    :try_start_66
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 106
    move-result-object p1

    .line 107
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    .line 110
    move-result-object v1
    :try_end_6e
    .catch Ljava/lang/IllegalStateException; {:try_start_66 .. :try_end_6e} :catch_72
    .catch Ljava/io/FileNotFoundException; {:try_start_66 .. :try_end_6e} :catch_72
    .catchall {:try_start_66 .. :try_end_6e} :catchall_6f

    .line 111
    goto :goto_72

    .line 112
    :catchall_6f
    move-exception p1

    .line 113
    move-object v1, p0

    .line 114
    goto :goto_77

    .line 115
    :catch_72
    :cond_72
    :goto_72
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 118
    goto :goto_7d

    .line 119
    :catchall_76
    move-exception p1

    .line 120
    :goto_77
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 123
    throw p1

    .line 124
    :catch_7b
    move-object p0, v1

    .line 125
    goto :goto_72

    .line 126
    :goto_7d
    return-object v1
.end method
