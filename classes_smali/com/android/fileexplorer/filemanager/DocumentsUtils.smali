.class public Lcom/android/fileexplorer/filemanager/DocumentsUtils;
.super Ljava/lang/Object;
.source "DocumentsUtils.java"


# static fields
.field private static final SD_URL_SUFFIX:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "DocumentsUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSDUriValid()Z
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getSDUuId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/ExternalStoragePermissionSharedPreferences;->getUriByUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    return v3

    :cond_14
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    return v0

    :cond_31
    return v3
.end method

.method public static createDirByParent(Ls0/a;Ljava/io/File;)Ls0/a;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls0/a;->a(Ljava/lang/String;)Ls0/a;

    move-result-object p0

    goto :goto_33

    :cond_13
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Ls0/c;

    iget-object v1, p0, Ls0/c;->b:Landroid/content/Context;

    iget-object v2, p0, Ls0/c;->c:Landroid/net/Uri;

    const-string v3, "vnd.android.document/directory"

    :try_start_1f
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v3, p1}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_28

    goto :goto_29

    :catch_28
    move-object p1, v0

    :goto_29
    if-eqz p1, :cond_32

    new-instance v0, Ls0/c;

    iget-object v1, p0, Ls0/c;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Ls0/c;-><init>(Ls0/a;Landroid/content/Context;Landroid/net/Uri;)V

    :cond_32
    move-object p0, v0

    :goto_33
    return-object p0
.end method

.method public static createDocumentDir(Ljava/io/File;)Ls0/a;
    .registers 10

    const/4 v0, 0x0

    const-string v1, "DocumentsUtils"

    if-nez p0, :cond_b

    const-string p0, "getDocumentFile file is null"

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_b
    invoke-static {}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getExtSdCardFolder(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16

    return-object v0

    :cond_16
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_18
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2b} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2b} :catch_2d

    move v4, v3

    goto :goto_2e

    :catch_2d
    :cond_2d
    move-object v2, v0

    :goto_2e
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/android/fileexplorer/model/StorageHelper;->getStorageUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/util/ExternalStoragePermissionSharedPreferences;->getUriByUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_45

    return-object v0

    :cond_45
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p0}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_5b

    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    :cond_5b
    new-instance v7, Ls0/c;

    invoke-static {p0, v6}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v7, v0, v5, p0}, Ls0/c;-><init>(Ls0/a;Landroid/content/Context;Landroid/net/Uri;)V

    if-eqz v4, :cond_67

    return-object v7

    :cond_67
    const-string p0, "\\/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :try_start_6d
    array-length v2, p0

    :goto_6e
    if-ge v3, v2, :cond_9c

    aget-object v4, p0, v3

    invoke-virtual {v7, v4}, Ls0/a;->a(Ljava/lang/String;)Ls0/a;

    move-result-object v5

    if-nez v5, :cond_98

    check-cast v7, Ls0/c;

    iget-object v5, v7, Ls0/c;->b:Landroid/content/Context;

    iget-object v6, v7, Ls0/c;->c:Landroid/net/Uri;

    const-string v8, "vnd.android.document/directory"
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_80} :catch_9e

    :try_start_80
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v6, v8, v4}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_88} :catch_89

    goto :goto_8a

    :catch_89
    move-object v4, v0

    :goto_8a
    if-eqz v4, :cond_94

    :try_start_8c
    new-instance v5, Ls0/c;

    iget-object v6, v7, Ls0/c;->b:Landroid/content/Context;

    invoke-direct {v5, v7, v6, v4}, Ls0/c;-><init>(Ls0/a;Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_93} :catch_9e

    goto :goto_95

    :cond_94
    move-object v5, v0

    :goto_95
    if-nez v5, :cond_98

    return-object v0

    :cond_98
    move-object v7, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    :cond_9c
    move-object v0, v7

    goto :goto_b3

    :catch_9e
    move-exception p0

    const-string v2, "createDocumentDir error： "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :catch_b3
    :goto_b3
    return-object v0
.end method

.method public static createDocumentFile(Ljava/io/File;)Ls0/a;
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentFile(Ljava/io/File;)Ls0/a;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentDir(Ljava/io/File;)Ls0/a;

    move-result-object v0

    if-eqz v0, :cond_1a

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

    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0, v1}, Ls0/a;->a(Ljava/lang/String;)Ls0/a;

    move-result-object p1

    if-eqz p1, :cond_17

    return-object p1

    :cond_17
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "application/ogg"

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

    invoke-static {p1, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p0, Ls0/c;

    iget-object p1, p0, Ls0/c;->b:Landroid/content/Context;

    iget-object v2, p0, Ls0/c;->c:Landroid/net/Uri;

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

    new-instance v0, Ls0/c;

    iget-object v1, p0, Ls0/c;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Ls0/c;-><init>(Ls0/a;Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_71

    :cond_58
    check-cast p0, Ls0/c;

    iget-object v2, p0, Ls0/c;->b:Landroid/content/Context;

    iget-object v3, p0, Ls0/c;->c:Landroid/net/Uri;

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

    new-instance v0, Ls0/c;

    iget-object v1, p0, Ls0/c;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Ls0/c;-><init>(Ls0/a;Landroid/content/Context;Landroid/net/Uri;)V

    :cond_71
    :goto_71
    return-object v0
.end method

.method public static createDocumentFile(Ls0/a;Ljava/lang/String;)Ls0/a;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ls0/a;Ljava/io/File;)Ls0/a;

    move-result-object p0

    return-object p0
.end method

.method public static deleteFile(Ls0/a;)Z
    .registers 11

    const-string v0, "DocumentsUtils"

    const-string v1, "deleteFile By DocumentFile"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p0, :cond_80

    move-object v1, p0

    check-cast v1, Ls0/c;

    iget-object v2, v1, Ls0/c;->b:Landroid/content/Context;

    iget-object v4, v1, Ls0/c;->c:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v9, 0x0

    :try_start_17
    const-string v5, "document_id"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_28} :catch_2c
    .catchall {:try_start_17 .. :try_end_28} :catchall_2e

    if-lez v3, :cond_46

    move v3, v0

    goto :goto_47

    :catch_2c
    move-exception v3

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_7c

    :goto_30
    :try_start_30
    const-string v4, "DocumentFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_30 .. :try_end_46} :catchall_2e

    :cond_46
    move v3, v9

    :goto_47
    invoke-static {v2}, Ls0/b;->a(Landroid/database/Cursor;)V

    if-nez v3, :cond_4d

    goto :goto_80

    :cond_4d
    iget-object v0, v1, Ls0/c;->b:Landroid/content/Context;

    iget-object v2, v1, Ls0/c;->c:Landroid/net/Uri;

    const-string v3, "mime_type"

    invoke-static {v0, v2, v3}, Ls0/b;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "vnd.android.document/directory"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Ls0/a;->b()[Ls0/a;

    move-result-object p0

    array-length v0, p0

    move v2, v9

    :goto_65
    if-ge v2, v0, :cond_6f

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->deleteFile(Ls0/a;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    :cond_6f
    :try_start_6f
    iget-object p0, v1, Ls0/c;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-object v0, v1, Ls0/c;->c:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v9
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7b} :catch_7b

    :catch_7b
    return v9

    :goto_7c
    invoke-static {v2}, Ls0/b;->a(Landroid/database/Cursor;)V

    throw p0

    :cond_80
    :goto_80
    return v0
.end method

.method public static getDocumentFile(Ljava/io/File;)Ls0/a;
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-static {}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getRootDocumentFile()Ls0/a;

    move-result-object v1

    invoke-static {}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getExtSdCardFolder(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_12
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

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

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :try_start_5f
    array-length v2, p0

    :goto_60
    if-ge v3, v2, :cond_a2

    aget-object v4, p0, v3

    if-eqz v1, :cond_9f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDocumentDir: partPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ls0/a;->a(Ljava/lang/String;)Ls0/a;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDocumentDir: dirDocumentFile.name = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, v1

    check-cast v6, Ls0/c;

    iget-object v7, v6, Ls0/c;->b:Landroid/content/Context;

    iget-object v6, v6, Ls0/c;->c:Landroid/net/Uri;

    const-string v8, "_display_name"

    invoke-static {v7, v6, v8}, Ls0/b;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

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

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

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

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_15

    :cond_a
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentFile(Ljava/io/File;)Ls0/a;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_15

    :cond_11
    check-cast p0, Ls0/c;

    iget-object v0, p0, Ls0/c;->c:Landroid/net/Uri;

    :cond_15
    :goto_15
    return-object v0
.end method

.method public static getDocumentUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentFile(Ljava/lang/String;)Ls0/a;

    move-result-object p0

    if-nez p0, :cond_f

    goto :goto_13

    :cond_f
    check-cast p0, Ls0/c;

    iget-object v1, p0, Ls0/c;->c:Landroid/net/Uri;

    :goto_13
    return-object v1
.end method

.method public static getRootDocumentFile()Ls0/a;
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getInstance()Lcom/android/fileexplorer/util/ExternalFilesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/ExternalFilesHelper;->getSDUuId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/ExternalStoragePermissionSharedPreferences;->getUriByUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    return-object v2

    :cond_14
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRootDocumentFile: uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", uriStr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DocumentsUtils"

    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-static {v1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    :cond_4c
    new-instance v4, Ls0/c;

    invoke-static {v1, v3}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v2, v0, v1}, Ls0/c;-><init>(Ls0/a;Landroid/content/Context;Landroid/net/Uri;)V

    return-object v4
.end method
