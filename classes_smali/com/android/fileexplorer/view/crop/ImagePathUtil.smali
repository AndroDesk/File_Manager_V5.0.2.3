.class public Lcom/android/fileexplorer/view/crop/ImagePathUtil;
.super Ljava/lang/Object;
.source "ImagePathUtil.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDataColumn(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 1
    const-string v0, "_data"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    move-result-object v3

    .line 7
    const/4 v7, 0x0

    .line 8
    :try_start_7
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    move-result-object v1

    .line 20
    const/4 v6, 0x0

    .line 21
    move-object v2, p0

    .line 22
    move-object v4, p1

    .line 23
    move-object v5, p2

    .line 24
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 27
    move-result-object p0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_36

    .line 28
    if-eqz p0, :cond_32

    .line 30
    :try_start_1d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_32

    .line 36
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 39
    move-result p1

    .line 40
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object p1
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_2f

    .line 44
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 47
    return-object p1

    .line 48
    :catchall_2f
    move-exception p1

    .line 49
    move-object v7, p0

    .line 50
    goto :goto_37

    .line 51
    :cond_32
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 54
    return-object v7

    .line 55
    :catchall_36
    move-exception p1

    .line 56
    :goto_37
    invoke-static {v7}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 59
    throw p1
.end method

.method public static getPath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0, p0}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_8e

    .line 16
    invoke-static {p0}, Lcom/android/fileexplorer/view/crop/ImagePathUtil;->isExternalStorageDocument(Landroid/net/Uri;)Z

    .line 19
    move-result v0

    .line 20
    const-string v2, ":"

    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v0, :cond_46

    .line 26
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    aget-object v0, p0, v4

    .line 36
    const-string v2, "primary"

    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_c2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, "/"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    aget-object p0, p0, v3

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_46
    invoke-static {p0}, Lcom/android/fileexplorer/view/crop/ImagePathUtil;->isDownloadsDocument(Landroid/net/Uri;)Z

    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_67

    .line 77
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    const-string v0, "content://downloads/public_downloads"

    .line 83
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 86
    move-result-object v0

    .line 87
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 94
    move-result-wide v2

    .line 95
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 98
    move-result-object p0

    .line 99
    invoke-static {p0, v1, v1}, Lcom/android/fileexplorer/view/crop/ImagePathUtil;->getDataColumn(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :cond_67
    invoke-static {p0}, Lcom/android/fileexplorer/view/crop/ImagePathUtil;->isMediaDocument(Landroid/net/Uri;)Z

    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_c2

    .line 110
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    aget-object v0, p0, v4

    .line 120
    const-string v2, "image"

    .line 122
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_81

    .line 128
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 130
    :cond_81
    new-array v0, v3, [Ljava/lang/String;

    .line 132
    aget-object p0, p0, v3

    .line 134
    aput-object p0, v0, v4

    .line 136
    const-string p0, "_id=?"

    .line 138
    invoke-static {v1, p0, v0}, Lcom/android/fileexplorer/view/crop/ImagePathUtil;->getDataColumn(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :cond_8e
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 146
    move-result-object v0

    .line 147
    const-string v2, "content"

    .line 149
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_b1

    .line 155
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->isAndroid24AndLater()Z

    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_ac

    .line 161
    invoke-static {p0}, Lcom/android/fileexplorer/view/crop/ImagePathUtil;->isGooglePhotosUri(Landroid/net/Uri;)Z

    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_a7

    .line 167
    goto :goto_ac

    .line 168
    :cond_a7
    invoke-static {p0, v1, v1}, Lcom/android/fileexplorer/view/crop/ImagePathUtil;->getDataColumn(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 171
    move-result-object p0

    .line 172
    return-object p0

    .line 173
    :cond_ac
    :goto_ac
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 176
    move-result-object p0

    .line 177
    return-object p0

    .line 178
    :cond_b1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 181
    move-result-object v0

    .line 182
    const-string v2, "file"

    .line 184
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_c2

    .line 190
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 193
    move-result-object p0

    .line 194
    return-object p0

    .line 195
    :cond_c2
    return-object v1
.end method

.method private static isDownloadsDocument(Landroid/net/Uri;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "com.android.providers.downloads.documents"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static isExternalStorageDocument(Landroid/net/Uri;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "com.android.externalstorage.documents"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static isGooglePhotosUri(Landroid/net/Uri;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "com.google.android.apps.photos.content"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static isMediaDocument(Landroid/net/Uri;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "com.android.providers.media.documents"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method
