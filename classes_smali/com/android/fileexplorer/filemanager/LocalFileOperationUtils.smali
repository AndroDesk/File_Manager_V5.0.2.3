.class public Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;
.super Ljava/lang/Object;
.source "LocalFileOperationUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalFileOperationUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkIfNeedRename(Ljava/lang/String;Ljava/io/File;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_12

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_12

    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    :goto_13
    return p0
.end method

.method private static copyDirectoryToMtp(Landroid/content/Context;Ljava/io/File;Lcom/android/fileexplorer/mtp/DocumentInfo;Z)I
    .registers 12

    .line 1
    const/4 v0, 0x4

    .line 2
    if-nez p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_b

    .line 11
    return v0

    .line 12
    :cond_b
    array-length v2, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x1

    .line 15
    move v5, v3

    .line 16
    move v6, v4

    .line 17
    :goto_10
    if-ge v5, v2, :cond_25

    .line 19
    aget-object v0, v1, v5

    .line 21
    iget-object v7, p2, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 23
    invoke-static {p0, v0, v7, p3}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyOrMoveFileAndDirectoryToMtp(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;Z)I

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1d

    .line 29
    move v6, v3

    .line 30
    :cond_1d
    if-eqz v0, :cond_22

    .line 32
    if-eq v0, v4, :cond_22

    .line 34
    return v0

    .line 35
    :cond_22
    add-int/lit8 v5, v5, 0x1

    .line 37
    goto :goto_10

    .line 38
    :cond_25
    if-eqz v6, :cond_2c

    .line 40
    if-eqz p3, :cond_2c

    .line 42
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    .line 45
    :cond_2c
    return v0
.end method

.method public static copyFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;Z)I
    .registers 27

    .line 1
    move-object/from16 v8, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move-object/from16 v4, p2

    .line 7
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    const-string v2, "LocalFileOperationUtils"

    .line 13
    if-nez v1, :cond_1a8

    .line 15
    if-nez v4, :cond_12

    .line 17
    goto/16 :goto_1a8

    .line 19
    :cond_12
    new-instance v9, Ljava/io/File;

    .line 21
    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3f

    .line 30
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 48
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_3f

    .line 61
    const/16 v0, 0x16

    .line 63
    return v0

    .line 64
    :cond_3f
    const/4 v10, 0x1

    .line 65
    if-eqz p4, :cond_71

    .line 67
    if-eqz p6, :cond_71

    .line 69
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Util;->isInSameVolume(Ljava/lang/String;Ljava/lang/String;)Z

    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_71

    .line 79
    new-instance v1, Ljava/io/File;

    .line 81
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    move/from16 v11, p3

    .line 86
    invoke-static {v8, v1, v4, v11}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->moveFilesInSameVolume(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;Z)I

    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_70

    .line 92
    if-ne v10, v1, :cond_5e

    .line 94
    goto :goto_70

    .line 95
    :cond_5e
    const/4 v7, 0x0

    .line 96
    move-object/from16 v1, p0

    .line 98
    move-object/from16 v2, p1

    .line 100
    move-object/from16 v3, p2

    .line 102
    move/from16 v4, p3

    .line 104
    move/from16 v5, p4

    .line 106
    move-object/from16 v6, p5

    .line 108
    invoke-static/range {v1 .. v7}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;Z)I

    .line 111
    move-result v0

    .line 112
    return v0

    .line 113
    :cond_70
    :goto_70
    return v1

    .line 114
    :cond_71
    move/from16 v11, p3

    .line 116
    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 120
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 127
    move-result v1

    .line 128
    const/4 v12, 0x0

    .line 129
    if-eqz v1, :cond_88

    .line 131
    const-string v0, "cannot copy file to same folder"

    .line 133
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return v12

    .line 137
    :cond_88
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 140
    move-result-object v1

    .line 141
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v1, v0, v3}, Lcom/android/fileexplorer/model/StorageHelper;->destHasEnoughSpace(Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_9d

    .line 151
    const-string v0, "not enough space"

    .line 153
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x3

    .line 157
    return v0

    .line 158
    :cond_9d
    invoke-static/range {p2 .. p2}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    .line 161
    move-result v1

    .line 162
    const/4 v3, 0x0

    .line 163
    if-eqz v1, :cond_ae

    .line 165
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 168
    move-result-object v5

    .line 169
    invoke-static {v5}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentFile(Ljava/io/File;)Ls0/a;

    .line 172
    move-result-object v5

    .line 173
    move-object v6, v5

    .line 174
    goto :goto_af

    .line 175
    :cond_ae
    move-object v6, v3

    .line 176
    :goto_af
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    .line 179
    move-result v5

    .line 180
    const/4 v13, 0x4

    .line 181
    if-eqz v5, :cond_175

    .line 183
    const-string v0, "copy directory: "

    .line 185
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 192
    move-result-object v5

    .line 193
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object v0

    .line 200
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 206
    move-result-object v14

    .line 207
    if-nez v14, :cond_d6

    .line 209
    const-string v0, "listFiles returned null"

    .line 211
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return v13

    .line 215
    :cond_d6
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 218
    move-result-object v13

    .line 219
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    .line 222
    move-result v0

    .line 223
    const/16 v2, 0x8

    .line 225
    if-nez v0, :cond_ed

    .line 227
    if-nez v1, :cond_ed

    .line 229
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdirs()Z

    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_eb

    .line 235
    goto :goto_ed

    .line 236
    :cond_eb
    move v0, v2

    .line 237
    goto :goto_ee

    .line 238
    :cond_ed
    :goto_ed
    move v0, v12

    .line 239
    :goto_ee
    if-eqz v1, :cond_f4

    .line 241
    invoke-static {v6, v4}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDirByParent(Ls0/a;Ljava/io/File;)Ls0/a;

    .line 244
    move-result-object v3

    .line 245
    :cond_f4
    move-object v15, v3

    .line 246
    if-eqz v0, :cond_f8

    .line 248
    return v2

    .line 249
    :cond_f8
    new-instance v7, Lcom/android/fileexplorer/filemanager/FileTransferParams;

    .line 251
    invoke-direct {v7}, Lcom/android/fileexplorer/filemanager/FileTransferParams;-><init>()V

    .line 254
    array-length v1, v14

    .line 255
    invoke-virtual {v7, v1}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setTotalFileCount(I)V

    .line 258
    invoke-virtual {v7}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setUseThreadPool()V

    .line 261
    move/from16 v16, v0

    .line 263
    move/from16 v17, v10

    .line 265
    move v6, v12

    .line 266
    :goto_109
    array-length v0, v14

    .line 267
    if-ge v6, v0, :cond_16d

    .line 269
    aget-object v3, v14, v6

    .line 271
    invoke-virtual {v7, v6}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->setCurrentIndex(I)V

    .line 274
    if-eqz v8, :cond_11b

    .line 276
    invoke-interface/range {p0 .. p0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_11b

    .line 282
    const/4 v0, 0x5

    .line 283
    return v0

    .line 284
    :cond_11b
    new-instance v4, Ljava/io/File;

    .line 286
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 289
    move-result-object v0

    .line 290
    invoke-direct {v4, v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 296
    move-result v0

    .line 297
    if-eqz v0, :cond_13f

    .line 299
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 302
    move-result-object v2

    .line 303
    move-object/from16 v1, p0

    .line 305
    move-object v3, v4

    .line 306
    move/from16 v4, p3

    .line 308
    move/from16 v5, p4

    .line 310
    move/from16 v18, v6

    .line 312
    move-object v6, v7

    .line 313
    invoke-static/range {v1 .. v6}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyFileAndDirectoryToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I

    .line 316
    move-result v0

    .line 317
    move-object/from16 v19, v7

    .line 319
    goto :goto_15d

    .line 320
    :cond_13f
    move/from16 v18, v6

    .line 322
    new-instance v0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    .line 324
    move-object v1, v0

    .line 325
    move-object/from16 v2, p0

    .line 327
    move/from16 v5, p4

    .line 329
    move-object v6, v15

    .line 330
    move-object/from16 v19, v7

    .line 332
    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;ZLs0/a;Lcom/android/fileexplorer/filemanager/FileTransferParams;)V

    .line 335
    :try_start_14e
    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->call()Ljava/lang/Integer;

    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 342
    move-result v0
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_156} :catch_157

    .line 343
    goto :goto_15d

    .line 344
    :catch_157
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 348
    move/from16 v0, v16

    .line 350
    :goto_15d
    if-eqz v0, :cond_161

    .line 352
    move/from16 v17, v12

    .line 354
    :cond_161
    if-eqz v0, :cond_166

    .line 356
    if-eq v0, v10, :cond_166

    .line 358
    return v0

    .line 359
    :cond_166
    add-int/lit8 v6, v18, 0x1

    .line 361
    move/from16 v16, v0

    .line 363
    move-object/from16 v7, v19

    .line 365
    goto :goto_109

    .line 366
    :cond_16d
    if-eqz v17, :cond_174

    .line 368
    if-eqz p4, :cond_174

    .line 370
    invoke-static {v9}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    .line 373
    :cond_174
    return v16

    .line 374
    :cond_175
    const-string v1, "copy single file:"

    .line 376
    const-string v3, " to "

    .line 378
    invoke-static {v1, v0, v3}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    move-result-object v0

    .line 382
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 385
    move-result-object v1

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    move-result-object v0

    .line 393
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    new-instance v0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    .line 398
    move-object v1, v0

    .line 399
    move-object/from16 v2, p0

    .line 401
    move-object v3, v9

    .line 402
    move-object/from16 v4, p2

    .line 404
    move/from16 v5, p4

    .line 406
    move-object/from16 v7, p5

    .line 408
    invoke-direct/range {v1 .. v7}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;ZLs0/a;Lcom/android/fileexplorer/filemanager/FileTransferParams;)V

    .line 411
    :try_start_19a
    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->call()Ljava/lang/Integer;

    .line 414
    move-result-object v0

    .line 415
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 418
    move-result v0
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1a2} :catch_1a3

    .line 419
    return v0

    .line 420
    :catch_1a3
    move-exception v0

    .line 421
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 424
    return v13

    .line 425
    :cond_1a8
    :goto_1a8
    const-string v0, "CopyFile: null parameter"

    .line 427
    invoke-static {v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const/4 v0, 0x2

    .line 431
    return v0
.end method

.method public static copyFileAndDirectoryToLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;)I
    .registers 13

    .line 1
    const/4 v6, 0x1

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-static/range {v0 .. v6}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/io/File;ZZLcom/android/fileexplorer/filemanager/FileTransferParams;Z)I

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static copyOrMoveFileAndDirectoryToMtp(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;Z)I
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    const-string v0, "Doing byte copy of document: "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "LocalFileOperationUtils"

    .line 20
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1f

    .line 29
    const-string v0, "vnd.android.document/directory"

    .line 31
    goto :goto_2b

    .line 32
    :cond_1f
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    :goto_2b
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    :try_start_2f
    new-instance v3, Ljava/io/FileInputStream;

    .line 50
    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 53
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_8b

    .line 62
    instance-of v3, p0, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 64
    if-eqz v3, :cond_8b

    .line 66
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    invoke-static {}, Lcom/android/fileexplorer/mtp/MTPManager;->getInstance()Lcom/android/fileexplorer/mtp/MTPManager;

    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4, v3}, Lcom/android/fileexplorer/mtp/MTPManager;->listDocumentInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 77
    move-result-object v3

    .line 78
    if-eqz v3, :cond_8b

    .line 80
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    move-result-object v3

    .line 84
    :cond_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_8b

    .line 90
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    move-result-object v4

    .line 94
    check-cast v4, Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 96
    invoke-virtual {v4}, Lcom/android/fileexplorer/mtp/DocumentInfo;->isDirectory()Z

    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_53

    .line 102
    iget-object v5, v4, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    .line 104
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_53

    .line 110
    move-object v3, p0

    .line 111
    check-cast v3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 113
    invoke-static {v3, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_80

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 122
    move-result-object v3

    .line 123
    iget-object v4, v4, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 125
    invoke-static {v3, v4}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    :try_end_7f
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_7f} :catch_87
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_7f} :catch_82

    .line 128
    goto :goto_8b

    .line 129
    :cond_80
    const/4 p0, 0x1

    .line 130
    return p0

    .line 131
    :catch_82
    move-exception v3

    .line 132
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    goto :goto_8b

    .line 136
    :catch_87
    move-exception v3

    .line 137
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    :cond_8b
    :goto_8b
    invoke-static {p2, v0, v2}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->createDocument(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 143
    move-result-object v0

    .line 144
    if-nez v0, :cond_af

    .line 146
    new-instance p0, Ljava/lang/StringBuilder;

    .line 148
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    const-string p1, "Couldn\'t create destination document "

    .line 153
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string p1, " in directory "

    .line 161
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object p0

    .line 171
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 p0, 0x4

    .line 175
    return p0

    .line 176
    :cond_af
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 179
    move-result-object p2

    .line 180
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 183
    move-result-object p2

    .line 184
    invoke-static {p2, v0}, Lcom/android/fileexplorer/mtp/DocumentInfo;->createFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/fileexplorer/mtp/DocumentInfo;

    .line 187
    move-result-object p2

    .line 188
    if-nez p2, :cond_bf

    .line 190
    const/4 p0, 0x2

    .line 191
    return p0

    .line 192
    :cond_bf
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_ca

    .line 198
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyDirectoryToMtp(Landroid/content/Context;Ljava/io/File;Lcom/android/fileexplorer/mtp/DocumentInfo;Z)I

    .line 201
    move-result p0

    .line 202
    return p0

    .line 203
    :cond_ca
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->copyOrMoveSingleFileToMtp(Landroid/content/Context;Ljava/io/File;Lcom/android/fileexplorer/mtp/DocumentInfo;Z)I

    .line 206
    move-result p0

    .line 207
    return p0
.end method

.method private static copyOrMoveSingleFileToMtp(Landroid/content/Context;Ljava/io/File;Lcom/android/fileexplorer/mtp/DocumentInfo;Z)I
    .registers 16

    .line 1
    const-string v0, "Error closing destination."

    .line 3
    const-string v1, "Error copying bytes."

    .line 5
    const-string v2, "Cleaning up failed operation leftovers."

    .line 7
    const-string v3, "LocalFileOperationUtils"

    .line 9
    if-nez p1, :cond_c

    .line 11
    const/4 p0, 0x2

    .line 12
    return p0

    .line 13
    :cond_c
    new-instance v4, Landroid/os/CancellationSignal;

    .line 15
    invoke-direct {v4}, Landroid/os/CancellationSignal;-><init>()V

    .line 18
    const/4 v5, 0x4

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x1

    .line 21
    :try_start_14
    new-instance v8, Ljava/io/FileInputStream;

    .line 23
    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_19} :catch_c5
    .catchall {:try_start_14 .. :try_end_19} :catchall_c1

    .line 26
    :try_start_19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    move-result-object v9

    .line 30
    iget-object v10, p2, Lcom/android/fileexplorer/mtp/DocumentInfo;->authority:Ljava/lang/String;

    .line 32
    invoke-static {v9, v10}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->acquireUnstableProviderOrThrow(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 35
    move-result-object v9

    .line 36
    iget-object v10, p2, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 38
    const-string v11, "w"

    .line 40
    invoke-virtual {v9, v10, v11, v4}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 43
    move-result-object v9
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2b} :catch_7d
    .catchall {:try_start_19 .. :try_end_2b} :catchall_79

    .line 44
    :try_start_2b
    new-instance v10, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 46
    invoke-direct {v10, v9}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_30} :catch_74
    .catchall {:try_start_2b .. :try_end_30} :catchall_6f

    .line 49
    const/16 v6, 0x4000

    .line 51
    :try_start_32
    invoke-static {p0, v8, v10, v6}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 54
    move-result p0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_36} :catch_6c
    .catchall {:try_start_32 .. :try_end_36} :catchall_6a

    .line 55
    const/4 v6, 0x5

    .line 56
    if-ne p0, v6, :cond_44

    .line 58
    :try_start_39
    iget-object p1, p2, Lcom/android/fileexplorer/mtp/DocumentInfo;->derivedUri:Landroid/net/Uri;

    .line 60
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/CustomDocumentsContract;->deleteDocument(Landroid/net/Uri;)Z

    .line 63
    goto :goto_4b

    .line 64
    :catchall_3f
    move-exception p1

    .line 65
    move v5, p0

    .line 66
    goto :goto_71

    .line 67
    :catch_42
    move-exception p1

    .line 68
    goto :goto_77

    .line 69
    :cond_44
    if-nez p0, :cond_4b

    .line 71
    if-eqz p3, :cond_4b

    .line 73
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4b} :catch_42
    .catchall {:try_start_39 .. :try_end_4b} :catchall_3f

    .line 76
    :cond_4b
    :goto_4b
    if-eqz p0, :cond_5f

    .line 78
    if-eq p0, v7, :cond_5f

    .line 80
    if-eqz v9, :cond_59

    .line 82
    :try_start_51
    invoke-virtual {v9, v1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    .line 85
    goto :goto_59

    .line 86
    :catch_55
    move-exception p1

    .line 87
    invoke-static {v3, v0, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :cond_59
    :goto_59
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v4}, Landroid/os/CancellationSignal;->cancel()V

    .line 96
    :cond_5f
    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 99
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 102
    invoke-static {v9}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 105
    goto/16 :goto_ec

    .line 107
    :catchall_6a
    move-exception p1

    .line 108
    goto :goto_71

    .line 109
    :catch_6c
    move-exception p1

    .line 110
    move p0, v5

    .line 111
    goto :goto_77

    .line 112
    :catchall_6f
    move-exception p1

    .line 113
    move-object v10, v6

    .line 114
    :goto_71
    move-object v6, v9

    .line 115
    goto/16 :goto_f0

    .line 117
    :catch_74
    move-exception p1

    .line 118
    move p0, v5

    .line 119
    move-object v10, v6

    .line 120
    :goto_77
    move-object v6, v9

    .line 121
    goto :goto_80

    .line 122
    :catchall_79
    move-exception p1

    .line 123
    move-object v10, v6

    .line 124
    goto/16 :goto_f0

    .line 126
    :catch_7d
    move-exception p1

    .line 127
    move p0, v5

    .line 128
    move-object v10, v6

    .line 129
    :goto_80
    :try_start_80
    new-instance p3, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    const-string v9, "Failed to open the destination file "

    .line 136
    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object p2, p2, Lcom/android/fileexplorer/mtp/DocumentInfo;->displayName:Ljava/lang/String;

    .line 141
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string p2, " for writing due to an exception."

    .line 146
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object p2

    .line 153
    invoke-static {v3, p2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9b
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_9b} :catch_bc
    .catchall {:try_start_80 .. :try_end_9b} :catchall_b9

    .line 156
    if-eqz p0, :cond_af

    .line 158
    if-eq p0, v7, :cond_af

    .line 160
    if-eqz v6, :cond_a9

    .line 162
    :try_start_a1
    invoke-virtual {v6, v1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    .line 165
    goto :goto_a9

    .line 166
    :catch_a5
    move-exception p0

    .line 167
    invoke-static {v3, v0, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    :cond_a9
    :goto_a9
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v4}, Landroid/os/CancellationSignal;->cancel()V

    .line 176
    :cond_af
    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 179
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 182
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 185
    return v5

    .line 186
    :catchall_b9
    move-exception p1

    .line 187
    move v5, p0

    .line 188
    goto :goto_f0

    .line 189
    :catch_bc
    move-exception p1

    .line 190
    move v5, p0

    .line 191
    move-object p0, v6

    .line 192
    move-object v6, v8

    .line 193
    goto :goto_c8

    .line 194
    :catchall_c1
    move-exception p1

    .line 195
    move-object v8, v6

    .line 196
    move-object v10, v8

    .line 197
    goto :goto_f0

    .line 198
    :catch_c5
    move-exception p1

    .line 199
    move-object p0, v6

    .line 200
    move-object v10, p0

    .line 201
    :goto_c8
    :try_start_c8
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 204
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_ce
    .catchall {:try_start_c8 .. :try_end_ce} :catchall_ed

    .line 207
    if-eqz v5, :cond_e2

    .line 209
    if-eq v5, v7, :cond_e2

    .line 211
    if-eqz p0, :cond_dc

    .line 213
    :try_start_d4
    invoke-virtual {p0, v1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_d8

    .line 216
    goto :goto_dc

    .line 217
    :catch_d8
    move-exception p1

    .line 218
    invoke-static {v3, v0, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    :cond_dc
    :goto_dc
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v4}, Landroid/os/CancellationSignal;->cancel()V

    .line 227
    :cond_e2
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 230
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 233
    invoke-static {p0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 236
    move p0, v5

    .line 237
    :goto_ec
    return p0

    .line 238
    :catchall_ed
    move-exception p1

    .line 239
    move-object v8, v6

    .line 240
    move-object v6, p0

    .line 241
    :goto_f0
    if-eqz v5, :cond_104

    .line 243
    if-eq v5, v7, :cond_104

    .line 245
    if-eqz v6, :cond_fe

    .line 247
    :try_start_f6
    invoke-virtual {v6, v1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_fa

    .line 250
    goto :goto_fe

    .line 251
    :catch_fa
    move-exception p0

    .line 252
    invoke-static {v3, v0, p0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    :cond_fe
    :goto_fe
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v4}, Landroid/os/CancellationSignal;->cancel()V

    .line 261
    :cond_104
    invoke-static {v8}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 264
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 267
    invoke-static {v6}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 270
    throw p1
.end method

.method public static createFileOrDir(Ljava/lang/String;Z)Z
    .registers 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    new-instance v0, Ljava/io/File;

    .line 11
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eqz v2, :cond_15

    .line 21
    return v3

    .line 22
    :cond_15
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_2d

    .line 28
    if-eqz p1, :cond_25

    .line 30
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentDir(Ljava/io/File;)Ls0/a;

    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_24

    .line 36
    move v1, v3

    .line 37
    :cond_24
    return v1

    .line 38
    :cond_25
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ljava/io/File;)Ls0/a;

    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_2c

    .line 44
    move v1, v3

    .line 45
    :cond_2c
    return v1

    .line 46
    :cond_2d
    if-eqz p1, :cond_34

    .line 48
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :cond_34
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 56
    move-result-object p0

    .line 57
    if-nez p0, :cond_3b

    .line 59
    return v1

    .line 60
    :cond_3b
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_49

    .line 66
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_48

    .line 72
    goto :goto_49

    .line 73
    :cond_48
    return v1

    .line 74
    :cond_49
    :goto_49
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 77
    move-result p0
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_4d} :catch_4e

    .line 78
    return p0

    .line 79
    :catch_4e
    move-exception p0

    .line 80
    const-string p1, "createFileOrDir error: "

    .line 82
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    const-string p1, "LocalFileOperationUtils"

    .line 99
    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return v1
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static mkDir(Ljava/lang/String;)I
    .registers 8

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return v1

    .line 10
    :cond_9
    new-instance v0, Ljava/io/File;

    .line 12
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_17

    .line 21
    const/16 p0, 0xe

    .line 23
    return p0

    .line 24
    :cond_17
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, p0}, Lcom/android/fileexplorer/model/StorageHelper;->destVolumeBlockSize(Ljava/lang/String;)J

    .line 31
    move-result-wide v3

    .line 32
    invoke-virtual {v2, p0}, Lcom/android/fileexplorer/model/StorageHelper;->destVolumeFreeSpace(Ljava/lang/String;)J

    .line 35
    move-result-wide v5

    .line 36
    cmp-long v2, v3, v5

    .line 38
    const-string v3, "LocalFileOperationUtils"

    .line 40
    if-lez v2, :cond_30

    .line 42
    const-string p0, "not enough space"

    .line 44
    invoke-static {v3, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 p0, 0x3

    .line 48
    return p0

    .line 49
    :cond_30
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    .line 52
    move-result v2

    .line 53
    const/4 v4, 0x0

    .line 54
    if-eqz v2, :cond_61

    .line 56
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->checkSDRootPathWritable()Z

    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_5e

    .line 62
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentDir(Ljava/io/File;)Ls0/a;

    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_58

    .line 68
    const-string p0, "createFolder = "

    .line 70
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    move-result-object p0

    .line 74
    check-cast v2, Ls0/c;

    .line 76
    iget-object v0, v2, Ls0/c;->c:Landroid/net/Uri;

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    invoke-static {v3, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return v4

    .line 89
    :cond_58
    const-string v2, "cannot happen, documentFile is null"

    .line 91
    invoke-static {v3, v2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    goto :goto_61

    .line 95
    :cond_5e
    const/16 p0, 0x11

    .line 97
    return p0

    .line 98
    :cond_61
    :goto_61
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_a8

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v0, " created"

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    invoke-static {v3, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "/FileExplorer/.safebox"

    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_a7

    .line 136
    const-string v0, "/"

    .line 138
    const-string v1, ".nomedia"

    .line 140
    invoke-static {p0, v0, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object p0

    .line 144
    new-instance v0, Ljava/io/File;

    .line 146
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 152
    move-result p0

    .line 153
    if-nez p0, :cond_a7

    .line 155
    :try_start_9a
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 158
    const-string p0, "nomedia created"

    .line 160
    invoke-static {v3, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a2} :catch_a3

    .line 163
    goto :goto_a7

    .line 164
    :catch_a3
    move-exception p0

    .line 165
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    :cond_a7
    :goto_a7
    return v4

    .line 169
    :cond_a8
    const-string p0, "create folder "

    .line 171
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v0, " failed"

    .line 184
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object p0

    .line 191
    invoke-static {v3, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return v1
.end method

.method private static moveFilesInSameVolume(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;Z)I
    .registers 7

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_58

    .line 7
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_16

    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_16
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->isToAll()Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2f

    .line 33
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-static {p0, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite2(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)I

    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setStatus(I)V

    .line 48
    :cond_2f
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->getStatus()I

    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x1

    .line 57
    if-eq v0, v1, :cond_4e

    .line 59
    const/4 v2, 0x2

    .line 60
    if-eq v0, v2, :cond_43

    .line 62
    const/4 p0, 0x3

    .line 63
    if-eq v0, p0, :cond_42

    .line 65
    const/4 p0, 0x4

    .line 66
    return p0

    .line 67
    :cond_42
    return v1

    .line 68
    :cond_43
    invoke-static {p2}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    .line 71
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/model/FileIconHelper;->clearSingleMemCache(Ljava/io/File;)V

    .line 78
    goto :goto_58

    .line 79
    :cond_4e
    new-instance v0, Ljava/io/File;

    .line 81
    invoke-static {p2}, Lcom/android/fileexplorer/model/Util;->renameReal(Ljava/io/File;)Ljava/lang/String;

    .line 84
    move-result-object p2

    .line 85
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    move-object p2, v0

    .line 89
    :cond_58
    :goto_58
    invoke-static {p2}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_63

    .line 95
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->moveFilesInSameVolume28(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;Z)I

    .line 98
    move-result p0

    .line 99
    return p0

    .line 100
    :cond_63
    invoke-static {p0, p1, p2, p3}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->moveFilesInSameVolumeNormal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;Z)I

    .line 103
    move-result p0

    .line 104
    return p0
.end method

.method private static moveFilesInSameVolume28(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;Z)I
    .registers 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .line 1
    const-string v0, "LocalFileOperationUtils"

    .line 3
    const-string v1, "moveFilesInSameVolume28"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->isAndroidPAndLater()Z

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x4

    .line 13
    if-nez v1, :cond_f

    .line 15
    return v2

    .line 16
    :cond_f
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    .line 19
    move-result v1

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    const/4 v5, 0x0

    .line 23
    if-eqz v1, :cond_b2

    .line 25
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_27

    .line 39
    return v5

    .line 40
    :cond_27
    if-nez p3, :cond_36

    .line 42
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 45
    move-result-object p3

    .line 46
    invoke-static {p0, p3}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_34

    .line 52
    goto :goto_36

    .line 53
    :cond_34
    move p0, v5

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    :goto_36
    move p0, v4

    .line 56
    :goto_37
    if-eqz p0, :cond_b1

    .line 58
    invoke-static {p2}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentFile(Ljava/io/File;)Ls0/a;

    .line 61
    move-result-object p0

    .line 62
    if-eqz p0, :cond_ab

    .line 64
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentFile(Ljava/io/File;)Ls0/a;

    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_51

    .line 70
    move-object p3, p1

    .line 71
    check-cast p3, Ls0/c;

    .line 73
    iget-object p3, p3, Ls0/c;->c:Landroid/net/Uri;

    .line 75
    iget-object p1, p1, Ls0/a;->a:Ls0/a;

    .line 77
    check-cast p1, Ls0/c;

    .line 79
    iget-object p1, p1, Ls0/c;->c:Landroid/net/Uri;

    .line 81
    goto :goto_53

    .line 82
    :cond_51
    move-object p1, v3

    .line 83
    move-object p3, p1

    .line 84
    :goto_53
    iget-object v1, p0, Ls0/a;->a:Ls0/a;

    .line 86
    check-cast p0, Ls0/c;

    .line 88
    :try_start_57
    iget-object v4, p0, Ls0/c;->b:Landroid/content/Context;

    .line 90
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 93
    move-result-object v4

    .line 94
    iget-object p0, p0, Ls0/c;->c:Landroid/net/Uri;

    .line 96
    invoke-static {v4, p0}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    .line 99
    move-result p0
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_63} :catch_64

    .line 100
    goto :goto_65

    .line 101
    :catch_64
    move p0, v5

    .line 102
    :goto_65
    if-eqz p0, :cond_a8

    .line 104
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/model/FileIconHelper;->clearSingleMemCache(Ljava/io/File;)V

    .line 111
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 114
    move-result-object p0

    .line 115
    invoke-static {p0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V

    .line 118
    :try_start_75
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 125
    move-result-object p0

    .line 126
    check-cast v1, Ls0/c;

    .line 128
    iget-object p2, v1, Ls0/c;->c:Landroid/net/Uri;

    .line 130
    invoke-static {p0, p3, p1, p2}, Landroid/provider/DocumentsContract;->moveDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    .line 133
    move-result-object v3
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_85} :catch_86

    .line 134
    goto :goto_90

    .line 135
    :catch_86
    move-exception p0

    .line 136
    const-string p1, "move file by documentFile error: "

    .line 138
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    move-result-object p1

    .line 142
    invoke-static {p0, p1, v0}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 145
    :goto_90
    new-instance p0, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    const-string p1, "moveDocument result uri = "

    .line 152
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object p0

    .line 162
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    if-eqz v3, :cond_a7

    .line 167
    move v2, v5

    .line 168
    :cond_a7
    return v2

    .line 169
    :cond_a8
    const/16 p0, 0xa

    .line 171
    return p0

    .line 172
    :cond_ab
    const-string p0, "moveFilesInSameVolume28 documentFile = null!"

    .line 174
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    goto :goto_b2

    .line 178
    :cond_b1
    return v4

    .line 179
    :cond_b2
    :goto_b2
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentUri(Ljava/io/File;)Landroid/net/Uri;

    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 186
    move-result-object p3

    .line 187
    invoke-static {p3}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 190
    move-result-object p3

    .line 191
    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 194
    move-result-object v1

    .line 195
    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 198
    move-result-object v1

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    .line 201
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    const-string v7, "originalDocumentUri = "

    .line 206
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    const-string v7, ", originalDocumentParentUri = "

    .line 214
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    const-string v7, ", newDocumentParentUri = "

    .line 222
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object v6

    .line 232
    invoke-static {v0, v6}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    if-eqz p0, :cond_15e

    .line 237
    if-eqz p3, :cond_15e

    .line 239
    if-nez v1, :cond_f1

    .line 241
    goto :goto_15e

    .line 242
    :cond_f1
    :try_start_f1
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 245
    move-result-object v6

    .line 246
    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 249
    move-result-object v7

    .line 250
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    move-result v6

    .line 254
    if-eqz v6, :cond_10d

    .line 256
    const-string p0, "moveFilesInSameVolume28 same parent,rename"

    .line 258
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 264
    move-result-object p0

    .line 265
    invoke-static {p1, p0, v4}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->rename(Ljava/io/File;Ljava/lang/String;Z)I

    .line 268
    move-result p0

    .line 269
    return p0

    .line 270
    :cond_10d
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 273
    move-result-object v6

    .line 274
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 277
    move-result-object v6

    .line 278
    invoke-static {v6, p0, p3, v1}, Landroid/provider/DocumentsContract;->moveDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    .line 281
    move-result-object v3

    .line 282
    new-instance p0, Ljava/lang/StringBuilder;

    .line 284
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    const-string p3, "uri = "

    .line 289
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    move-result-object p0

    .line 299
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 305
    move-result-object p0

    .line 306
    if-eqz v3, :cond_15a

    .line 308
    invoke-static {p0, p2}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->checkIfNeedRename(Ljava/lang/String;Ljava/io/File;)Z

    .line 311
    move-result p1

    .line 312
    if-eqz p1, :cond_15a

    .line 314
    const-string p1, "move success needRename"

    .line 316
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance p1, Ljava/io/File;

    .line 321
    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 324
    move-result-object p3

    .line 325
    invoke-direct {p1, p3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 331
    move-result-object p0

    .line 332
    invoke-static {p1, p0, v4}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->rename(Ljava/io/File;Ljava/lang/String;Z)I

    .line 335
    move-result p0
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_14f} :catch_150

    .line 336
    return p0

    .line 337
    :catch_150
    move-exception p0

    .line 338
    const-string p1, "copy file by document error:"

    .line 340
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    move-result-object p1

    .line 344
    invoke-static {p0, p1, v0}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 347
    :cond_15a
    if-eqz v3, :cond_15d

    .line 349
    move v2, v5

    .line 350
    :cond_15d
    return v2

    .line 351
    :cond_15e
    :goto_15e
    const-string p0, "some uri maybe null"

    .line 353
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return v2
.end method

.method private static moveFilesInSameVolumeNormal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/io/File;Ljava/io/File;Z)I
    .registers 9

    .line 1
    const-string v0, "copyTag"

    .line 3
    const-string v1, "moveFilesInSameVolumeNormal"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x4

    .line 13
    const-string v2, "LocalFileOperationUtils"

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v0, :cond_58

    .line 18
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_20

    .line 32
    return v3

    .line 33
    :cond_20
    const/4 v0, 0x1

    .line 34
    if-nez p3, :cond_30

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 39
    move-result-object p3

    .line 40
    invoke-static {p0, p3}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->ifUserChooseOverwrite(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;)Z

    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_2e

    .line 46
    goto :goto_30

    .line 47
    :cond_2e
    move p0, v3

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    :goto_30
    move p0, v0

    .line 50
    :goto_31
    if-eqz p0, :cond_57

    .line 52
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_54

    .line 58
    invoke-static {}, Lcom/android/fileexplorer/model/FileIconHelper;->getInstance()Lcom/android/fileexplorer/model/FileIconHelper;

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/model/FileIconHelper;->clearSingleMemCache(Ljava/io/File;)V

    .line 65
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_4e

    .line 78
    return v3

    .line 79
    :cond_4e
    const-string p0, "moveFilesInSameVolumeNormal: rename fail. "

    .line 81
    invoke-static {v2, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return v1

    .line 85
    :cond_54
    const/16 p0, 0xa

    .line 87
    return p0

    .line 88
    :cond_57
    return v0

    .line 89
    :cond_58
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 92
    move-result p0

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    const-string p2, "moveFilesInSameVolumeNormal: rename File result = "

    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    if-eqz p0, :cond_73

    .line 115
    move v1, v3

    .line 116
    :cond_73
    return v1
.end method

.method public static rename(Ljava/io/File;Ljava/lang/String;Z)I
    .registers 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "LocalFileOperationUtils"

    .line 4
    if-eqz p0, :cond_6b

    .line 6
    if-nez p1, :cond_8

    .line 8
    goto :goto_6b

    .line 9
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Lcom/android/fileexplorer/util/ScopeStorageUtils;->isLimit(Ljava/lang/String;)Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_15

    .line 19
    const/16 p0, 0xf

    .line 21
    return p0

    .line 22
    :cond_15
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v2

    .line 30
    const/16 v3, 0xe

    .line 32
    if-eqz v2, :cond_27

    .line 34
    const-string p0, "Rename: name not changed"

    .line 36
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return v3

    .line 40
    :cond_27
    new-instance v2, Ljava/io/File;

    .line 42
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_3c

    .line 55
    const-string p0, "rename: name not changed"

    .line 57
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return v3

    .line 61
    :cond_3c
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_4a

    .line 67
    if-nez p2, :cond_4a

    .line 69
    const-string p0, "rename: the file with same name exists"

    .line 71
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return v3

    .line 75
    :cond_4a
    invoke-static {v2}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_55

    .line 81
    invoke-static {p0, v2, p2}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->renameByDocumentFile(Ljava/io/File;Ljava/io/File;Z)I

    .line 84
    move-result p2

    .line 85
    goto :goto_59

    .line 86
    :cond_55
    invoke-static {p0, v2, p2}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->renameFileNormal(Ljava/io/File;Ljava/io/File;Z)I

    .line 89
    move-result p2

    .line 90
    :goto_59
    if-nez p2, :cond_6a

    .line 92
    new-array v0, v0, [Ljava/lang/String;

    .line 94
    const/4 v1, 0x0

    .line 95
    aput-object p1, v0, v1

    .line 97
    const/4 p1, 0x1

    .line 98
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    aput-object p0, v0, p1

    .line 104
    invoke-static {v0}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan([Ljava/lang/String;)V

    .line 107
    :cond_6a
    return p2

    .line 108
    :cond_6b
    :goto_6b
    const-string p0, "Rename: null parameter"

    .line 110
    invoke-static {v1, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return v0
.end method

.method private static renameByDocumentFile(Ljava/io/File;Ljava/io/File;Z)I
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->checkSDRootPathWritable()Z

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x11

    .line 7
    if-nez v0, :cond_9

    .line 9
    return v1

    .line 10
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_26

    .line 16
    if-eqz p2, :cond_26

    .line 18
    invoke-static {p1}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentFile(Ljava/io/File;)Ls0/a;

    .line 21
    move-result-object p2

    .line 22
    if-eqz p2, :cond_25

    .line 24
    check-cast p2, Ls0/c;

    .line 26
    :try_start_19
    iget-object v0, p2, Ls0/c;->b:Landroid/content/Context;

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    move-result-object v0

    .line 32
    iget-object p2, p2, Ls0/c;->c:Landroid/net/Uri;

    .line 34
    invoke-static {v0, p2}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_26

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    return v1

    .line 39
    :catch_26
    :cond_26
    :goto_26
    :try_start_26
    invoke-static {p0}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->getDocumentUri(Ljava/io/File;)Landroid/net/Uri;

    .line 42
    move-result-object p0

    .line 43
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    invoke-static {p2, p0, p1}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    move-result-object p0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3a} :catch_3e

    .line 59
    if-eqz p0, :cond_4a

    .line 61
    const/4 p0, 0x0

    .line 62
    return p0

    .line 63
    :catch_3e
    move-exception p0

    .line 64
    const-string p1, "renameByDocumentFile error: "

    .line 66
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    move-result-object p1

    .line 70
    const-string p2, "LocalFileOperationUtils"

    .line 72
    invoke-static {p0, p1, p2}, La/a;->t(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 75
    :cond_4a
    const/4 p0, 0x4

    .line 76
    return p0
.end method

.method public static renameFile(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getPathFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_19

    .line 17
    const-string p0, "LocalFileOperationUtils"

    .line 19
    const-string p1, "path error"

    .line 21
    invoke-static {p0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const/4 p0, 0x2

    .line 25
    return p0

    .line 26
    :cond_19
    new-instance v1, Ljava/io/File;

    .line 28
    iget-object v2, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 30
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {v1, p1, v2}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->rename(Ljava/io/File;Ljava/lang/String;Z)I

    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_40

    .line 40
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2, v0, p1}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->renameFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-boolean v2, p0, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 49
    if-nez v2, :cond_36

    .line 51
    iget-boolean p0, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 53
    if-eqz p0, :cond_3d

    .line 55
    :cond_36
    invoke-static {}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->getInstance()Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;

    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0, v0, p1}, Lcom/android/fileexplorer/util/dao/FavoriteDaoUtils;->update(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_3d
    invoke-static {v0, p1}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->checkFileLocationChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_40
    return v1
.end method

.method public static renameFileNormal(Ljava/io/File;Ljava/io/File;Z)I
    .registers 4

    .line 1
    const-string v0, "LocalFileOperationUtils"

    .line 3
    if-eqz p2, :cond_10

    .line 5
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_10

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_32

    .line 17
    :cond_10
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_32

    .line 23
    const-string p0, "renameFileNormal success"

    .line 25
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_1d

    .line 28
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :catch_1d
    move-exception p0

    .line 31
    const-string p1, "renameFileNormal error: "

    .line 33
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-static {v0, p0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_32
    const/4 p0, 0x4

    .line 52
    return p0
.end method
