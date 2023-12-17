.class public Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;
.super Ljava/lang/Object;
.source "MTPFileOperationUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MTPFileOperationUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyDirectoryToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/mtp/DocumentInfo;Landroid/net/Uri;Z)I
    .registers 13

    .line 1
    const-string v0, " due to an exception."

    .line 3
    sget-object v1, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 5
    const-string v2, "Copying directory "

    .line 7
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v1, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->authority:Ljava/lang/String;

    .line 25
    iget-object v2, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    .line 27
    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildChildDocumentsUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    move-result-object v4

    .line 31
    const/4 v1, 0x4

    .line 32
    const/4 v2, 0x0

    .line 33
    :try_start_20
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    move-result-object v3

    .line 45
    iget-object v5, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 47
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 50
    move-result-object v5

    .line 51
    invoke-static {v3, v5}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 54
    move-result-object v3

    .line 55
    const/4 v5, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v8, 0x0

    .line 59
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 62
    move-result-object v2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3e} :catch_ec
    .catchall {:try_start_20 .. :try_end_3e} :catchall_ea

    .line 63
    const/4 v3, 0x1

    .line 64
    move v5, v1

    .line 65
    move v4, v3

    .line 66
    :cond_41
    if-eqz v2, :cond_dd

    .line 68
    :try_start_43
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_dd

    .line 74
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 77
    move-result v5
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_4d} :catch_10c
    .catchall {:try_start_43 .. :try_end_4d} :catchall_ea

    .line 78
    if-eqz v5, :cond_54

    .line 80
    const/4 p0, 0x5

    .line 81
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 84
    return p0

    .line 85
    :cond_54
    :try_start_54
    iget-object v5, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->authority:Ljava/lang/String;

    .line 87
    invoke-static {v2, v5}, Lcom/android/fileexplorer/mtp/DocumentInfo;->createFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 90
    move-result-object v5

    .line 91
    const/4 v6, 0x2

    .line 92
    if-eqz v5, :cond_9d

    .line 94
    invoke-static {p2}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getFileFromUri(Landroid/net/Uri;)Ljava/io/File;

    .line 97
    move-result-object v7

    .line 98
    if-eqz v7, :cond_81

    .line 100
    new-instance v6, Ljava/io/File;

    .line 102
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 105
    move-result-object v7

    .line 106
    iget-object v8, v5, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    .line 108
    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {v6}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getUriByFileProvider(Ljava/io/File;)Landroid/net/Uri;

    .line 114
    move-result-object v6

    .line 115
    invoke-static {p0, v5, v6, p3}, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->copyFileAndDirectoryToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/mtp/DocumentInfo;Landroid/net/Uri;Z)I

    .line 118
    move-result v5
    :try_end_76
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_76} :catch_b9
    .catchall {:try_start_54 .. :try_end_76} :catchall_ea

    .line 119
    if-eqz v5, :cond_79

    .line 121
    const/4 v4, 0x0

    .line 122
    :cond_79
    if-eqz v5, :cond_41

    .line 124
    if-eq v5, v3, :cond_41

    .line 126
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 129
    return v5

    .line 130
    :cond_81
    :try_start_81
    sget-object p0, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 132
    new-instance p3, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const-string v3, "destination path is not found for "

    .line 139
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v3, v5, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 144
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p3

    .line 151
    invoke-static {p0, p3}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/RuntimeException; {:try_start_81 .. :try_end_99} :catch_b9
    .catchall {:try_start_81 .. :try_end_99} :catchall_ea

    .line 154
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 157
    return v6

    .line 158
    :cond_9d
    :try_start_9d
    sget-object p0, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 160
    new-instance p3, Ljava/lang/StringBuilder;

    .line 162
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    const-string v3, "child path is not found for "

    .line 167
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v3, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 172
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object p3

    .line 179
    invoke-static {p0, p3}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/RuntimeException; {:try_start_9d .. :try_end_b5} :catch_b9
    .catchall {:try_start_9d .. :try_end_b5} :catchall_ea

    .line 182
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 185
    return v6

    .line 186
    :catch_b9
    move-exception p0

    .line 187
    :try_start_ba
    sget-object p3, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    const-string v4, "Failed to recursively process a file "

    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object v4, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 201
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object v0

    .line 215
    invoke-static {p3, v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d9
    .catch Ljava/lang/RuntimeException; {:try_start_ba .. :try_end_d9} :catch_10c
    .catchall {:try_start_ba .. :try_end_d9} :catchall_ea

    .line 218
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 221
    return v1

    .line 222
    :cond_dd
    if-eqz v4, :cond_e6

    .line 224
    if-eqz p3, :cond_e6

    .line 226
    :try_start_e1
    iget-object p0, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 228
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->deleteDocument(Landroid/net/Uri;)Z
    :try_end_e6
    .catch Ljava/lang/RuntimeException; {:try_start_e1 .. :try_end_e6} :catch_10c
    .catchall {:try_start_e1 .. :try_end_e6} :catchall_ea

    .line 231
    :cond_e6
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 234
    return v5

    .line 235
    :catchall_ea
    move-exception p0

    .line 236
    goto :goto_13a

    .line 237
    :catch_ec
    move-exception p0

    .line 238
    :try_start_ed
    sget-object p3, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    .line 242
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    const-string v4, "Failed to query children of "

    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v4, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 252
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object v0

    .line 262
    invoke-static {p3, v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_108
    .catch Ljava/lang/RuntimeException; {:try_start_ed .. :try_end_108} :catch_10c
    .catchall {:try_start_ed .. :try_end_108} :catchall_ea

    .line 265
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 268
    return v1

    .line 269
    :catch_10c
    move-exception p0

    .line 270
    :try_start_10d
    sget-object p3, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    .line 274
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    const-string v3, "Failed to copy a file "

    .line 279
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-object p1, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 284
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string p1, " to "

    .line 293
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    const-string p1, ". "

    .line 301
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    move-result-object p1

    .line 308
    invoke-static {p3, p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_136
    .catchall {:try_start_10d .. :try_end_136} :catchall_ea

    .line 311
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 314
    return v1

    .line 315
    :goto_13a
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 318
    throw p0
.end method

.method private static copyDirectoryToMtp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/mtp/DocumentInfo;Landroid/net/Uri;Z)I
    .registers 13

    .line 1
    const-string v0, " due to an exception."

    .line 3
    sget-object v1, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 5
    const-string v2, "Copying directory "

    .line 7
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v1, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->authority:Ljava/lang/String;

    .line 25
    iget-object v2, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->documentId:Ljava/lang/String;

    .line 27
    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildChildDocumentsUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    move-result-object v4

    .line 31
    const/4 v1, 0x4

    .line 32
    const/4 v2, 0x0

    .line 33
    :try_start_20
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    move-result-object v3

    .line 45
    iget-object v5, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 47
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 50
    move-result-object v5

    .line 51
    invoke-static {v3, v5}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 54
    move-result-object v3

    .line 55
    const/4 v5, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v8, 0x0

    .line 59
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 62
    move-result-object v2
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3e} :catch_bd
    .catchall {:try_start_20 .. :try_end_3e} :catchall_bb

    .line 63
    const/4 v3, 0x1

    .line 64
    move v5, v1

    .line 65
    move v4, v3

    .line 66
    :cond_41
    if-eqz v2, :cond_ab

    .line 68
    :try_start_43
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_ab

    .line 74
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 77
    move-result v6
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_4d} :catch_a9
    .catchall {:try_start_43 .. :try_end_4d} :catchall_bb

    .line 78
    if-eqz v6, :cond_51

    .line 80
    const/4 p0, 0x5

    .line 81
    goto :goto_81

    .line 82
    :cond_51
    :try_start_51
    iget-object v6, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->authority:Ljava/lang/String;

    .line 84
    invoke-static {v2, v6}, Lcom/android/fileexplorer/mtp/DocumentInfo;->createFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 87
    move-result-object v6

    .line 88
    if-eqz v6, :cond_68

    .line 90
    invoke-static {p0, v6, p2, p3}, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->copyFileAndDirectoryToMtp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/mtp/DocumentInfo;Landroid/net/Uri;Z)I

    .line 93
    move-result v5
    :try_end_5d
    .catch Ljava/lang/RuntimeException; {:try_start_51 .. :try_end_5d} :catch_85
    .catchall {:try_start_51 .. :try_end_5d} :catchall_bb

    .line 94
    if-eqz v5, :cond_60

    .line 96
    const/4 v4, 0x0

    .line 97
    :cond_60
    if-eqz v5, :cond_41

    .line 99
    if-eq v5, v3, :cond_41

    .line 101
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 104
    return v5

    .line 105
    :cond_68
    :try_start_68
    sget-object p0, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 107
    new-instance p3, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const-string v3, "child path is not found for "

    .line 114
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v3, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 119
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p3

    .line 126
    invoke-static {p0, p3}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_80} :catch_85
    .catchall {:try_start_68 .. :try_end_80} :catchall_bb

    .line 129
    const/4 p0, 0x2

    .line 130
    :goto_81
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 133
    return p0

    .line 134
    :catch_85
    move-exception p0

    .line 135
    :try_start_86
    sget-object p3, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    const-string v4, "Failed to recursively process a file "

    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v4, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 149
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    invoke-static {p3, v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a5
    .catch Ljava/lang/RuntimeException; {:try_start_86 .. :try_end_a5} :catch_a9
    .catchall {:try_start_86 .. :try_end_a5} :catchall_bb

    .line 166
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 169
    return v1

    .line 170
    :catch_a9
    move-exception p0

    .line 171
    goto :goto_b5

    .line 172
    :cond_ab
    if-eqz v4, :cond_b7

    .line 174
    if-eqz p3, :cond_b7

    .line 176
    :try_start_af
    iget-object p0, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 178
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->deleteDocument(Landroid/net/Uri;)Z
    :try_end_b4
    .catch Ljava/lang/RuntimeException; {:try_start_af .. :try_end_b4} :catch_a9
    .catchall {:try_start_af .. :try_end_b4} :catchall_bb

    .line 181
    goto :goto_b7

    .line 182
    :goto_b5
    move v1, v5

    .line 183
    goto :goto_de

    .line 184
    :cond_b7
    :goto_b7
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 187
    return v5

    .line 188
    :catchall_bb
    move-exception p0

    .line 189
    goto :goto_10b

    .line 190
    :catch_bd
    move-exception p0

    .line 191
    :try_start_be
    sget-object p3, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    const-string v4, "Failed to query children of "

    .line 200
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v4, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object v0

    .line 215
    invoke-static {p3, v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d9
    .catch Ljava/lang/RuntimeException; {:try_start_be .. :try_end_d9} :catch_dd
    .catchall {:try_start_be .. :try_end_d9} :catchall_bb

    .line 218
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 221
    return v1

    .line 222
    :catch_dd
    move-exception p0

    .line 223
    :goto_de
    :try_start_de
    sget-object p3, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    const-string v3, "Failed to copy a file "

    .line 232
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object p1, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 237
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string p1, " to "

    .line 246
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    const-string p1, ". "

    .line 254
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object p1

    .line 261
    invoke-static {p3, p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_107
    .catchall {:try_start_de .. :try_end_107} :catchall_bb

    .line 264
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 267
    return v1

    .line 268
    :goto_10b
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 271
    throw p0
.end method

.method public static copyFileAndDirectoryToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/mtp/DocumentInfo;Landroid/net/Uri;Z)I
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    sget-object v0, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "Doing byte copy of document: "

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, " to "

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 43
    const-string v3, "*/*"

    .line 45
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_39

    .line 51
    array-length v2, v1

    .line 52
    if-lez v2, :cond_39

    .line 54
    const/4 v2, 0x0

    .line 55
    aget-object v1, v1, v2

    .line 57
    goto :goto_3b

    .line 58
    :cond_39
    iget-object v1, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->mimeType:Ljava/lang/String;

    .line 60
    :goto_3b
    const-string v2, "src mime type:"

    .line 62
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    move-result-object v2

    .line 66
    iget-object v3, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->mimeType:Ljava/lang/String;

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v3, " dst mime type:"

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->mimeType:Ljava/lang/String;

    .line 88
    const-string v2, "vnd.android.document/directory"

    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_64

    .line 96
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->copyDirectoryToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/mtp/DocumentInfo;Landroid/net/Uri;Z)I

    .line 99
    move-result p0

    .line 100
    return p0

    .line 101
    :cond_64
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 104
    move-result-object p0

    .line 105
    iget-object p1, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 107
    invoke-static {p0, p1, p2, v1, p3}, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->copySingleFileToLocal(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)I

    .line 110
    move-result p0

    .line 111
    return p0
.end method

.method public static copyFileAndDirectoryToMtp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/mtp/DocumentInfo;Landroid/net/Uri;Z)I
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1
    const-string v0, " in directory "

    .line 3
    const-string v1, "Couldn\'t create destination document "

    .line 5
    sget-object v2, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 7
    const-string v3, "Doing byte copy of document: "

    .line 9
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object v3

    .line 13
    iget-object v4, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    const-string v4, " to "

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    invoke-static {v2, v3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    move-result-object v3

    .line 45
    iget-object v4, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 47
    const-string v5, "*/*"

    .line 49
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_3d

    .line 55
    array-length v4, v3

    .line 56
    if-lez v4, :cond_3d

    .line 58
    const/4 v4, 0x0

    .line 59
    aget-object v3, v3, v4

    .line 61
    goto :goto_3f

    .line 62
    :cond_3d
    iget-object v3, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->mimeType:Ljava/lang/String;

    .line 64
    :goto_3f
    const-string v4, "src mime type:"

    .line 66
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    move-result-object v4

    .line 70
    iget-object v5, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->mimeType:Ljava/lang/String;

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v5, " dst mime type:"

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v4

    .line 87
    invoke-static {v2, v4}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v4, 0x4

    .line 91
    :try_start_5a
    iget-object v5, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    .line 93
    invoke-static {p2, v3, v5}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->createDocument(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 96
    move-result-object v5
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_60} :catch_93

    .line 97
    if-nez v5, :cond_79

    .line 99
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    move-result-object p0

    .line 103
    iget-object p1, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return v4

    .line 122
    :cond_79
    iget-object p2, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->mimeType:Ljava/lang/String;

    .line 124
    const-string v0, "vnd.android.document/directory"

    .line 126
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_88

    .line 132
    invoke-static {p0, p1, v5, p3}, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->copyDirectoryToMtp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/mtp/DocumentInfo;Landroid/net/Uri;Z)I

    .line 135
    move-result p0

    .line 136
    return p0

    .line 137
    :cond_88
    invoke-interface {p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 140
    move-result-object p0

    .line 141
    iget-object p1, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 143
    invoke-static {p0, p1, v5, v3, p3}, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->copySingleFileToMtp(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)I

    .line 146
    move-result p0

    .line 147
    return p0

    .line 148
    :catch_93
    move-exception p0

    .line 149
    sget-object p3, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 151
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    move-result-object v1

    .line 155
    iget-object p1, p1, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    .line 157
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    const-string p1, " due to an exception."

    .line 168
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object p1

    .line 175
    invoke-static {p3, p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    return v4
.end method

.method public static copySingleFileToLocal(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)I
    .registers 21

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    move-object/from16 v3, p2

    .line 7
    const-string v4, " due to an exception."

    .line 9
    const-string v5, "Cleaning up failed operation leftovers."

    .line 11
    new-instance v6, Landroid/os/CancellationSignal;

    .line 13
    invoke-direct {v6}, Landroid/os/CancellationSignal;-><init>()V

    .line 16
    const/4 v7, 0x4

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x1

    .line 19
    :try_start_12
    sget-object v0, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 21
    new-instance v10, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v11, "copying file "

    .line 28
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    const-string v11, " to "

    .line 36
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v10

    .line 46
    invoke-static {v0, v10}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_1dd

    .line 49
    const/4 v10, 0x0

    .line 50
    :try_start_31
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 57
    move-result-object v11

    .line 58
    invoke-static {v0, v11}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 61
    move-result-object v0

    .line 62
    move-object/from16 v11, p3

    .line 64
    invoke-virtual {v0, v2, v11, v8, v6}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_52

    .line 70
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    .line 73
    move-result-object v11
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_49} :catch_55
    .catchall {:try_start_31 .. :try_end_49} :catchall_1dd

    .line 74
    :try_start_49
    new-instance v12, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;

    .line 76
    invoke-direct {v12, v0}, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;-><init>(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_50
    .catchall {:try_start_49 .. :try_end_4e} :catchall_1d8

    .line 79
    move v10, v9

    .line 80
    goto :goto_71

    .line 81
    :catch_50
    move-exception v0

    .line 82
    goto :goto_57

    .line 83
    :cond_52
    move-object v11, v8

    .line 84
    move-object v12, v11

    .line 85
    goto :goto_71

    .line 86
    :catch_55
    move-exception v0

    .line 87
    move-object v11, v8

    .line 88
    :goto_57
    :try_start_57
    sget-object v12, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 90
    new-instance v13, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    const-string v14, "Failed to open a file as asset for "

    .line 97
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v13

    .line 110
    invoke-static {v12, v13, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_70
    .catchall {:try_start_57 .. :try_end_70} :catchall_1d8

    .line 113
    move-object v12, v8

    .line 114
    :goto_71
    if-nez v10, :cond_ba

    .line 116
    :try_start_73
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 119
    move-result-object v0

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 123
    move-result-object v10

    .line 124
    invoke-static {v0, v10}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 127
    move-result-object v0

    .line 128
    const-string v10, "r"

    .line 130
    invoke-virtual {v0, v2, v10, v6}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 133
    move-result-object v11
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_85} :catch_90
    .catchall {:try_start_73 .. :try_end_85} :catchall_8c

    .line 134
    :try_start_85
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 136
    invoke-direct {v0, v11}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 139
    move-object v12, v0

    .line 140
    goto :goto_ba

    .line 141
    :catchall_8c
    move-exception v0

    .line 142
    :goto_8d
    move-object v4, v8

    .line 143
    goto/16 :goto_1db

    .line 145
    :catch_90
    move-exception v0

    .line 146
    sget-object v1, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    .line 150
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    const-string v10, "Failed to open a file for "

    .line 155
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v2

    .line 168
    invoke-static {v1, v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_aa
    .catchall {:try_start_85 .. :try_end_aa} :catchall_8c

    .line 171
    invoke-static {v1, v5}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_ad
    invoke-virtual {v6}, Landroid/os/CancellationSignal;->cancel()V

    .line 177
    :cond_b0
    invoke-static {v12}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 180
    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 183
    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 186
    return v7

    .line 187
    :cond_ba
    :goto_ba
    if-nez v11, :cond_c2

    .line 189
    sget-object v0, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 191
    invoke-static {v0, v5}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    goto :goto_ad

    .line 195
    :cond_c2
    :try_start_c2
    invoke-static/range {p2 .. p2}, Lcom/android/fileexplorer/provider/FileExplorerFileProvider;->getFileFromUri(Landroid/net/Uri;)Ljava/io/File;

    .line 198
    move-result-object v0

    .line 199
    sget-object v4, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 201
    const-string v10, "trying to create dir and new file"

    .line 203
    invoke-static {v4, v10}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    if-eqz v0, :cond_189

    .line 208
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 211
    move-result v10

    .line 212
    const/4 v13, 0x5

    .line 213
    const/16 v14, 0x4000

    .line 215
    if-eqz v10, :cond_148

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 220
    move-result v10

    .line 221
    if-eqz v10, :cond_148

    .line 223
    new-instance v10, Ljava/lang/StringBuilder;

    .line 225
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 231
    move-result-object v15

    .line 232
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v15, " already exists"

    .line 237
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object v10

    .line 244
    invoke-static {v4, v10}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    instance-of v10, v1, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 249
    if-eqz v10, :cond_148

    .line 251
    move-object v10, v1

    .line 252
    check-cast v10, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 254
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 257
    move-result-object v15

    .line 258
    invoke-static {v10, v15}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    .line 261
    move-result v10

    .line 262
    if-eqz v10, :cond_133

    .line 264
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 267
    new-instance v10, Ljava/io/FileOutputStream;

    .line 269
    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_10f} :catch_1ae
    .catchall {:try_start_c2 .. :try_end_10f} :catchall_8c

    .line 272
    :try_start_10f
    invoke-static {v1, v12, v10, v14}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 275
    move-result v1
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_113} :catch_12e
    .catchall {:try_start_10f .. :try_end_113} :catchall_12a

    .line 276
    :try_start_113
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->checkError()V

    .line 279
    if-ne v1, v13, :cond_11c

    .line 281
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 284
    goto :goto_123

    .line 285
    :cond_11c
    if-nez v1, :cond_123

    .line 287
    if-eqz p4, :cond_123

    .line 289
    invoke-static/range {p1 .. p1}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->deleteDocument(Landroid/net/Uri;)Z
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_123} :catch_128
    .catchall {:try_start_113 .. :try_end_123} :catchall_125

    .line 292
    :cond_123
    :goto_123
    move-object v8, v10

    .line 293
    goto :goto_134

    .line 294
    :catchall_125
    move-exception v0

    .line 295
    move v7, v1

    .line 296
    goto :goto_12b

    .line 297
    :catch_128
    move-exception v0

    .line 298
    goto :goto_130

    .line 299
    :catchall_12a
    move-exception v0

    .line 300
    :goto_12b
    move-object v4, v10

    .line 301
    goto/16 :goto_1db

    .line 303
    :catch_12e
    move-exception v0

    .line 304
    move v1, v7

    .line 305
    :goto_130
    move-object v8, v10

    .line 306
    goto/16 :goto_1b0

    .line 308
    :cond_133
    move v1, v9

    .line 309
    :goto_134
    if-eqz v1, :cond_13e

    .line 311
    if-eq v1, v9, :cond_13e

    .line 313
    invoke-static {v4, v5}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v6}, Landroid/os/CancellationSignal;->cancel()V

    .line 319
    :cond_13e
    invoke-static {v12}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 322
    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 325
    :goto_144
    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 328
    return v1

    .line 329
    :cond_148
    :try_start_148
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 332
    move-result-object v4

    .line 333
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 336
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_152} :catch_152
    .catchall {:try_start_148 .. :try_end_152} :catchall_8c

    .line 339
    :catch_152
    :try_start_152
    new-instance v4, Ljava/io/FileOutputStream;

    .line 341
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_157} :catch_1ae
    .catchall {:try_start_152 .. :try_end_157} :catchall_8c

    .line 344
    :try_start_157
    invoke-static {v1, v12, v4, v14}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 347
    move-result v1
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_15b} :catch_186
    .catchall {:try_start_157 .. :try_end_15b} :catchall_184

    .line 348
    :try_start_15b
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->checkError()V

    .line 351
    if-ne v1, v13, :cond_164

    .line 353
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 356
    goto :goto_16b

    .line 357
    :cond_164
    if-nez v1, :cond_16b

    .line 359
    if-eqz p4, :cond_16b

    .line 361
    invoke-static/range {p1 .. p1}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->deleteDocument(Landroid/net/Uri;)Z
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_16b} :catch_181
    .catchall {:try_start_15b .. :try_end_16b} :catchall_17e

    .line 364
    :cond_16b
    :goto_16b
    if-eqz v1, :cond_177

    .line 366
    if-eq v1, v9, :cond_177

    .line 368
    sget-object v0, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 370
    invoke-static {v0, v5}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v6}, Landroid/os/CancellationSignal;->cancel()V

    .line 376
    :cond_177
    invoke-static {v12}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 379
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 382
    goto :goto_144

    .line 383
    :catchall_17e
    move-exception v0

    .line 384
    move v7, v1

    .line 385
    goto :goto_1db

    .line 386
    :catch_181
    move-exception v0

    .line 387
    move-object v8, v4

    .line 388
    goto :goto_1b0

    .line 389
    :catchall_184
    move-exception v0

    .line 390
    goto :goto_1db

    .line 391
    :catch_186
    move-exception v0

    .line 392
    move-object v8, v4

    .line 393
    goto :goto_1af

    .line 394
    :cond_189
    :try_start_189
    new-instance v0, Ljava/lang/StringBuilder;

    .line 396
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    const-string v1, "File not found for uri:"

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    move-result-object v0

    .line 411
    invoke-static {v4, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_19d} :catch_1ae
    .catchall {:try_start_189 .. :try_end_19d} :catchall_8c

    .line 414
    const/4 v0, 0x2

    .line 415
    invoke-static {v4, v5}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual {v6}, Landroid/os/CancellationSignal;->cancel()V

    .line 421
    invoke-static {v12}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 424
    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 427
    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 430
    return v0

    .line 431
    :catch_1ae
    move-exception v0

    .line 432
    :goto_1af
    move v1, v7

    .line 433
    :goto_1b0
    :try_start_1b0
    sget-object v2, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 435
    new-instance v4, Ljava/lang/StringBuilder;

    .line 437
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    const-string v10, "Failed to open the destination file "

    .line 442
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 448
    const-string v3, " for writing due to an exception."

    .line 450
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    move-result-object v3

    .line 457
    invoke-static {v2, v3, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1cb
    .catchall {:try_start_1b0 .. :try_end_1cb} :catchall_1d4

    .line 460
    if-eqz v1, :cond_b0

    .line 462
    if-eq v1, v9, :cond_b0

    .line 464
    invoke-static {v2, v5}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    goto/16 :goto_ad

    .line 469
    :catchall_1d4
    move-exception v0

    .line 470
    move v7, v1

    .line 471
    goto/16 :goto_8d

    .line 473
    :catchall_1d8
    move-exception v0

    .line 474
    move-object v4, v8

    .line 475
    move-object v12, v4

    .line 476
    :goto_1db
    move-object v8, v11

    .line 477
    goto :goto_1e0

    .line 478
    :catchall_1dd
    move-exception v0

    .line 479
    move-object v4, v8

    .line 480
    move-object v12, v4

    .line 481
    :goto_1e0
    if-eqz v7, :cond_1ec

    .line 483
    if-eq v7, v9, :cond_1ec

    .line 485
    sget-object v1, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 487
    invoke-static {v1, v5}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {v6}, Landroid/os/CancellationSignal;->cancel()V

    .line 493
    :cond_1ec
    invoke-static {v12}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 496
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 499
    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 502
    throw v0
.end method

.method private static copySingleFileToMtp(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)I
    .registers 13

    .line 1
    const-string v0, " due to an exception."

    .line 3
    new-instance v1, Landroid/os/CancellationSignal;

    .line 5
    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_8
    sget-object v3, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v5, "copying file "

    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    const-string v5, " to "

    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v4

    .line 36
    invoke-static {v3, v4}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_125

    .line 39
    const/4 v3, 0x0

    .line 40
    :try_start_27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 47
    move-result-object v5

    .line 48
    invoke-static {v4, v5}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4, p1, p3, v2, v1}, Landroid/content/ContentProviderClient;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    .line 55
    move-result-object p3

    .line 56
    if-eqz p3, :cond_46

    .line 58
    invoke-virtual {p3}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    .line 61
    move-result-object v4
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3d} :catch_49
    .catchall {:try_start_27 .. :try_end_3d} :catchall_125

    .line 62
    :try_start_3d
    new-instance v5, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;

    .line 64
    invoke-direct {v5, p3}, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;-><init>(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_44
    .catchall {:try_start_3d .. :try_end_42} :catchall_121

    .line 67
    const/4 v3, 0x1

    .line 68
    goto :goto_65

    .line 69
    :catch_44
    move-exception p3

    .line 70
    goto :goto_4b

    .line 71
    :cond_46
    move-object v4, v2

    .line 72
    move-object v5, v4

    .line 73
    goto :goto_65

    .line 74
    :catch_49
    move-exception p3

    .line 75
    move-object v4, v2

    .line 76
    :goto_4b
    :try_start_4b
    sget-object v5, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    const-string v7, "Failed to open a file as asset for "

    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v6

    .line 98
    invoke-static {v5, v6, p3}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_4b .. :try_end_64} :catchall_121

    .line 101
    move-object v5, v2

    .line 102
    :goto_65
    const/4 p3, 0x4

    .line 103
    if-nez v3, :cond_b1

    .line 105
    :try_start_68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 112
    move-result-object v6

    .line 113
    invoke-static {v3, v6}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 116
    move-result-object v3

    .line 117
    const-string v6, "r"

    .line 119
    invoke-virtual {v3, p1, v6, v1}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 122
    move-result-object v4
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_7a} :catch_87
    .catchall {:try_start_68 .. :try_end_7a} :catchall_81

    .line 123
    :try_start_7a
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 125
    invoke-direct {v0, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 128
    move-object v5, v0

    .line 129
    goto :goto_b1

    .line 130
    :catchall_81
    move-exception p0

    .line 131
    move-object v0, v2

    .line 132
    move-object v3, v0

    .line 133
    :goto_84
    move-object v2, v5

    .line 134
    goto/16 :goto_129

    .line 136
    :catch_87
    move-exception p0

    .line 137
    sget-object p2, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 139
    new-instance p4, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    const-string v3, "Failed to open a file for "

    .line 146
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object p1

    .line 159
    invoke-static {p2, p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a1
    .catchall {:try_start_7a .. :try_end_a1} :catchall_81

    .line 162
    :goto_a1
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 165
    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 168
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 171
    :goto_aa
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 174
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 177
    return p3

    .line 178
    :cond_b1
    :goto_b1
    if-nez v4, :cond_b4

    .line 180
    goto :goto_a1

    .line 181
    :cond_b4
    :try_start_b4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 188
    move-result-object v3

    .line 189
    invoke-static {v0, v3}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 192
    move-result-object v0

    .line 193
    const-string v3, "w"

    .line 195
    invoke-virtual {v0, p2, v3, v1}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 198
    move-result-object v0
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_c6} :catch_f6
    .catchall {:try_start_b4 .. :try_end_c6} :catchall_81

    .line 199
    :try_start_c6
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 201
    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_cb} :catch_f2
    .catchall {:try_start_c6 .. :try_end_cb} :catchall_ef

    .line 204
    const/16 v2, 0x4000

    .line 206
    :try_start_cd
    invoke-static {p0, v5, v3, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 209
    move-result p0

    .line 210
    if-nez p0, :cond_d8

    .line 212
    if-eqz p4, :cond_d8

    .line 214
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->deleteDocument(Landroid/net/Uri;)Z

    .line 217
    :cond_d8
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->checkError()V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_db} :catch_ed
    .catchall {:try_start_cd .. :try_end_db} :catchall_eb

    .line 220
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 223
    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 226
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 229
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 232
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 235
    return p0

    .line 236
    :catchall_eb
    move-exception p0

    .line 237
    goto :goto_84

    .line 238
    :catch_ed
    move-exception p0

    .line 239
    goto :goto_f4

    .line 240
    :catchall_ef
    move-exception p0

    .line 241
    move-object v3, v2

    .line 242
    goto :goto_84

    .line 243
    :catch_f2
    move-exception p0

    .line 244
    move-object v3, v2

    .line 245
    :goto_f4
    move-object v2, v0

    .line 246
    goto :goto_f8

    .line 247
    :catch_f6
    move-exception p0

    .line 248
    move-object v3, v2

    .line 249
    :goto_f8
    :try_start_f8
    sget-object p1, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 251
    new-instance p4, Ljava/lang/StringBuilder;

    .line 253
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    const-string v0, "Failed to open the destination file "

    .line 258
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    const-string p2, " for writing due to an exception."

    .line 266
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    move-result-object p2

    .line 273
    invoke-static {p1, p2, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_113
    .catchall {:try_start_f8 .. :try_end_113} :catchall_11d

    .line 276
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 279
    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 282
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 285
    goto :goto_aa

    .line 286
    :catchall_11d
    move-exception p0

    .line 287
    move-object v0, v2

    .line 288
    goto/16 :goto_84

    .line 290
    :catchall_121
    move-exception p0

    .line 291
    move-object v0, v2

    .line 292
    move-object v3, v0

    .line 293
    goto :goto_129

    .line 294
    :catchall_125
    move-exception p0

    .line 295
    move-object v0, v2

    .line 296
    move-object v3, v0

    .line 297
    move-object v4, v3

    .line 298
    :goto_129
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 301
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 304
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 307
    invoke-static {v4}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 310
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 313
    throw p0
.end method

.method public static deleteFiles(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_6a

    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 17
    sget-object v1, Lcom/android/fileexplorer/filemanager/MTPFileOperationUtils;->TAG:Ljava/lang/String;

    .line 19
    const-string v2, "Deleting docuemnt @ "

    .line 21
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v2

    .line 25
    iget-object v3, v0, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 27
    iget-object v3, v3, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v2, v0, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 41
    invoke-virtual {v2}, Lcom/android/fileexplorer/mtp/DocumentInfo;->isDeleteSupported()Z

    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_4

    .line 47
    iget-object v2, v0, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 49
    iget-object v2, v2, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 51
    invoke-static {v2}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->deleteDocument(Landroid/net/Uri;)Z

    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_51

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 64
    iget-object v0, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    const-string v0, " deleted"

    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    goto :goto_4

    .line 82
    :cond_51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 89
    iget-object v0, v0, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, " delete error"

    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    goto :goto_4

    .line 107
    :cond_6a
    const/4 p0, 0x0

    .line 108
    return p0
.end method

.method public static renameFile(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)I
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 3
    iget-object p0, p0, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 5
    invoke-static {p0, p1}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->renameDocument(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_c

    .line 11
    const/4 p0, 0x4

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p0, 0x0

    .line 14
    :goto_d
    return p0
.end method
