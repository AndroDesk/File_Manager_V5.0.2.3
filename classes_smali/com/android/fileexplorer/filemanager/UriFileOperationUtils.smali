.class public Lcom/android/fileexplorer/filemanager/UriFileOperationUtils;
.super Ljava/lang/Object;
.source "UriFileOperationUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UriFileOperationUtils"

.field private static final URI_TEMP_DIR_NAME:Ljava/lang/String; = ".uriTemp"

.field public static final URI_TEMP_DIR_PATH:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, ".uriTemp"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_e

    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_12

    .line 15
    :cond_e
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    :goto_12
    sput-object v0, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils;->URI_TEMP_DIR_PATH:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils;->lambda$copySingleFileToLocalFromMirror$0(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;)V

    return-void
.end method

.method public static copyOrMoveSingleFileToMtp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;Landroid/net/Uri;Z)I
    .registers 23
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    move-object/from16 v3, p2

    .line 7
    move/from16 v4, p3

    .line 9
    const-string v5, "Error closing destination."

    .line 11
    const-string v6, "Error copying bytes."

    .line 13
    const-string v7, "Cleaning up failed operation leftovers."

    .line 15
    const/4 v8, 0x2

    .line 16
    const-string v9, "UriFileOperationUtils"

    .line 18
    if-eqz v3, :cond_21d

    .line 20
    if-eqz v2, :cond_21d

    .line 22
    invoke-static/range {p1 .. p1}, Lcom/android/fileexplorer/model/ContentFile;->isEmpty(Lcom/android/fileexplorer/model/ContentFile;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1d

    .line 28
    goto/16 :goto_21d

    .line 30
    :cond_1d
    iget-object v0, v2, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v0

    .line 36
    const/4 v10, 0x5

    .line 37
    const/4 v11, 0x1

    .line 38
    if-nez v0, :cond_4a

    .line 40
    new-instance v0, Ljava/io/File;

    .line 42
    iget-object v12, v2, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    .line 44
    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4a

    .line 53
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 56
    move-result-object v0

    .line 57
    new-instance v12, Ljava/io/File;

    .line 59
    iget-object v13, v2, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    .line 61
    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-static {v0, v12, v3, v4}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyOrMoveFileAndDirectoryToMtp(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;Z)I

    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_49

    .line 70
    if-eq v0, v11, :cond_49

    .line 72
    if-ne v0, v10, :cond_4a

    .line 74
    :cond_49
    return v0

    .line 75
    :cond_4a
    const-string v0, "Doing byte copy of document: "

    .line 77
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    move-result-object v0

    .line 81
    iget-object v12, v2, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, v2, Lcom/android/fileexplorer/model/ContentFile;->mimeType:Ljava/lang/String;

    .line 95
    if-nez v0, :cond_68

    .line 97
    const-string v0, "copyOrMoveSingleFileToMtp: srcFile mimtType is null"

    .line 99
    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/16 v0, 0xc

    .line 104
    return v0

    .line 105
    :cond_68
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 108
    move-result-object v12

    .line 109
    invoke-static/range {p2 .. p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    invoke-static {}, Lcom/android/fileexplorer/mtp/MTPManager;->getInstance()Lcom/android/fileexplorer/mtp/MTPManager;

    .line 116
    move-result-object v13

    .line 117
    invoke-virtual {v13, v0}, Lcom/android/fileexplorer/mtp/MTPManager;->listDocumentInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_b8

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 126
    move-result-object v0

    .line 127
    :cond_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    move-result v13

    .line 131
    if-eqz v13, :cond_b8

    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    move-result-object v13

    .line 137
    check-cast v13, Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 139
    invoke-virtual {v13}, Lcom/android/fileexplorer/mtp/DocumentInfo;->isDirectory()Z

    .line 142
    move-result v14

    .line 143
    if-nez v14, :cond_7e

    .line 145
    iget-object v14, v13, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    .line 147
    iget-object v15, v2, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 149
    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 152
    move-result v14

    .line 153
    if-eqz v14, :cond_7e

    .line 155
    iget-object v0, v2, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 157
    invoke-static {v1, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_b7

    .line 163
    :try_start_a2
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 166
    move-result-object v0

    .line 167
    iget-object v13, v13, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 169
    invoke-static {v0, v13}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_ab} :catch_ac

    .line 172
    goto :goto_b8

    .line 173
    :catch_ac
    move-exception v0

    .line 174
    const-string v13, "deleteDocument error: "

    .line 176
    invoke-static {v13}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    move-result-object v13

    .line 180
    invoke-static {v0, v13, v9}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 183
    goto :goto_b8

    .line 184
    :cond_b7
    return v11

    .line 185
    :cond_b8
    :goto_b8
    iget-object v0, v2, Lcom/android/fileexplorer/model/ContentFile;->mimeType:Ljava/lang/String;

    .line 187
    iget-object v13, v2, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 189
    invoke-static {v3, v0, v13}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->createDocument(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 192
    move-result-object v0

    .line 193
    const/4 v13, 0x4

    .line 194
    if-nez v0, :cond_de

    .line 196
    const-string v0, "Couldn\'t create destination document "

    .line 198
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    move-result-object v0

    .line 202
    iget-object v1, v2, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, " in directory "

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object v0

    .line 219
    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return v13

    .line 223
    :cond_de
    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 226
    move-result-object v3

    .line 227
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 230
    move-result-object v3

    .line 231
    invoke-static {v3, v0}, Lcom/android/fileexplorer/mtp/DocumentInfo;->createFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 234
    move-result-object v3

    .line 235
    if-nez v3, :cond_ed

    .line 237
    return v8

    .line 238
    :cond_ed
    if-eqz v1, :cond_f6

    .line 240
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_f6

    .line 246
    return v10

    .line 247
    :cond_f6
    new-instance v8, Landroid/os/CancellationSignal;

    .line 249
    invoke-direct {v8}, Landroid/os/CancellationSignal;-><init>()V

    .line 252
    const/4 v0, 0x0

    .line 253
    :try_start_fc
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 256
    move-result-object v14

    .line 257
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 260
    move-result-object v14

    .line 261
    iget-object v15, v2, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    .line 263
    invoke-virtual {v14, v15}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 266
    move-result-object v14
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_10a} :catch_1bc
    .catchall {:try_start_fc .. :try_end_10a} :catchall_1b1

    .line 267
    if-nez v14, :cond_11c

    .line 269
    invoke-static {v9, v7}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v8}, Landroid/os/CancellationSignal;->cancel()V

    .line 275
    invoke-static {v14}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 278
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 281
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 284
    return v13

    .line 285
    :cond_11c
    if-eqz v1, :cond_143

    .line 287
    :try_start_11e
    iget-wide v10, v2, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 289
    const-wide/16 v16, 0x0

    .line 291
    cmp-long v0, v10, v16

    .line 293
    if-gtz v0, :cond_12d

    .line 295
    invoke-virtual {v14}, Ljava/io/InputStream;->available()I

    .line 298
    move-result v0

    .line 299
    int-to-long v10, v0

    .line 300
    iput-wide v10, v2, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 302
    :cond_12d
    iget-wide v10, v2, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 304
    cmp-long v0, v10, v16

    .line 306
    if-gtz v0, :cond_140

    .line 308
    if-eqz v4, :cond_139

    .line 310
    const v0, 0x7f11030d

    .line 313
    goto :goto_13c

    .line 314
    :cond_139
    const v0, 0x7f110317

    .line 317
    :goto_13c
    invoke-interface {v1, v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->showLoadingDialog(I)V

    .line 320
    goto :goto_143

    .line 321
    :cond_140
    invoke-interface {v1, v10, v11}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setProgressMax(J)V

    .line 324
    :cond_143
    :goto_143
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 327
    move-result-object v0

    .line 328
    iget-object v10, v3, Lcom/android/fileexplorer/mtp/DocumentInfo;->authority:Ljava/lang/String;

    .line 330
    invoke-static {v0, v10}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 333
    move-result-object v0

    .line 334
    iget-object v10, v3, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 336
    const-string v11, "w"

    .line 338
    invoke-virtual {v0, v10, v11, v8}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 341
    move-result-object v10
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_155} :catch_1ac
    .catchall {:try_start_11e .. :try_end_155} :catchall_1a7

    .line 342
    :try_start_155
    new-instance v11, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 344
    invoke-direct {v11, v10}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_15a} :catch_1a3
    .catchall {:try_start_155 .. :try_end_15a} :catchall_19f

    .line 347
    :try_start_15a
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 350
    move-result-object v0

    .line 351
    const/16 v1, 0x4000

    .line 353
    invoke-static {v0, v14, v11, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 356
    move-result v1
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_164} :catch_19c
    .catchall {:try_start_15a .. :try_end_164} :catchall_19a

    .line 357
    const/4 v12, 0x5

    .line 358
    if-ne v1, v12, :cond_171

    .line 360
    :try_start_167
    iget-object v0, v3, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 362
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->deleteDocument(Landroid/net/Uri;)Z

    .line 365
    goto :goto_17a

    .line 366
    :catchall_16d
    move-exception v0

    .line 367
    goto :goto_1b6

    .line 368
    :catch_16f
    move-exception v0

    .line 369
    goto :goto_1c1

    .line 370
    :cond_171
    if-nez v1, :cond_17a

    .line 372
    if-eqz v4, :cond_17a

    .line 374
    iget-object v0, v2, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    .line 376
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/lang/String;)Z
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_17a} :catch_16f
    .catchall {:try_start_167 .. :try_end_17a} :catchall_16d

    .line 379
    :cond_17a
    :goto_17a
    if-eqz v1, :cond_190

    .line 381
    const/4 v2, 0x1

    .line 382
    if-eq v1, v2, :cond_190

    .line 384
    if-eqz v10, :cond_18a

    .line 386
    :try_start_181
    invoke-virtual {v10, v6}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_184} :catch_185

    .line 389
    goto :goto_18a

    .line 390
    :catch_185
    move-exception v0

    .line 391
    move-object v2, v0

    .line 392
    invoke-static {v9, v5, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 395
    :cond_18a
    :goto_18a
    invoke-static {v9, v7}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v8}, Landroid/os/CancellationSignal;->cancel()V

    .line 401
    :cond_190
    invoke-static {v14}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 404
    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 407
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 410
    return v1

    .line 411
    :catchall_19a
    move-exception v0

    .line 412
    goto :goto_1a1

    .line 413
    :catch_19c
    move-exception v0

    .line 414
    const/4 v1, 0x4

    .line 415
    goto :goto_1c1

    .line 416
    :catchall_19f
    move-exception v0

    .line 417
    const/4 v11, 0x0

    .line 418
    :goto_1a1
    const/4 v1, 0x4

    .line 419
    goto :goto_1b6

    .line 420
    :catch_1a3
    move-exception v0

    .line 421
    const/4 v1, 0x4

    .line 422
    const/4 v11, 0x0

    .line 423
    goto :goto_1c1

    .line 424
    :catchall_1a7
    move-exception v0

    .line 425
    const/4 v11, 0x0

    .line 426
    const/4 v1, 0x4

    .line 427
    const/4 v10, 0x0

    .line 428
    goto :goto_1b6

    .line 429
    :catch_1ac
    move-exception v0

    .line 430
    const/4 v1, 0x4

    .line 431
    const/4 v11, 0x0

    .line 432
    const/4 v10, 0x0

    .line 433
    goto :goto_1c1

    .line 434
    :catchall_1b1
    move-exception v0

    .line 435
    const/4 v11, 0x0

    .line 436
    const/4 v1, 0x4

    .line 437
    const/4 v10, 0x0

    .line 438
    const/4 v14, 0x0

    .line 439
    :goto_1b6
    move/from16 v18, v1

    .line 441
    move-object v1, v0

    .line 442
    move/from16 v0, v18

    .line 444
    goto :goto_1fd

    .line 445
    :catch_1bc
    move-exception v0

    .line 446
    const/4 v1, 0x4

    .line 447
    const/4 v11, 0x0

    .line 448
    const/4 v10, 0x0

    .line 449
    const/4 v14, 0x0

    .line 450
    :goto_1c1
    :try_start_1c1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 452
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    const-string v4, "Failed to open the destination file "

    .line 457
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    iget-object v3, v3, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    .line 462
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v3, " for writing due to an exception."

    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    move-result-object v2

    .line 474
    invoke-static {v9, v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1dc
    .catchall {:try_start_1c1 .. :try_end_1dc} :catchall_16d

    .line 477
    if-eqz v1, :cond_1f2

    .line 479
    const/4 v2, 0x1

    .line 480
    if-eq v1, v2, :cond_1f2

    .line 482
    if-eqz v10, :cond_1ec

    .line 484
    :try_start_1e3
    invoke-virtual {v10, v6}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_1e6
    .catch Ljava/io/IOException; {:try_start_1e3 .. :try_end_1e6} :catch_1e7

    .line 487
    goto :goto_1ec

    .line 488
    :catch_1e7
    move-exception v0

    .line 489
    move-object v1, v0

    .line 490
    invoke-static {v9, v5, v1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 493
    :cond_1ec
    :goto_1ec
    invoke-static {v9, v7}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual {v8}, Landroid/os/CancellationSignal;->cancel()V

    .line 499
    :cond_1f2
    invoke-static {v14}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 502
    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 505
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 508
    const/4 v0, 0x4

    .line 509
    return v0

    .line 510
    :goto_1fd
    if-eqz v0, :cond_213

    .line 512
    const/4 v2, 0x1

    .line 513
    if-eq v0, v2, :cond_213

    .line 515
    if-eqz v10, :cond_20d

    .line 517
    :try_start_204
    invoke-virtual {v10, v6}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_207
    .catch Ljava/io/IOException; {:try_start_204 .. :try_end_207} :catch_208

    .line 520
    goto :goto_20d

    .line 521
    :catch_208
    move-exception v0

    .line 522
    move-object v2, v0

    .line 523
    invoke-static {v9, v5, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    :cond_20d
    :goto_20d
    invoke-static {v9, v7}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-virtual {v8}, Landroid/os/CancellationSignal;->cancel()V

    .line 532
    :cond_213
    invoke-static {v14}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 535
    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 538
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 541
    throw v1

    .line 542
    :cond_21d
    :goto_21d
    const-string v0, "CopyFile: null parameter"

    .line 544
    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    return v8
.end method

.method public static copySingleFileToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;Ljava/lang/String;ZZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I
    .registers 23

    .line 1
    move-object/from16 v7, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move-object/from16 v1, p2

    .line 7
    const/4 v8, 0x4

    .line 8
    const-string v9, "UriFileOperationUtils"

    .line 10
    if-nez v0, :cond_11

    .line 12
    const-string v0, "contentFile is null or uri is null"

    .line 14
    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return v8

    .line 18
    :cond_11
    iget-object v2, v0, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    .line 20
    const/4 v10, 0x2

    .line 21
    if-eqz v2, :cond_1a6

    .line 23
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1a6

    .line 29
    iget-object v2, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_26

    .line 37
    goto/16 :goto_1a6

    .line 39
    :cond_26
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3c

    .line 47
    invoke-static/range {p2 .. p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    move-result-object v1

    .line 51
    iget-object v2, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    goto :goto_49

    .line 61
    :cond_3c
    invoke-static {v1, v2}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    move-result-object v1

    .line 65
    iget-object v2, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    :goto_49
    move-object v11, v1

    .line 75
    const-string v1, "copySingleFileToLocal: fileName = "

    .line 77
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    move-result-object v1

    .line 81
    iget-object v2, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    invoke-static {v9, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v12, Ljava/io/File;

    .line 95
    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object v1, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    .line 100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    move-result v1

    .line 104
    const/4 v13, 0x5

    .line 105
    const/4 v14, 0x1

    .line 106
    if-nez v1, :cond_8e

    .line 108
    new-instance v1, Ljava/io/File;

    .line 110
    iget-object v2, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    .line 112
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_8e

    .line 121
    iget-object v2, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    .line 123
    move-object/from16 v1, p0

    .line 125
    move-object v3, v12

    .line 126
    move/from16 v4, p3

    .line 128
    move/from16 v5, p4

    .line 130
    move-object/from16 v6, p6

    .line 132
    invoke-static/range {v1 .. v6}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyFileAndDirectoryToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I

    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_8d

    .line 138
    if-eq v1, v14, :cond_8d

    .line 140
    if-ne v1, v13, :cond_8e

    .line 142
    :cond_8d
    return v1

    .line 143
    :cond_8e
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v1, v11}, Lcom/android/fileexplorer/model/StorageHelper;->destVolumeFreeSpace(Ljava/lang/String;)J

    .line 150
    move-result-wide v1

    .line 151
    iget-wide v3, v0, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 153
    cmp-long v1, v1, v3

    .line 155
    const/4 v2, 0x3

    .line 156
    if-gez v1, :cond_a3

    .line 158
    const-string v0, "not enough space"

    .line 160
    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return v2

    .line 164
    :cond_a3
    invoke-static {v11}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    .line 167
    move-result v1

    .line 168
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_f1

    .line 174
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_ee

    .line 180
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/PasteFileInstance;->isToAll()Z

    .line 187
    move-result v3

    .line 188
    if-nez v3, :cond_cf

    .line 190
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 193
    move-result-object v3

    .line 194
    iget-object v4, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 196
    invoke-static {v7, v4}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite2(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)I

    .line 199
    move-result v4

    .line 200
    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/model/PasteFileInstance;->setStatus(I)V

    .line 203
    const-string v3, "PasteFileInstance.getInstance().setStatus(FileOperationManager.ifUserChooseOverwrite2(activity, contentFile.originalFileName));"

    .line 205
    invoke-static {v9, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_cf
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/PasteFileInstance;->getStatus()I

    .line 215
    move-result v3

    .line 216
    if-eq v3, v14, :cond_e3

    .line 218
    if-eq v3, v10, :cond_df

    .line 220
    if-eq v3, v2, :cond_de

    .line 222
    return v13

    .line 223
    :cond_de
    return v14

    .line 224
    :cond_df
    invoke-static {v12}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/io/File;)Z

    .line 227
    goto :goto_f1

    .line 228
    :cond_e3
    new-instance v2, Ljava/io/File;

    .line 230
    invoke-static {v12}, Lcom/android/fileexplorer/model/Util;->renameReal(Ljava/io/File;)Ljava/lang/String;

    .line 233
    move-result-object v3

    .line 234
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    move-object v12, v2

    .line 238
    goto :goto_f1

    .line 239
    :cond_ee
    const/16 v0, 0xe

    .line 241
    return v0

    .line 242
    :cond_f1
    :goto_f1
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_f8

    .line 248
    return v8

    .line 249
    :cond_f8
    const/4 v2, 0x0

    .line 250
    const/4 v3, 0x0

    .line 251
    if-nez v7, :cond_105

    .line 253
    :try_start_fc
    const-string v0, "activity is null, return"

    .line 255
    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_101} :catch_171
    .catchall {:try_start_fc .. :try_end_101} :catchall_16f

    .line 258
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 261
    return v8

    .line 262
    :cond_105
    :try_start_105
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 265
    move-result-object v4

    .line 266
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 269
    move-result-object v4

    .line 270
    iget-object v5, v0, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    .line 272
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 275
    move-result-object v2
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_113} :catch_171
    .catchall {:try_start_105 .. :try_end_113} :catchall_16f

    .line 276
    if-nez v2, :cond_119

    .line 278
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 281
    return v8

    .line 282
    :cond_119
    :try_start_119
    iget-wide v4, v0, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 284
    const-wide/16 v14, 0x0

    .line 286
    cmp-long v4, v4, v14

    .line 288
    if-nez v4, :cond_13a

    .line 290
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    .line 293
    move-result v4

    .line 294
    if-nez v4, :cond_13a

    .line 296
    invoke-static {v11, v3}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->createFileOrDir(Ljava/lang/String;Z)Z

    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_12f

    .line 302
    move v1, v3

    .line 303
    goto :goto_15c

    .line 304
    :cond_12f
    const-string v0, "copySingleFileToLocal createFile error."

    .line 306
    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_134} :catch_171
    .catchall {:try_start_119 .. :try_end_134} :catchall_16f

    .line 309
    const/16 v0, 0x9

    .line 311
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 314
    return v0

    .line 315
    :cond_13a
    :try_start_13a
    iget-wide v4, v0, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 317
    cmp-long v4, v4, v14

    .line 319
    if-gtz v4, :cond_147

    .line 321
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    .line 324
    move-result v4

    .line 325
    int-to-long v4, v4

    .line 326
    iput-wide v4, v0, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 328
    :cond_147
    if-eqz p5, :cond_151

    .line 330
    new-instance v4, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils$1;

    .line 332
    invoke-direct {v4, v7, v0}, Lcom/android/fileexplorer/filemanager/UriFileOperationUtils$1;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;)V

    .line 335
    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    .line 338
    :cond_151
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 341
    move-result-object v4

    .line 342
    const v5, 0x8000

    .line 345
    invoke-static {v4, v2, v12, v1, v5}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeDocumentFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/File;ZI)I

    .line 348
    move-result v1

    .line 349
    :goto_15c
    if-ne v1, v13, :cond_162

    .line 351
    invoke-static {v12}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/io/File;)Z

    .line 354
    goto :goto_16b

    .line 355
    :cond_162
    if-nez v1, :cond_16b

    .line 357
    if-eqz p4, :cond_16b

    .line 359
    iget-object v0, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    .line 361
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/lang/String;)Z
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_16b} :catch_171
    .catchall {:try_start_13a .. :try_end_16b} :catchall_16f

    .line 364
    :cond_16b
    :goto_16b
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 367
    return v1

    .line 368
    :catchall_16f
    move-exception v0

    .line 369
    goto :goto_1a2

    .line 370
    :catch_171
    move-exception v0

    .line 371
    :try_start_172
    new-instance v1, Ljava/lang/StringBuilder;

    .line 373
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    const-string v4, "copySingleFileToLocal error: "

    .line 378
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    move-result-object v0

    .line 392
    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 398
    move-result-object v0

    .line 399
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_19e

    .line 405
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 408
    move-result-object v0

    .line 409
    const v1, 0x7f11023c

    .line 412
    invoke-static {v0, v1, v3}, Lcom/android/fileexplorer/mirror/utils/MirrorToastManager;->show(Landroid/content/Context;IZ)V
    :try_end_19e
    .catchall {:try_start_172 .. :try_end_19e} :catchall_16f

    .line 415
    :cond_19e
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 418
    return v8

    .line 419
    :goto_1a2
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 422
    throw v0

    .line 423
    :cond_1a6
    :goto_1a6
    const-string v0, "CopyFile: null parameter"

    .line 425
    invoke-static {v9, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return v10
.end method

.method public static copySingleFileToLocalFromMirror(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;Ljava/lang/String;ZZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I
    .registers 24

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    const/4 v2, 0x4

    .line 6
    const-string v3, "UriFileOperationUtils"

    .line 8
    if-nez v0, :cond_f

    .line 10
    const-string v0, "contentFile is null or uri is null"

    .line 12
    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return v2

    .line 16
    :cond_f
    iget-object v4, v0, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    .line 18
    const/4 v5, 0x2

    .line 19
    if-eqz v4, :cond_1db

    .line 21
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_1db

    .line 27
    iget-object v4, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 29
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_24

    .line 35
    goto/16 :goto_1db

    .line 37
    :cond_24
    invoke-static/range {p2 .. p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object v4

    .line 41
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    .line 43
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v7, v0, Lcom/android/fileexplorer/model/ContentFile;->relativePath:Ljava/lang/String;

    .line 48
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    new-instance v7, Ljava/io/File;

    .line 57
    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 63
    move-result v8

    .line 64
    if-nez v8, :cond_44

    .line 66
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 69
    :cond_44
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_58

    .line 75
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    move-result-object v4

    .line 79
    iget-object v6, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 81
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v4

    .line 88
    goto :goto_65

    .line 89
    :cond_58
    invoke-static {v4, v6}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    move-result-object v4

    .line 93
    iget-object v6, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 95
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v4

    .line 102
    :goto_65
    const-string v6, "copySingleFileToLocalFromMirror: fileName = "

    .line 104
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    move-result-object v6

    .line 108
    iget-object v7, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 110
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v6

    .line 117
    invoke-static {v3, v6}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v6, Ljava/io/File;

    .line 122
    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 128
    move-result-object v7

    .line 129
    invoke-virtual {v7, v4}, Lcom/android/fileexplorer/model/StorageHelper;->destVolumeFreeSpace(Ljava/lang/String;)J

    .line 132
    move-result-wide v7

    .line 133
    iget-wide v9, v0, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 135
    cmp-long v7, v7, v9

    .line 137
    const/4 v8, 0x3

    .line 138
    if-gez v7, :cond_91

    .line 140
    const-string v0, "not enough space"

    .line 142
    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return v8

    .line 146
    :cond_91
    invoke-static {v4}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    .line 149
    move-result v7

    .line 150
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 153
    move-result v9

    .line 154
    const/4 v10, 0x5

    .line 155
    if-eqz v9, :cond_e1

    .line 157
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 160
    move-result v9

    .line 161
    if-eqz v9, :cond_de

    .line 163
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 166
    move-result-object v9

    .line 167
    invoke-virtual {v9}, Lcom/android/fileexplorer/model/PasteFileInstance;->isToAll()Z

    .line 170
    move-result v9

    .line 171
    if-nez v9, :cond_be

    .line 173
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 176
    move-result-object v9

    .line 177
    iget-object v11, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 179
    invoke-static {v1, v11}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite2(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)I

    .line 182
    move-result v11

    .line 183
    invoke-virtual {v9, v11}, Lcom/android/fileexplorer/model/PasteFileInstance;->setStatus(I)V

    .line 186
    const-string v9, "PasteFileInstance.getInstance().setStatus(FileOperationManager.ifUserChooseOverwrite2(activity, contentFile.originalFileName));"

    .line 188
    invoke-static {v3, v9}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_be
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 194
    move-result-object v9

    .line 195
    invoke-virtual {v9}, Lcom/android/fileexplorer/model/PasteFileInstance;->getStatus()I

    .line 198
    move-result v9

    .line 199
    const/4 v11, 0x1

    .line 200
    if-eq v9, v11, :cond_d3

    .line 202
    if-eq v9, v5, :cond_cf

    .line 204
    if-eq v9, v8, :cond_ce

    .line 206
    return v10

    .line 207
    :cond_ce
    return v11

    .line 208
    :cond_cf
    invoke-static {v6}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/io/File;)Z

    .line 211
    goto :goto_e1

    .line 212
    :cond_d3
    new-instance v5, Ljava/io/File;

    .line 214
    invoke-static {v6}, Lcom/android/fileexplorer/model/Util;->renameReal(Ljava/io/File;)Ljava/lang/String;

    .line 217
    move-result-object v6

    .line 218
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    move-object v6, v5

    .line 222
    goto :goto_e1

    .line 223
    :cond_de
    const/16 v0, 0xe

    .line 225
    return v0

    .line 226
    :cond_e1
    :goto_e1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 229
    move-result v5

    .line 230
    if-eqz v5, :cond_ed

    .line 232
    const-string v0, "destFile exists"

    .line 234
    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return v2

    .line 238
    :cond_ed
    const/4 v5, 0x0

    .line 239
    const/4 v8, 0x0

    .line 240
    const-string v9, "copySingleFileToLocalFromMirror: finally close"

    .line 242
    if-nez v1, :cond_102

    .line 244
    :try_start_f3
    const-string v0, "activity is null, return"

    .line 246
    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f8} :catch_198
    .catchall {:try_start_f3 .. :try_end_f8} :catchall_195

    .line 249
    invoke-static {v3, v9}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 255
    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 258
    return v2

    .line 259
    :cond_102
    :try_start_102
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    .line 262
    move-result-object v11

    .line 263
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 266
    move-result-object v12

    .line 267
    iget-object v13, v0, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    .line 269
    invoke-virtual {v11, v12, v13}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->openDirect(Landroid/content/Context;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    .line 272
    move-result-object v11
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_110} :catch_198
    .catchall {:try_start_102 .. :try_end_110} :catchall_195

    .line 273
    if-nez v11, :cond_121

    .line 275
    :try_start_112
    const-string v0, "fileDescriptor null"

    .line 277
    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_117} :catch_193
    .catchall {:try_start_112 .. :try_end_117} :catchall_1d0

    .line 280
    invoke-static {v3, v9}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 286
    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 289
    return v2

    .line 290
    :cond_121
    :try_start_121
    new-instance v12, Ljava/io/FileInputStream;

    .line 292
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 295
    move-result-object v13

    .line 296
    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_12a} :catch_193
    .catchall {:try_start_121 .. :try_end_12a} :catchall_1d0

    .line 299
    :try_start_12a
    iget-wide v13, v0, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 301
    const-wide/16 v15, 0x0

    .line 303
    cmp-long v5, v13, v15

    .line 305
    if-nez v5, :cond_151

    .line 307
    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    .line 310
    move-result v5

    .line 311
    if-nez v5, :cond_151

    .line 313
    invoke-static {v4, v8}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->createFileOrDir(Ljava/lang/String;Z)Z

    .line 316
    move-result v4

    .line 317
    if-eqz v4, :cond_140

    .line 319
    move v4, v8

    .line 320
    goto :goto_174

    .line 321
    :cond_140
    const-string v0, "copySingleFileToLocal createFile error."

    .line 323
    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_145} :catch_190
    .catchall {:try_start_12a .. :try_end_145} :catchall_18d

    .line 326
    const/16 v0, 0x9

    .line 328
    invoke-static {v3, v9}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {v12}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 334
    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 337
    return v0

    .line 338
    :cond_151
    :try_start_151
    iget-wide v4, v0, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 340
    cmp-long v4, v4, v15

    .line 342
    if-gtz v4, :cond_15e

    .line 344
    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    .line 347
    move-result v4

    .line 348
    int-to-long v4, v4

    .line 349
    iput-wide v4, v0, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 351
    :cond_15e
    if-eqz p5, :cond_169

    .line 353
    new-instance v4, Landroidx/appcompat/app/s;

    .line 355
    const/4 v5, 0x6

    .line 356
    invoke-direct {v4, v5, v1, v0}, Landroidx/appcompat/app/s;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 359
    invoke-static {v4}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    .line 362
    :cond_169
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 365
    move-result-object v4

    .line 366
    const v5, 0x8000

    .line 369
    invoke-static {v4, v12, v6, v7, v5}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeDocumentFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/File;ZI)I

    .line 372
    move-result v4

    .line 373
    :goto_174
    if-ne v4, v10, :cond_17a

    .line 375
    invoke-static {v6}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/io/File;)Z

    .line 378
    goto :goto_183

    .line 379
    :cond_17a
    if-nez v4, :cond_183

    .line 381
    if-eqz p4, :cond_183

    .line 383
    iget-object v0, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFilePath:Ljava/lang/String;

    .line 385
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->deleteFile(Ljava/lang/String;)Z
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_183} :catch_190
    .catchall {:try_start_151 .. :try_end_183} :catchall_18d

    .line 388
    :cond_183
    :goto_183
    invoke-static {v3, v9}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {v12}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 394
    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 397
    return v4

    .line 398
    :catchall_18d
    move-exception v0

    .line 399
    move-object v5, v12

    .line 400
    goto :goto_1d1

    .line 401
    :catch_190
    move-exception v0

    .line 402
    move-object v5, v12

    .line 403
    goto :goto_19a

    .line 404
    :catch_193
    move-exception v0

    .line 405
    goto :goto_19a

    .line 406
    :catchall_195
    move-exception v0

    .line 407
    move-object v11, v5

    .line 408
    goto :goto_1d1

    .line 409
    :catch_198
    move-exception v0

    .line 410
    move-object v11, v5

    .line 411
    :goto_19a
    :try_start_19a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 413
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    const-string v6, "copySingleFileToLocal error: "

    .line 418
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 424
    move-result-object v0

    .line 425
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    move-result-object v0

    .line 432
    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 438
    move-result-object v0

    .line 439
    invoke-static {v0}, Lcom/android/fileexplorer/util/DeviceUtils;->isInMirrorMode(Landroid/content/Context;)Z

    .line 442
    move-result v0

    .line 443
    if-eqz v0, :cond_1c6

    .line 445
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 448
    move-result-object v0

    .line 449
    const v1, 0x7f11023c

    .line 452
    invoke-static {v0, v1, v8}, Lcom/android/fileexplorer/mirror/utils/MirrorToastManager;->show(Landroid/content/Context;IZ)V
    :try_end_1c6
    .catchall {:try_start_19a .. :try_end_1c6} :catchall_1d0

    .line 455
    :cond_1c6
    invoke-static {v3, v9}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 461
    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 464
    return v2

    .line 465
    :catchall_1d0
    move-exception v0

    .line 466
    :goto_1d1
    invoke-static {v3, v9}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static {v5}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 472
    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 475
    throw v0

    .line 476
    :cond_1db
    :goto_1db
    const-string v1, "CopyFile: null parameter, uri:"

    .line 478
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    move-result-object v1

    .line 482
    iget-object v2, v0, Lcom/android/fileexplorer/model/ContentFile;->uri:Landroid/net/Uri;

    .line 484
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 487
    const-string v2, ", destDirPath:"

    .line 489
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    move-object/from16 v2, p2

    .line 494
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string v2, ", originalFileName:"

    .line 499
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget-object v0, v0, Lcom/android/fileexplorer/model/ContentFile;->originalFileName:Ljava/lang/String;

    .line 504
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    move-result-object v0

    .line 511
    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return v5
.end method

.method private static synthetic lambda$copySingleFileToLocalFromMirror$0(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/ContentFile;)V
    .registers 4

    .line 1
    iget-wide v0, p1, Lcom/android/fileexplorer/model/ContentFile;->fileSize:J

    .line 3
    invoke-interface {p0, v0, v1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setProgressMax(J)V

    .line 6
    return-void
.end method
