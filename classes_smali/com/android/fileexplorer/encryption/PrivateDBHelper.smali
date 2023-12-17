.class public Lcom/android/fileexplorer/encryption/PrivateDBHelper;
.super Ljava/lang/Object;
.source "PrivateDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/encryption/PrivateDBHelper$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final ADDED_DATE:Ljava/lang/String; = "added_date"

.field private static final DATABASE_NAME:Ljava/lang/String; = "private.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DISPLAY_PATH:Ljava/lang/String; = "display_path"

.field private static final EXT_1:Ljava/lang/String; = "ext_1"

.field private static final EXT_2:Ljava/lang/String; = "ext_2"

.field private static final FILE_PATH:Ljava/lang/String; = "file_path"

.field private static final FILE_SIZE:Ljava/lang/String; = "file_size"

.field private static final HEADER_PATH:Ljava/lang/String; = "header_path"

.field private static final SOURCE_PATH:Ljava/lang/String; = "source_path"

.field private static final TABLE_NAME:Ljava/lang/String; = "private_folder"

.field private static final TAG:Ljava/lang/String; = "PrivateDBHelper"

.field private static final THUMB_PATH:Ljava/lang/String; = "thumb_path"

.field private static db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteDirList(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-nez v0, :cond_f

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->init(Landroid/content/Context;)V

    .line 16
    :cond_f
    sget-object v0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    if-eqz v0, :cond_31

    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_31

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x3

    .line 31
    if-ge v0, v1, :cond_21

    .line 33
    goto :goto_31

    .line 34
    :cond_21
    const-class v0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;

    .line 36
    monitor-enter v0

    .line 37
    :try_start_24
    sget-object v1, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    const-string v2, "private_folder"

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {v1, v2, p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 45
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :catchall_2e
    move-exception p0

    .line 48
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_2e

    .line 49
    throw p0

    .line 50
    :cond_31
    :goto_31
    return-void
.end method

.method private static deleteFileList(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-nez v0, :cond_f

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->init(Landroid/content/Context;)V

    .line 16
    :cond_f
    sget-object v0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    if-nez v0, :cond_14

    .line 20
    return-void

    .line 21
    :cond_14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_38

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x3

    .line 32
    if-ge v0, v1, :cond_22

    .line 34
    goto :goto_38

    .line 35
    :cond_22
    const-string v0, "file_path IN "

    .line 37
    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    const-class v0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;

    .line 43
    monitor-enter v0

    .line 44
    :try_start_2b
    sget-object v1, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    const-string v2, "private_folder"

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-virtual {v1, v2, p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :catchall_35
    move-exception p0

    .line 55
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_35

    .line 56
    throw p0

    .line 57
    :cond_38
    :goto_38
    return-void
.end method

.method public static deleteList(Ljava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "("

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v3

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v7

    .line 23
    const-string v8, ")"

    .line 25
    if-eqz v7, :cond_a0

    .line 27
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v7

    .line 31
    check-cast v7, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 33
    invoke-virtual {v7}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    .line 36
    move-result v9

    .line 37
    const/16 v10, 0xc8

    .line 39
    const-string v11, "\'\'"

    .line 41
    const-string v12, "\'"

    .line 43
    const/4 v13, 0x1

    .line 44
    if-eqz v9, :cond_69

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 49
    move-result v9

    .line 50
    if-eq v9, v13, :cond_38

    .line 52
    const-string v9, " or "

    .line 54
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_38
    add-int/lit8 v5, v5, 0x1

    .line 59
    invoke-virtual {v7}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 62
    move-result-object v9

    .line 63
    invoke-virtual {v9, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 66
    move-result-object v9

    .line 67
    const-string v14, "/"

    .line 69
    invoke-virtual {v9, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 72
    move-result v15

    .line 73
    if-nez v15, :cond_4e

    .line 75
    invoke-static {v9, v14}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v9

    .line 79
    :cond_4e
    const-string v14, "file_path"

    .line 81
    const-string v15, " like \'"

    .line 83
    const-string v4, "%\'"

    .line 85
    invoke-static {v2, v14, v15, v9, v4}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-le v5, v10, :cond_69

    .line 90
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    invoke-static {v2}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->deleteDirList(Ljava/lang/String;)V

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    const/4 v5, 0x0

    .line 106
    :cond_69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 109
    move-result v4

    .line 110
    if-eq v4, v13, :cond_74

    .line 112
    const-string v4, ","

    .line 114
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_74
    add-int/2addr v6, v13

    .line 118
    invoke-virtual {v7}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v4, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    if-le v6, v10, :cond_98

    .line 137
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->deleteFileList(Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    const/4 v6, 0x0

    .line 153
    :cond_98
    invoke-static {v7}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->deleteHeader(Lcom/android/fileexplorer/encryption/PrivateFile;)Z

    .line 156
    invoke-static {v7}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->deleteThumb(Lcom/android/fileexplorer/encryption/PrivateFile;)Z

    .line 159
    goto/16 :goto_12

    .line 161
    :cond_a0
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->deleteFileList(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->deleteDirList(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public static deletePrivateFile(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-nez v0, :cond_f

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->init(Landroid/content/Context;)V

    .line 16
    :cond_f
    sget-object v0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    if-nez v0, :cond_14

    .line 20
    return-void

    .line 21
    :cond_14
    const-string v0, "file_path =?"

    .line 23
    const/4 v1, 0x1

    .line 24
    new-array v1, v1, [Ljava/lang/String;

    .line 26
    const/4 v2, 0x0

    .line 27
    aput-object p0, v1, v2

    .line 29
    const-class p0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;

    .line 31
    monitor-enter p0

    .line 32
    :try_start_1f
    sget-object v2, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    const-string v3, "private_folder"

    .line 36
    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_28
    move-exception v0

    .line 42
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_28

    .line 43
    throw v0
.end method

.method public static getAllPrivateFile(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1f

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateRootDirs()[Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    array-length v1, p0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_11
    if-ge v2, v1, :cond_34

    .line 20
    aget-object v3, p0, v2

    .line 22
    invoke-static {v3}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getAllPrivateFile(Ljava/lang/String;)Ljava/util/List;

    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_11

    .line 32
    :cond_1f
    new-instance v1, Ljava/io/File;

    .line 34
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    .line 39
    invoke-virtual {v1, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 42
    move-result-object p0

    .line 43
    if-nez p0, :cond_2d

    .line 45
    return-object v0

    .line 46
    :cond_2d
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    :cond_34
    return-object v0
.end method

.method private static getAllPrivateFileInFolder(Ljava/io/File;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_55

    .line 12
    array-length v1, p0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_d
    if-ge v2, v1, :cond_55

    .line 16
    aget-object v3, p0, v2

    .line 18
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1f

    .line 24
    invoke-static {v3}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getAllPrivateFileInFolder(Ljava/io/File;)Ljava/util/List;

    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 31
    goto :goto_52

    .line 32
    :cond_1f
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 35
    move-result-object v4

    .line 36
    const-string v5, ".thumb_"

    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_52

    .line 44
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 47
    move-result-object v4

    .line 48
    const-string v5, ".header_backup_"

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_52

    .line 56
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    const-string v5, ".lock_"

    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    move-result v4

    .line 66
    if-nez v4, :cond_52

    .line 68
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 71
    move-result-object v4

    .line 72
    const-string v5, ".nomedia"

    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_52

    .line 80
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_52
    :goto_52
    add-int/lit8 v2, v2, 0x1

    .line 85
    goto :goto_d

    .line 86
    :cond_55
    return-object v0
.end method

.method public static getFromDisplayPath(Ljava/lang/String;)Lcom/android/fileexplorer/encryption/PrivateFile;
    .registers 16

    .line 1
    sget-object v0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-nez v0, :cond_f

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->init(Landroid/content/Context;)V

    .line 16
    :cond_f
    sget-object v0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez v0, :cond_15

    .line 21
    return-object v1

    .line 22
    :cond_15
    const-string v5, "display_path =?"

    .line 24
    const/4 v0, 0x1

    .line 25
    new-array v6, v0, [Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    .line 28
    aput-object p0, v6, v0

    .line 30
    :try_start_1d
    const-class v0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;

    .line 32
    monitor-enter v0
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_b3

    .line 33
    :try_start_20
    sget-object v2, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    const-string v3, "private_folder"

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x0

    .line 41
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 44
    move-result-object v2
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_b0

    .line 45
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_ad

    .line 46
    if-eqz v2, :cond_97

    .line 48
    :try_start_2f
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 51
    move-result v0

    .line 52
    if-lez v0, :cond_97

    .line 54
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_97

    .line 60
    const-string v0, "source_path"

    .line 62
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 65
    move-result v0

    .line 66
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 70
    const-string v0, "thumb_path"

    .line 72
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 75
    move-result v0

    .line 76
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    const-string v1, "file_path"

    .line 82
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 85
    move-result v1

    .line 86
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 89
    move-result-object v5

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_63

    .line 96
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    :cond_63
    move-object v6, v0

    .line 101
    const-string v0, "header_path"

    .line 103
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 106
    move-result v0

    .line 107
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_78

    .line 117
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateHeaderBakPath(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    :cond_78
    move-object v7, v0

    .line 122
    const-string v0, "file_size"

    .line 124
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 127
    move-result v0

    .line 128
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 131
    move-result-wide v9

    .line 132
    const-string v0, "added_date"

    .line 134
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 137
    move-result v0

    .line 138
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 141
    move-result-wide v13

    .line 142
    new-instance v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 144
    const/4 v11, 0x0

    .line 145
    const/4 v12, 0x0

    .line 146
    move-object v3, v1

    .line 147
    move-object v8, p0

    .line 148
    invoke-direct/range {v3 .. v14}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V

    .line 151
    goto :goto_a6

    .line 152
    :cond_97
    new-instance v0, Ljava/io/File;

    .line 154
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 160
    move-result p0

    .line 161
    if-eqz p0, :cond_a6

    .line 163
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getPrivateFile(Ljava/io/File;)Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 166
    move-result-object v1
    :try_end_a6
    .catchall {:try_start_2f .. :try_end_a6} :catchall_aa

    .line 167
    :cond_a6
    :goto_a6
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 170
    return-object v1

    .line 171
    :catchall_aa
    move-exception p0

    .line 172
    move-object v1, v2

    .line 173
    goto :goto_b4

    .line 174
    :catchall_ad
    move-exception p0

    .line 175
    move-object v1, v2

    .line 176
    goto :goto_b1

    .line 177
    :catchall_b0
    move-exception p0

    .line 178
    :goto_b1
    :try_start_b1
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    .line 179
    :try_start_b2
    throw p0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b3

    .line 180
    :catchall_b3
    move-exception p0

    .line 181
    :goto_b4
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 184
    throw p0
.end method

.method public static getFromFilePath(Ljava/lang/String;)Lcom/android/fileexplorer/encryption/PrivateFile;
    .registers 16

    .line 1
    sget-object v0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-nez v0, :cond_f

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->init(Landroid/content/Context;)V

    .line 16
    :cond_f
    sget-object v0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez v0, :cond_15

    .line 21
    return-object v1

    .line 22
    :cond_15
    const-string v5, "file_path =?"

    .line 24
    const/4 v0, 0x1

    .line 25
    new-array v6, v0, [Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    .line 28
    aput-object p0, v6, v0

    .line 30
    const-class v0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;

    .line 32
    monitor-enter v0

    .line 33
    :try_start_20
    sget-object v2, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    const-string v3, "private_folder"

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x0

    .line 41
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 44
    move-result-object v2

    .line 45
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_115

    .line 46
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 49
    move-result v0

    .line 50
    if-lez v0, :cond_96

    .line 52
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_96

    .line 58
    const-string v0, "source_path"

    .line 60
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 63
    move-result v0

    .line 64
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 67
    move-result-object v4

    .line 68
    const-string v0, "thumb_path"

    .line 70
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 73
    move-result v0

    .line 74
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    const-string v1, "display_path"

    .line 80
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 83
    move-result v1

    .line 84
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 87
    move-result-object v8

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_61

    .line 94
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    :cond_61
    move-object v6, v0

    .line 99
    const-string v0, "header_path"

    .line 101
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 104
    move-result v0

    .line 105
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_76

    .line 115
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateHeaderBakPath(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    :cond_76
    move-object v7, v0

    .line 120
    const-string v0, "file_size"

    .line 122
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 125
    move-result v0

    .line 126
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 129
    move-result-wide v9

    .line 130
    const-string v0, "added_date"

    .line 132
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 135
    move-result v0

    .line 136
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 139
    move-result-wide v13

    .line 140
    new-instance v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 142
    const/4 v11, 0x0

    .line 143
    const/4 v12, 0x0

    .line 144
    move-object v3, v1

    .line 145
    move-object v5, p0

    .line 146
    invoke-direct/range {v3 .. v14}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V

    .line 149
    goto/16 :goto_111

    .line 151
    :cond_96
    new-instance v0, Ljava/io/File;

    .line 153
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 159
    move-result p0

    .line 160
    if-eqz p0, :cond_111

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 165
    move-result p0

    .line 166
    if-eqz p0, :cond_ca

    .line 168
    sget-object p0, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    .line 170
    invoke-virtual {v0, p0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 173
    move-result-object p0

    .line 174
    array-length v12, p0

    .line 175
    new-instance v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 177
    const-string v4, ""

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 182
    move-result-object v5

    .line 183
    const-string v6, ""

    .line 185
    const-string v7, ""

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 190
    move-result-object v8

    .line 191
    const-wide/16 v9, 0x0

    .line 193
    const/4 v11, 0x1

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 197
    move-result-wide v13

    .line 198
    move-object v3, v1

    .line 199
    invoke-direct/range {v3 .. v14}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V

    .line 202
    goto :goto_111

    .line 203
    :cond_ca
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 206
    move-result-object p0

    .line 207
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    move-result-object v6

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 214
    move-result-object p0

    .line 215
    invoke-static {p0}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateHeaderBakPath(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    move-result-object v7

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 222
    move-result-object p0

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 226
    move-result-object v3

    .line 227
    invoke-static {v3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    move-result-object v3

    .line 231
    invoke-static {p0, v3}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    move-result-object v8

    .line 235
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 238
    move-result p0

    .line 239
    if-eqz p0, :cond_fb

    .line 241
    sget-object p0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->TAG:Ljava/lang/String;

    .line 243
    const-string v0, "path error"

    .line 245
    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 251
    return-object v1

    .line 252
    :cond_fb
    new-instance v1, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 254
    const-string v4, ""

    .line 256
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 259
    move-result-object v5

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 263
    move-result-wide v9

    .line 264
    const/4 v11, 0x0

    .line 265
    const/4 v12, 0x0

    .line 266
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 269
    move-result-wide v13

    .line 270
    move-object v3, v1

    .line 271
    invoke-direct/range {v3 .. v14}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V

    .line 274
    :cond_111
    :goto_111
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 277
    return-object v1

    .line 278
    :catchall_115
    move-exception p0

    .line 279
    :try_start_116
    monitor-exit v0
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_115

    .line 280
    throw p0
.end method

.method public static getOldGlobalPrivateFileList(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-eqz p0, :cond_28

    .line 8
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_e

    .line 14
    goto :goto_28

    .line 15
    :cond_e
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 19
    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_28

    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/io/File;

    .line 31
    invoke-static {v1}, Lcom/android/fileexplorer/encryption/GlobalEncryptUtil;->getPrivateFile(Ljava/io/File;)Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_12

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    goto :goto_12

    .line 41
    :cond_28
    :goto_28
    return-object v0
.end method

.method private static getParsedEncryptedNameList(Ljava/lang/String;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-nez v0, :cond_b

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->init(Landroid/content/Context;)V

    .line 12
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    sget-object v1, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    if-eqz v1, :cond_b3

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_b3

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x3

    .line 32
    if-ge v1, v2, :cond_23

    .line 34
    goto/16 :goto_b3

    .line 36
    :cond_23
    const-string v1, "file_path IN "

    .line 38
    invoke-static {v1, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v5

    .line 42
    const-class p0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;

    .line 44
    monitor-enter p0

    .line 45
    :try_start_2c
    sget-object v2, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 47
    const-string v3, "private_folder"

    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v9, 0x0

    .line 54
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 57
    move-result-object v1

    .line 58
    if-nez v1, :cond_3d

    .line 60
    monitor-exit p0

    .line 61
    return-object v0

    .line 62
    :cond_3d
    :goto_3d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_ab

    .line 68
    const-string v2, "source_path"

    .line 70
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 73
    move-result v2

    .line 74
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 77
    move-result-object v4

    .line 78
    const-string v2, "file_path"

    .line 80
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 83
    move-result v2

    .line 84
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 87
    move-result-object v5

    .line 88
    const-string v2, "thumb_path"

    .line 90
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 93
    move-result v2

    .line 94
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 98
    const-string v3, "display_path"

    .line 100
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 103
    move-result v3

    .line 104
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 107
    move-result-object v8

    .line 108
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_75

    .line 114
    invoke-static {v5}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 118
    :cond_75
    move-object v6, v2

    .line 119
    const-string v2, "header_path"

    .line 121
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 124
    move-result v2

    .line 125
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 128
    move-result-object v2

    .line 129
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_8a

    .line 135
    invoke-static {v5}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateHeaderBakPath(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    move-result-object v2

    .line 139
    :cond_8a
    move-object v7, v2

    .line 140
    const-string v2, "file_size"

    .line 142
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 145
    move-result v2

    .line 146
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 149
    move-result-wide v9

    .line 150
    const-string v2, "added_date"

    .line 152
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 155
    move-result v2

    .line 156
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 159
    move-result-wide v13

    .line 160
    new-instance v2, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 162
    const/4 v11, 0x0

    .line 163
    const/4 v12, 0x0

    .line 164
    move-object v3, v2

    .line 165
    invoke-direct/range {v3 .. v14}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V

    .line 168
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    goto :goto_3d

    .line 172
    :cond_ab
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 175
    monitor-exit p0

    .line 176
    return-object v0

    .line 177
    :catchall_b0
    move-exception v0

    .line 178
    monitor-exit p0
    :try_end_b2
    .catchall {:try_start_2c .. :try_end_b2} :catchall_b0

    .line 179
    throw v0

    .line 180
    :cond_b3
    :goto_b3
    return-object v0
.end method

.method private static getPrivateFile(Ljava/io/File;)Lcom/android/fileexplorer/encryption/PrivateFile;
    .registers 14

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_29

    .line 7
    sget-object v0, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    .line 9
    invoke-virtual {p0, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    array-length v10, v0

    .line 14
    new-instance v0, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 16
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 23
    move-result-object v6

    .line 24
    const-wide/16 v7, 0x0

    .line 26
    const/4 v9, 0x1

    .line 27
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 30
    move-result-wide v11

    .line 31
    const-string v2, ""

    .line 33
    const-string v4, ""

    .line 35
    const-string v5, ""

    .line 37
    move-object v1, v0

    .line 38
    invoke-direct/range {v1 .. v12}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V

    .line 41
    return-object v0

    .line 42
    :cond_29
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateHeaderBakPath(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v5

    .line 58
    invoke-static {v5}, La/a;->A(Ljava/lang/String;)Z

    .line 61
    move-result v0

    .line 62
    const/4 v1, 0x0

    .line 63
    if-nez v0, :cond_41

    .line 65
    return-object v1

    .line 66
    :cond_41
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    invoke-static {v2}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v6

    .line 82
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_5f

    .line 88
    sget-object p0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->TAG:Ljava/lang/String;

    .line 90
    const-string v0, "path error"

    .line 92
    invoke-static {p0, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-object v1

    .line 96
    :cond_5f
    new-instance v0, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 98
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 105
    move-result-wide v7

    .line 106
    const/4 v9, 0x0

    .line 107
    const/4 v10, 0x0

    .line 108
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 111
    move-result-wide v11

    .line 112
    const-string v2, ""

    .line 114
    move-object v1, v0

    .line 115
    invoke-direct/range {v1 .. v12}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V

    .line 118
    return-object v0
.end method

.method public static getPrivateFileList(Ljava/util/List;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_123

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_123

    .line 3
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1b
    move v5, v4

    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, ")"

    if-eqz v6, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_36

    const-string v8, ","

    .line 6
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    add-int/2addr v5, v9

    .line 7
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v8, "\'"

    const-string v9, "\'\'"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xc8

    if-le v5, v6, :cond_1c

    .line 9
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getParsedEncryptedNameList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    .line 12
    :cond_64
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getParsedEncryptedNameList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_7d

    return-object v0

    .line 15
    :cond_7d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_81
    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 16
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 18
    invoke-interface {p0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_81

    .line 19
    :cond_a0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a4
    :goto_a4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_123

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 20
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_db

    .line 21
    sget-object v2, Lcom/android/fileexplorer/encryption/EncryptUtil;->privateFileFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a4

    .line 22
    array-length v12, v2

    .line 23
    new-instance v2, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    const-string v4, ""

    const-string v6, ""

    const-string v7, ""

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V

    goto :goto_11f

    .line 24
    :cond_db
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateThumbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/fileexplorer/encryption/DirOperationUtil;->getPrivateHeaderBakPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    .line 27
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/encryption/EncryptUtil;->getRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 29
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_111

    .line 30
    sget-object v1, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->TAG:Ljava/lang/String;

    const-string v2, "path error"

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a4

    .line 31
    :cond_111
    new-instance v2, Lcom/android/fileexplorer/encryption/PrivateFile;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v4, ""

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Lcom/android/fileexplorer/encryption/PrivateFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZIJ)V

    .line 32
    :goto_11f
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    :cond_123
    :goto_123
    return-object v0
.end method

.method public static getPrivateFileList([Ljava/io/File;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;"
        }
    .end annotation

    .line 33
    sget-boolean v0, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getOldGlobalPrivateFileList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_1f

    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getPrivateFileList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_1f
    return-object p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .registers 3

    .line 1
    const-class v0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    if-nez v1, :cond_12

    .line 8
    new-instance v1, Lcom/android/fileexplorer/encryption/PrivateDBHelper$DatabaseHelper;

    .line 10
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper$DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 16
    move-result-object p0

    .line 17
    sput-object p0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    :cond_12
    sget-object p0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->TAG:Ljava/lang/String;

    .line 21
    const-string v1, "DB initialized"

    .line 23
    invoke-static {p0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_1c
    .catchall {:try_start_3 .. :try_end_19} :catchall_1a

    .line 26
    goto :goto_23

    .line 27
    :catchall_1a
    move-exception p0

    .line 28
    goto :goto_25

    .line 29
    :catch_1c
    :try_start_1c
    sget-object p0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->TAG:Ljava/lang/String;

    .line 31
    const-string v1, "Cannot open database"

    .line 33
    invoke-static {p0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_1a

    .line 36
    :goto_23
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_25
    monitor-exit v0

    .line 39
    throw p0
.end method

.method public static declared-synchronized insertList(Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 6
    if-nez v1, :cond_12

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->init(Landroid/content/Context;)V

    .line 19
    :cond_12
    sget-object v1, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_b1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v1, :cond_19

    .line 24
    monitor-exit v0

    .line 25
    return v2

    .line 26
    :cond_19
    :try_start_19
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 29
    move-result v1
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_b1

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_22

    .line 33
    monitor-exit v0

    .line 34
    return v3

    .line 35
    :cond_22
    :try_start_22
    const-string v1, "insert into private_folder(source_path, file_path, display_path, thumb_path, header_path, file_size, added_date) values(?, ?, ?, ?, ?, ?, ?)"

    .line 37
    sget-object v4, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    invoke-virtual {v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 42
    move-result-object v1

    .line 43
    sget-object v4, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 48
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object p0

    .line 52
    :goto_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_a5

    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 64
    invoke-virtual {v4}, Lcom/android/fileexplorer/encryption/PrivateFile;->isDir()Z

    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_46

    .line 70
    goto :goto_33

    .line 71
    :cond_46
    invoke-virtual {v4}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSourcePath()Ljava/lang/String;

    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v1, v3, v5}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 78
    const/4 v5, 0x2

    .line 79
    invoke-virtual {v4}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 86
    const/4 v5, 0x3

    .line 87
    invoke-virtual {v4}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDisplayPath()Ljava/lang/String;

    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 94
    const/4 v5, 0x4

    .line 95
    invoke-virtual {v4}, Lcom/android/fileexplorer/encryption/PrivateFile;->getThumbPath()Ljava/lang/String;

    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 102
    const/4 v5, 0x5

    .line 103
    sget-boolean v6, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 105
    if-eqz v6, :cond_6d

    .line 107
    const-string v6, ""

    .line 109
    goto :goto_71

    .line 110
    :cond_6d
    invoke-virtual {v4}, Lcom/android/fileexplorer/encryption/PrivateFile;->getHeaderPath()Ljava/lang/String;

    .line 113
    move-result-object v6

    .line 114
    :goto_71
    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 117
    const/4 v5, 0x6

    .line 118
    invoke-virtual {v4}, Lcom/android/fileexplorer/encryption/PrivateFile;->getSize()J

    .line 121
    move-result-wide v6

    .line 122
    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 125
    invoke-virtual {v4}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDate()J

    .line 128
    move-result-wide v5

    .line 129
    const-wide/16 v7, 0x0

    .line 131
    cmp-long v5, v5, v7

    .line 133
    const/4 v6, 0x7

    .line 134
    if-nez v5, :cond_8f

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 139
    move-result-wide v4

    .line 140
    invoke-virtual {v1, v6, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 143
    goto :goto_96

    .line 144
    :cond_8f
    invoke-virtual {v4}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDate()J

    .line 147
    move-result-wide v4

    .line 148
    invoke-virtual {v1, v6, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V
    :try_end_96
    .catchall {:try_start_22 .. :try_end_96} :catchall_b1

    .line 151
    :goto_96
    :try_start_96
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_99
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_96 .. :try_end_99} :catch_9f
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_96 .. :try_end_99} :catch_9a
    .catchall {:try_start_96 .. :try_end_99} :catchall_b1

    .line 154
    goto :goto_33

    .line 155
    :catch_9a
    move-exception v4

    .line 156
    :try_start_9b
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    goto :goto_33

    .line 160
    :catch_9f
    move-exception p0

    .line 161
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a3
    .catchall {:try_start_9b .. :try_end_a3} :catchall_b1

    .line 164
    monitor-exit v0

    .line 165
    return v2

    .line 166
    :cond_a5
    :try_start_a5
    sget-object p0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 168
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 171
    sget-object p0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 173
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_af
    .catchall {:try_start_a5 .. :try_end_af} :catchall_b1

    .line 176
    monitor-exit v0

    .line 177
    return v3

    .line 178
    :catchall_b1
    move-exception p0

    .line 179
    monitor-exit v0

    .line 180
    throw p0
.end method

.method public static isDisplayPathExist(Ljava/lang/String;)Z
    .registers 11

    .line 1
    sget-object v0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    if-nez v0, :cond_f

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->init(Landroid/content/Context;)V

    .line 16
    :cond_f
    sget-object v0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez v0, :cond_15

    .line 21
    return v1

    .line 22
    :cond_15
    const-string v5, "display_path =?"

    .line 24
    const/4 v0, 0x1

    .line 25
    new-array v6, v0, [Ljava/lang/String;

    .line 27
    aput-object p0, v6, v1

    .line 29
    const-class p0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;

    .line 31
    monitor-enter p0

    .line 32
    :try_start_1f
    sget-object v2, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    const-string v3, "private_folder"

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 43
    move-result-object v2

    .line 44
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_37

    .line 45
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 48
    move-result p0

    .line 49
    if-lez p0, :cond_33

    .line 51
    move v1, v0

    .line 52
    :cond_33
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 55
    return v1

    .line 56
    :catchall_37
    move-exception v0

    .line 57
    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    .line 58
    throw v0
.end method

.method public static updateOldVersionPrivateFiles(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 16

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_f

    .line 8
    sget-object p0, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->TAG:Ljava/lang/String;

    .line 10
    const-string p1, "updateOldVersionPrivateFiles dir is null"

    .line 12
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return v1

    .line 16
    :cond_f
    new-instance v0, Ljava/io/File;

    .line 18
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-static {v0}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getAllPrivateFileInFolder(Ljava/io/File;)Ljava/util/List;

    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 28
    move-result v0

    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v0, :cond_20

    .line 32
    return v2

    .line 33
    :cond_20
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    move-result-object v0

    .line 37
    const-string v3, "android_id"

    .line 39
    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-static {}, Lcom/android/fileexplorer/analytics/DeviceIdGenerator;->getOldDeviceId()Ljava/lang/String;

    .line 46
    move-result-object v10

    .line 47
    sget-boolean v3, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 49
    if-eqz v3, :cond_37

    .line 51
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getOldGlobalPrivateFileList(Ljava/util/List;)Ljava/util/List;

    .line 54
    move-result-object v3

    .line 55
    goto :goto_3b

    .line 56
    :cond_37
    invoke-static {p1}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->getPrivateFileList(Ljava/util/List;)Ljava/util/List;

    .line 59
    move-result-object v3

    .line 60
    :goto_3b
    new-instance v11, Ljava/util/ArrayList;

    .line 62
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v12, Ljava/util/ArrayList;

    .line 67
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object v3

    .line 74
    :cond_49
    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_a9

    .line 80
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object v4

    .line 84
    move-object v13, v4

    .line 85
    check-cast v13, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 87
    sget-boolean v4, Lcom/android/fileexplorer/model/Config;->IS_GLOBAL_PHONE:Z

    .line 89
    if-eqz v4, :cond_67

    .line 91
    invoke-virtual {v13}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 94
    move-result-object v4

    .line 95
    const-string v5, "FE_P_"

    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_67

    .line 103
    goto :goto_49

    .line 104
    :cond_67
    invoke-virtual {v13}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 107
    move-result-object v4

    .line 108
    const-string v5, "_encrypted_new"

    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_77

    .line 116
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    goto :goto_49

    .line 120
    :cond_77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    move-result v4

    .line 124
    if-nez v4, :cond_49

    .line 126
    invoke-virtual {v13}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 129
    move-result-object v4

    .line 130
    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    move-result-object v8

    .line 134
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v13}, Lcom/android/fileexplorer/encryption/PrivateFile;->getFilePath()Ljava/lang/String;

    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v4, v5, v8}, Lcom/android/fileexplorer/model/StorageHelper;->destHasEnoughSpace(Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_49

    .line 148
    invoke-static {p0, v13}, Lcom/android/fileexplorer/encryption/PrivateFileOperationUtil;->restoreFile(Landroid/content/Context;Lcom/android/fileexplorer/encryption/PrivateFile;)Ljava/util/List;

    .line 151
    const/4 v5, 0x2

    .line 152
    const/4 v9, 0x0

    .line 153
    move-object v4, p0

    .line 154
    move-object v6, v13

    .line 155
    move-object v7, v0

    .line 156
    invoke-static/range {v4 .. v9}, Lcom/android/fileexplorer/encryption/EncryptUtil;->decryptFile(Landroid/app/Activity;ILcom/android/fileexplorer/encryption/PrivateFile;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 159
    move-result-object v4

    .line 160
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_49

    .line 166
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    goto :goto_49

    .line 170
    :cond_a9
    invoke-static {v11}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->deleteList(Ljava/util/List;)V

    .line 173
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 176
    move-result-object v0

    .line 177
    :goto_b0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_df

    .line 183
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    move-result-object v3

    .line 187
    check-cast v3, Lcom/android/fileexplorer/encryption/PrivateFile;

    .line 189
    invoke-virtual {v3}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDecryptedFilePath()Ljava/lang/String;

    .line 192
    move-result-object v4

    .line 193
    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    move-result-object v7

    .line 197
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v3}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDecryptedFilePath()Ljava/lang/String;

    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {v4, v5, v7}, Lcom/android/fileexplorer/model/StorageHelper;->destHasEnoughSpace(Ljava/lang/String;Ljava/lang/String;)Z

    .line 208
    move-result v4

    .line 209
    if-nez v4, :cond_d3

    .line 211
    goto :goto_df

    .line 212
    :cond_d3
    const/4 v4, 0x2

    .line 213
    invoke-virtual {v3}, Lcom/android/fileexplorer/encryption/PrivateFile;->getDecryptedFilePath()Ljava/lang/String;

    .line 216
    move-result-object v5

    .line 217
    move-object v3, p0

    .line 218
    move-object v6, v10

    .line 219
    move-object v8, v12

    .line 220
    invoke-static/range {v3 .. v8}, Lcom/android/fileexplorer/encryption/EncryptUtil;->encryptFile(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 223
    goto :goto_b0

    .line 224
    :cond_df
    :goto_df
    invoke-static {v12}, Lcom/android/fileexplorer/encryption/PrivateDBHelper;->insertList(Ljava/util/List;)Z

    .line 227
    move-result p0

    .line 228
    if-eqz p0, :cond_f0

    .line 230
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 233
    move-result p0

    .line 234
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 237
    move-result p1

    .line 238
    if-ne p0, p1, :cond_f0

    .line 240
    move v1, v2

    .line 241
    :cond_f0
    return v1
.end method
