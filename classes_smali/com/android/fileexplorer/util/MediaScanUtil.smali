.class public Lcom/android/fileexplorer/util/MediaScanUtil;
.super Ljava/lang/Object;
.source "MediaScanUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaScanUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/MediaScanUtil;->inserts(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private static insert(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 4

    .line 1
    if-eqz p0, :cond_56

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_56

    .line 10
    :cond_9
    new-instance v0, Ljava/io/File;

    .line 12
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_56

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_56

    .line 27
    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/MediaScanUtil;->isAlreadyInsert(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_56

    .line 33
    :try_start_20
    new-instance v0, Landroid/content/ContentValues;

    .line 35
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 38
    const-string v1, "_data"

    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string p1, "format"

    .line 45
    const/16 v1, 0x3001

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    const-string p1, "external"

    .line 56
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3e} :catch_3f

    .line 63
    goto :goto_56

    .line 64
    :catch_3f
    move-exception p0

    .line 65
    const-string p1, "insert error: "

    .line 67
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    const-string p1, "MediaScanUtil"

    .line 84
    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_56
    :goto_56
    return-void
.end method

.method private static inserts(Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .registers 5

    .line 1
    if-eqz p1, :cond_e

    .line 3
    array-length v0, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_4
    if-ge v1, v0, :cond_e

    .line 7
    aget-object v2, p1, v1

    .line 9
    invoke-static {p0, v2}, Lcom/android/fileexplorer/util/MediaScanUtil;->insert(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 14
    goto :goto_4

    .line 15
    :cond_e
    return-void
.end method

.method private static isAlreadyInsert(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 11

    .line 1
    const-string v0, "external"

    .line 3
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v2

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v7, 0x0

    .line 10
    :try_start_9
    const-string v4, "_data=?"

    .line 12
    new-array v5, v0, [Ljava/lang/String;

    .line 14
    const/4 v8, 0x0

    .line 15
    aput-object p1, v5, v8

    .line 17
    const/4 v6, 0x0

    .line 18
    move-object v1, p0

    .line 19
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 22
    move-result-object v7

    .line 23
    if-eqz v7, :cond_1f

    .line 25
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    .line 28
    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_26
    .catchall {:try_start_9 .. :try_end_1c} :catchall_24

    .line 29
    if-eqz p0, :cond_1f

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v0, v8

    .line 33
    :goto_20
    invoke-static {v7}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 36
    return v0

    .line 37
    :catchall_24
    move-exception p0

    .line 38
    goto :goto_45

    .line 39
    :catch_26
    move-exception p0

    .line 40
    :try_start_27
    const-string p1, "MediaScanUtil"

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string v2, "isAlreadyInsert error:"

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_27 .. :try_end_41} :catchall_24

    .line 66
    invoke-static {v7}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 69
    return v0

    .line 70
    :goto_45
    invoke-static {v7}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 73
    throw p0
.end method

.method public static scan(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1
    invoke-static {v0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan([Ljava/lang/String;)V

    return-void
.end method

.method public static scan(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static scan(Ljava/util/ArrayList;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 5
    iget v2, v1, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    if-nez v2, :cond_9

    .line 6
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 7
    :cond_1f
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/util/List;Z)V

    return-void
.end method

.method public static scan(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 8
    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/util/List;Z)V

    return-void
.end method

.method public static scan(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p0, :cond_18

    .line 9
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_18

    .line 10
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 11
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 12
    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan([Ljava/lang/String;Z)V

    :cond_18
    :goto_18
    return-void
.end method

.method public static scan([Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x1

    .line 13
    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan([Ljava/lang/String;Z)V

    return-void
.end method

.method public static scan([Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 14
    invoke-static {p0, v0, v1, p1}, Lcom/android/fileexplorer/util/MediaScanUtil;->scanReal([Ljava/lang/String;[Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static scanByDeleteFile(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_6e

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_6e

    .line 10
    :cond_9
    const-string v0, "scanByDeleteFile: successList.size = "

    .line 12
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v1, "MediaScanUtil"

    .line 29
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object p0

    .line 41
    :cond_28
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_3e

    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 53
    iget v3, v2, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 55
    if-nez v3, :cond_28

    .line 57
    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    goto :goto_28

    .line 63
    :cond_3e
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_45

    .line 69
    return-void

    .line 70
    :cond_45
    const/4 p0, 0x0

    .line 71
    :try_start_46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 74
    move-result v2

    .line 75
    new-array v2, v2, [Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 81
    check-cast v0, [Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_52} :catch_53

    .line 83
    goto :goto_69

    .line 84
    :catch_53
    move-exception v0

    .line 85
    const-string v2, "scanByDeleteFile error, list toArray, error: "

    .line 87
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    move-object v0, p0

    .line 106
    :goto_69
    const/4 v1, 0x0

    .line 107
    const/4 v2, 0x1

    .line 108
    invoke-static {v0, p0, v1, v2}, Lcom/android/fileexplorer/util/MediaScanUtil;->scanReal([Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 111
    :cond_6e
    :goto_6e
    return-void
.end method

.method public static scanFolder(Ljava/lang/String;Z)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "scanFolder path = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MediaScanUtil"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_22

    .line 29
    const-string p0, "scanFolder: path is null, return"

    .line 31
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void

    .line 35
    :cond_22
    new-instance v0, Ljava/io/File;

    .line 37
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_33

    .line 46
    const-string p0, "scanFolder: file not exists, return"

    .line 48
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void

    .line 52
    :cond_33
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 55
    move-result v2

    .line 56
    const/4 v3, 0x0

    .line 57
    if-eqz v2, :cond_4e

    .line 59
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->isAndroidQAndLater()Z

    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_4e

    .line 65
    const-string v0, "scanFolder: on Q"

    .line 67
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x1

    .line 71
    new-array v0, v0, [Ljava/lang/String;

    .line 73
    aput-object p0, v0, v3

    .line 75
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan([Ljava/lang/String;Z)V

    .line 78
    return-void

    .line 79
    :cond_4e
    new-instance p0, Ljava/util/ArrayList;

    .line 81
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 87
    move-result-object v0

    .line 88
    if-nez v0, :cond_5f

    .line 90
    const-string p0, "scanFolder: children is null, return."

    .line 92
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void

    .line 96
    :cond_5f
    array-length v1, v0

    .line 97
    :goto_60
    if-ge v3, v1, :cond_6e

    .line 99
    aget-object v2, v0, v3

    .line 101
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v3, v3, 0x1

    .line 110
    goto :goto_60

    .line 111
    :cond_6e
    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/util/List;Z)V

    .line 114
    return-void
.end method

.method public static scanFolderWithOutNotify(Ljava/lang/String;)V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scanFolder(Ljava/lang/String;Z)V

    .line 5
    return-void
.end method

.method private static scanReal([Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .registers 7

    .line 1
    const-string v0, "MediaScanUtil"

    .line 3
    if-eqz p0, :cond_22

    .line 5
    array-length v1, p0

    .line 6
    if-nez v1, :cond_8

    .line 8
    goto :goto_22

    .line 9
    :cond_8
    const-string v1, "scan: real list.size = "

    .line 11
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v1

    .line 15
    array-length v2, p0

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/android/fileexplorer/util/MediaScanUtil$1;

    .line 28
    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/fileexplorer/util/MediaScanUtil$1;-><init>([Ljava/lang/String;Z[Ljava/lang/String;Z)V

    .line 31
    invoke-static {v0}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    .line 34
    return-void

    .line 35
    :cond_22
    :goto_22
    const-string p0, "scan file list is null, return"

    .line 37
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
