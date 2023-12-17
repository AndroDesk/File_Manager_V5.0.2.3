.class public Lcom/android/fileexplorer/filemanager/DocumentsUtils;
.super Ljava/lang/Object;
.source "DocumentsUtils.java"


# static fields
.field private static final SD_URL_SUFFIX:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "DocumentsUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSDUriValid()Z
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getSDUuId()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/android/fileexplorer/util/ExternalStoragePermissionSharedPreferences;->getUriByUuid(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_14

    .line 20
    return v3

    .line 21
    :cond_14
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v0, ":"

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_31

    .line 48
    const/4 v0, 0x1

    .line 49
    return v0

    .line 50
    :cond_31
    return v3
.end method

.method public static createDirByParent(Ls0/a;Ljava/io/File;)Ls0/a;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_13

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ls0/a;->a(Ljava/lang/String;)Ls0/a;

    .line 18
    move-result-object p0

    .line 19
    goto :goto_33

    .line 20
    :cond_13
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    check-cast p0, Ls0/c;

    .line 26
    iget-object v1, p0, Ls0/c;->b:Landroid/content/Context;

    .line 28
    iget-object v2, p0, Ls0/c;->c:Landroid/net/Uri;

    .line 30
    const-string v3, "vnd.android.document/directory"

    .line 32
    :try_start_1f
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1, v2, v3, p1}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    move-result-object p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_28

    .line 40
    goto :goto_29

    .line 41
    :catch_28
    move-object p1, v0

    .line 42
    :goto_29
    if-eqz p1, :cond_32

    .line 44
    new-instance v0, Ls0/c;

    .line 46
    iget-object v1, p0, Ls0/c;->b:Landroid/content/Context;

    .line 48
    invoke-direct {v0, p0, v1, p1}, Ls0/c;-><init>(Ls0/a;Landroid/content/Context;Landroid/net/Uri;)V

    .line 51
    :cond_32
    move-object p0, v0

    .line 52
    :goto_33
    return-object p0
.end method

.method public static createDocumentDir(Ljava/io/File;)Ls0/a;
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "DocumentsUtils"

    .line 4
    if-nez p0, :cond_b

    .line 6
    const-string p0, "getDocumentFile file is null"

    .line 8
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-object v0

    .line 12
    :cond_b
    invoke-static {}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2, p0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getExtSdCardFolder(Ljava/io/File;)Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_16

    .line 22
    return-object v0

    .line 23
    :cond_16
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x1

    .line 25
    :try_start_18
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v6

    .line 33
    if-nez v6, :cond_2d

    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 38
    move-result v2

    .line 39
    add-int/2addr v2, v4

    .line 40
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 43
    move-result-object v2
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2b} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2b} :catch_2d

    .line 44
    move v4, v3

    .line 45
    goto :goto_2e

    .line 46
    :catch_2d
    :cond_2d
    move-object v2, v0

    .line 47
    :goto_2e
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v5, p0}, Lcom/android/fileexplorer/model/StorageHelper;->getStorageUuid(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Lcom/android/fileexplorer/util/ExternalStoragePermissionSharedPreferences;->getUriByUuid(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_45

    .line 69
    return-object v0

    .line 70
    :cond_45
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    move-result-object p0

    .line 74
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 77
    move-result-object v5

    .line 78
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 81
    move-result-object v6

    .line 82
    invoke-static {v5, p0}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 85
    move-result v7

    .line 86
    if-eqz v7, :cond_5b

    .line 88
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 91
    move-result-object v6

    .line 92
    :cond_5b
    new-instance v7, Ls0/c;

    .line 94
    invoke-static {p0, v6}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 97
    move-result-object p0

    .line 98
    invoke-direct {v7, v0, v5, p0}, Ls0/c;-><init>(Ls0/a;Landroid/content/Context;Landroid/net/Uri;)V

    .line 101
    if-eqz v4, :cond_67

    .line 103
    return-object v7

    .line 104
    :cond_67
    const-string p0, "\\/"

    .line 106
    invoke-virtual {v2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 110
    :try_start_6d
    array-length v2, p0

    .line 111
    :goto_6e
    if-ge v3, v2, :cond_9c

    .line 113
    aget-object v4, p0, v3

    .line 115
    invoke-virtual {v7, v4}, Ls0/a;->a(Ljava/lang/String;)Ls0/a;

    .line 118
    move-result-object v5

    .line 119
    if-nez v5, :cond_98

    .line 121
    check-cast v7, Ls0/c;

    .line 123
    iget-object v5, v7, Ls0/c;->b:Landroid/content/Context;

    .line 125
    iget-object v6, v7, Ls0/c;->c:Landroid/net/Uri;

    .line 127
    const-string v8, "vnd.android.document/directory"
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_80} :catch_9e

    .line 129
    :try_start_80
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 132
    move-result-object v5

    .line 133
    invoke-static {v5, v6, v8, v4}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 136
    move-result-object v4
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_88} :catch_89

    .line 137
    goto :goto_8a

    .line 138
    :catch_89
    move-object v4, v0

    .line 139
    :goto_8a
    if-eqz v4, :cond_94

    .line 141
    :try_start_8c
    new-instance v5, Ls0/c;

    .line 143
    iget-object v6, v7, Ls0/c;->b:Landroid/content/Context;

    .line 145
    invoke-direct {v5, v7, v6, v4}, Ls0/c;-><init>(Ls0/a;Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_93} :catch_9e

    .line 148
    goto :goto_95

    .line 149
    :cond_94
    move-object v5, v0

    .line 150
    :goto_95
    if-nez v5, :cond_98

    .line 152
    return-object v0

    .line 153
    :cond_98
    move-object v7, v5

    .line 154
    add-int/lit8 v3, v3, 0x1

    .line 156
    goto :goto_6e

    .line 157
    :cond_9c
    move-object v0, v7

    .line 158
    goto :goto_b3

    .line 159
    :catch_9e
    move-exception p0

    .line 160
    const-string v2, "createDocumentDir error： "

    .line 162
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 169
    move-result-object p0

    .line 170
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object p0

    .line 177
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :catch_b3
    :goto_b3
    return-object v0
.end method

.method public static createDocumentFile(Ljava/io/File;)Ls0/a;
    .registers 2

    .line 17
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 18
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentFile(Ljava/io/File;)Ls0/a;

    move-result-object p0

    return-object p0

    .line 19
    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentDir(Ljava/io/File;)Ls0/a;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 20
    invoke-static {v0, p0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ls0/a;Ljava/io/File;)Ls0/a;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createDocumentFile(Ls0/a;Ljava/io/File;)Ls0/a;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_71

    if-nez p1, :cond_6

    goto :goto_71

    .line 3
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 5
    invoke-virtual {p0, v1}, Ls0/a;->a(Ljava/lang/String;)Ls0/a;

    move-result-object p1

    if-eqz p1, :cond_17

    return-object p1

    .line 6
    :cond_17
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "application/ogg"

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string v2, ".ogg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, ".oga"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    :cond_37
    const-string p1, "DocumentsUtils"

    const-string v2, "createDocumentFile endWith ogg or oga"

    .line 8
    invoke-static {p1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    check-cast p0, Ls0/c;

    .line 10
    iget-object p1, p0, Ls0/c;->b:Landroid/content/Context;

    iget-object v2, p0, Ls0/c;->c:Landroid/net/Uri;

    .line 11
    :try_start_44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v0, v1}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4c} :catch_4d

    goto :goto_4e

    :catch_4d
    move-object p1, v0

    :goto_4e
    if-eqz p1, :cond_71

    .line 12
    new-instance v0, Ls0/c;

    iget-object v1, p0, Ls0/c;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Ls0/c;-><init>(Ls0/a;Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_71

    .line 13
    :cond_58
    check-cast p0, Ls0/c;

    .line 14
    iget-object v2, p0, Ls0/c;->b:Landroid/content/Context;

    iget-object v3, p0, Ls0/c;->c:Landroid/net/Uri;

    .line 15
    :try_start_5e
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, p1, v1}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_66} :catch_67

    goto :goto_68

    :catch_67
    move-object p1, v0

    :goto_68
    if-eqz p1, :cond_71

    .line 16
    new-instance v0, Ls0/c;

    iget-object v1, p0, Ls0/c;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Ls0/c;-><init>(Ls0/a;Landroid/content/Context;Landroid/net/Uri;)V

    :cond_71
    :goto_71
    return-object v0
.end method

.method public static createDocumentFile(Ls0/a;Ljava/lang/String;)Ls0/a;
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ls0/a;Ljava/io/File;)Ls0/a;

    move-result-object p0

    return-object p0
.end method

.method public static deleteFile(Ls0/a;)Z
    .registers 11

    .line 1
    const-string v0, "DocumentsUtils"

    .line 3
    const-string v1, "deleteFile By DocumentFile"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x1

    .line 9
    if-eqz p0, :cond_80

    .line 11
    move-object v1, p0

    .line 12
    check-cast v1, Ls0/c;

    .line 14
    iget-object v2, v1, Ls0/c;->b:Landroid/content/Context;

    .line 16
    iget-object v4, v1, Ls0/c;->c:Landroid/net/Uri;

    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    move-result-object v3

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v9, 0x0

    .line 24
    :try_start_17
    const-string v5, "document_id"

    .line 26
    filled-new-array {v5}, [Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 40
    move-result v3
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_28} :catch_2c
    .catchall {:try_start_17 .. :try_end_28} :catchall_2e

    .line 41
    if-lez v3, :cond_46

    .line 43
    move v3, v0

    .line 44
    goto :goto_47

    .line 45
    :catch_2c
    move-exception v3

    .line 46
    goto :goto_30

    .line 47
    :catchall_2e
    move-exception p0

    .line 48
    goto :goto_7c

    .line 49
    :goto_30
    :try_start_30
    const-string v4, "DocumentFile"

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v6, "Failed query: "

    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 68
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_30 .. :try_end_46} :catchall_2e

    .line 71
    :cond_46
    move v3, v9

    .line 72
    :goto_47
    invoke-static {v2}, Ls0/b;->a(Landroid/database/Cursor;)V

    .line 75
    if-nez v3, :cond_4d

    .line 77
    goto :goto_80

    .line 78
    :cond_4d
    iget-object v0, v1, Ls0/c;->b:Landroid/content/Context;

    .line 80
    iget-object v2, v1, Ls0/c;->c:Landroid/net/Uri;

    .line 82
    const-string v3, "mime_type"

    .line 84
    invoke-static {v0, v2, v3}, Ls0/b;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    const-string v2, "vnd.android.document/directory"

    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_6f

    .line 96
    invoke-virtual {p0}, Ls0/a;->b()[Ls0/a;

    .line 99
    move-result-object p0

    .line 100
    array-length v0, p0

    .line 101
    move v2, v9

    .line 102
    :goto_65
    if-ge v2, v0, :cond_6f

    .line 104
    aget-object v3, p0, v2

    .line 106
    invoke-static {v3}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->deleteFile(Ls0/a;)Z

    .line 109
    add-int/lit8 v2, v2, 0x1

    .line 111
    goto :goto_65

    .line 112
    :cond_6f
    :try_start_6f
    iget-object p0, v1, Ls0/c;->b:Landroid/content/Context;

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 117
    move-result-object p0

    .line 118
    iget-object v0, v1, Ls0/c;->c:Landroid/net/Uri;

    .line 120
    invoke-static {p0, v0}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    .line 123
    move-result v9
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7b} :catch_7b

    .line 124
    :catch_7b
    return v9

    .line 125
    :goto_7c
    invoke-static {v2}, Ls0/b;->a(Landroid/database/Cursor;)V

    .line 128
    throw p0

    .line 129
    :cond_80
    :goto_80
    return v0
.end method

.method public static getDocumentFile(Ljava/io/File;)Ls0/a;
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 3
    :cond_4
    invoke-static {}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getRootDocumentFile()Ls0/a;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getExtSdCardFolder(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 5
    :try_start_12
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_25} :catch_b9
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_25} :catch_27

    move v4, v3

    goto :goto_28

    :catch_27
    :cond_27
    move-object p0, v0

    .line 8
    :goto_28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDocumentFile: origin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", baseFolder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", fullPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rootFile = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "DocumentsUtils"

    invoke-static {v5, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_59

    return-object v1

    :cond_59
    const-string v2, "\\/"

    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 10
    :try_start_5f
    array-length v2, p0

    :goto_60
    if-ge v3, v2, :cond_a2

    aget-object v4, p0, v3

    if-eqz v1, :cond_9f

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDocumentDir: partPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v4}, Ls0/a;->a(Ljava/lang/String;)Ls0/a;

    move-result-object v1

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDocumentDir: dirDocumentFile.name = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, v1

    check-cast v6, Ls0/c;

    .line 14
    iget-object v7, v6, Ls0/c;->b:Landroid/content/Context;

    .line 15
    iget-object v6, v6, Ls0/c;->c:Landroid/net/Uri;

    const-string v8, "_display_name"

    .line 16
    invoke-static {v7, v6, v8}, Ls0/b;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_9f} :catch_a4

    :cond_9f
    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    :cond_a2
    move-object v0, v1

    goto :goto_b9

    :catch_a4
    move-exception p0

    const-string v1, "getDocumentFile: error: "

    .line 18
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :catch_b9
    :goto_b9
    return-object v0
.end method

.method public static getDocumentFile(Ljava/lang/String;)Ls0/a;
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentFile(Ljava/io/File;)Ls0/a;

    move-result-object p0

    return-object p0
.end method

.method public static getDocumentUri(Ljava/io/File;)Landroid/net/Uri;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_15

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_15

    .line 2
    :cond_a
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentFile(Ljava/io/File;)Ls0/a;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_15

    .line 3
    :cond_11
    check-cast p0, Ls0/c;

    .line 4
    iget-object v0, p0, Ls0/c;->c:Landroid/net/Uri;

    :cond_15
    :goto_15
    return-object v0
.end method

.method public static getDocumentUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 6
    :cond_8
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentFile(Ljava/lang/String;)Ls0/a;

    move-result-object p0

    if-nez p0, :cond_f

    goto :goto_13

    .line 7
    :cond_f
    check-cast p0, Ls0/c;

    .line 8
    iget-object v1, p0, Ls0/c;->c:Landroid/net/Uri;

    :goto_13
    return-object v1
.end method

.method public static getRootDocumentFile()Ls0/a;
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getSDUuId()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/android/fileexplorer/util/ExternalStoragePermissionSharedPreferences;->getUriByUuid(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_14

    .line 20
    return-object v2

    .line 21
    :cond_14
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    move-result-object v1

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const-string v4, "getRootDocumentFile: uri = "

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    const-string v4, ", uriStr = "

    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    const-string v3, "DocumentsUtils"

    .line 56
    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 62
    move-result-object v0

    .line 63
    invoke-static {v1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_4c

    .line 73
    invoke-static {v1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    :cond_4c
    new-instance v4, Ls0/c;

    .line 79
    invoke-static {v1, v3}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 82
    move-result-object v1

    .line 83
    invoke-direct {v4, v2, v0, v1}, Ls0/c;-><init>(Ls0/a;Landroid/content/Context;Landroid/net/Uri;)V

    .line 86
    return-object v4
.end method
