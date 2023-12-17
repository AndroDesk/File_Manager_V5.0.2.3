.class Lcom/android/fileexplorer/model/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ZipUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decompressZipArchive(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 9
    const-string v1, "unziptot_utf8"

    .line 11
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 14
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 16
    invoke-static {p0, p1, p2, v1}, Lcom/android/fileexplorer/model/ZipUtils;->decompressZipArchiveReal(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)I

    .line 19
    move-result v1

    .line 20
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 23
    if-nez v1, :cond_1e

    .line 25
    const-string p0, "ZipUtils_decompressZip_WithZipFile_UTF8"

    .line 27
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 30
    goto :goto_44

    .line 31
    :cond_1e
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/ArchiveHelper;->getArchiveRootDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Ljava/io/File;

    .line 37
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-static {v2, v1}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;Z)Z

    .line 44
    const-string v1, "unziptot_gbk"

    .line 46
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 49
    const-string v1, "GBK"

    .line 51
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 54
    move-result-object v1

    .line 55
    invoke-static {p0, p1, p2, v1}, Lcom/android/fileexplorer/model/ZipUtils;->decompressZipArchiveReal(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)I

    .line 58
    move-result v1

    .line 59
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 62
    if-nez v1, :cond_44

    .line 64
    const-string p0, "ZipUtils_decompressZip_WithZipFile_GBK"

    .line 66
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 69
    :cond_44
    :goto_44
    const-string p0, "decompressZipArchive result = "

    .line 71
    const-string p1, "ZipUtils"

    .line 73
    invoke-static {p0, v1, p1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 76
    return v1
.end method

.method private static decompressZipArchiveReal(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)I
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")I"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p3

    .line 3
    const-string v2, "com.android.fileexplorer"

    .line 5
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eqz v0, :cond_c

    .line 12
    return v3

    .line 13
    :cond_c
    const-string v4, "ZipUtils"

    .line 15
    if-eqz v1, :cond_24

    .line 17
    const-string v0, "decompressZipArchiveReal: charset = "

    .line 19
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual/range {p3 .. p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-static {v4, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_24
    invoke-static/range {p1 .. p2}, Lcom/android/fileexplorer/model/ArchiveHelper;->getArchiveRootDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v5

    .line 41
    invoke-static {v5}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2f

    .line 47
    return v0

    .line 48
    :cond_2f
    const/4 v0, 0x1

    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    :try_start_32
    const-string v8, "android.os.MiPerf"

    .line 53
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 56
    move-result-object v8

    .line 57
    const-string v9, "miPerfSceneBoostAcquire"

    .line 59
    new-array v10, v3, [Ljava/lang/Class;

    .line 61
    const-class v11, Ljava/lang/String;

    .line 63
    aput-object v11, v10, v6

    .line 65
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 67
    aput-object v11, v10, v0

    .line 69
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 72
    move-result-object v8
    :try_end_48
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_48} :catch_64
    .catch Ljava/lang/NoSuchMethodException; {:try_start_32 .. :try_end_48} :catch_62
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_48} :catch_60
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_32 .. :try_end_48} :catch_5e

    .line 73
    :try_start_48
    new-array v9, v3, [Ljava/lang/Object;

    .line 75
    aput-object v2, v9, v6

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v10

    .line 81
    aput-object v10, v9, v0

    .line 83
    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catch Ljava/lang/ClassNotFoundException; {:try_start_48 .. :try_end_55} :catch_5c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_48 .. :try_end_55} :catch_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_48 .. :try_end_55} :catch_58
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_48 .. :try_end_55} :catch_56

    .line 86
    goto :goto_69

    .line 87
    :catch_56
    move-exception v0

    .line 88
    goto :goto_66

    .line 89
    :catch_58
    move-exception v0

    .line 90
    goto :goto_66

    .line 91
    :catch_5a
    move-exception v0

    .line 92
    goto :goto_66

    .line 93
    :catch_5c
    move-exception v0

    .line 94
    goto :goto_66

    .line 95
    :catch_5e
    move-exception v0

    .line 96
    goto :goto_65

    .line 97
    :catch_60
    move-exception v0

    .line 98
    goto :goto_65

    .line 99
    :catch_62
    move-exception v0

    .line 100
    goto :goto_65

    .line 101
    :catch_64
    move-exception v0

    .line 102
    :goto_65
    move-object v8, v7

    .line 103
    :goto_66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    :goto_69
    const/4 v9, 0x4

    .line 107
    :try_start_6a
    new-instance v10, Ljava/util/zip/ZipFile;

    .line 109
    move-object/from16 v11, p1

    .line 111
    invoke-direct {v10, v11, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_71} :catch_2a2
    .catchall {:try_start_6a .. :try_end_71} :catchall_29f

    .line 114
    :try_start_71
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 117
    move-result-object v1

    .line 118
    invoke-static {v5}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/lang/String;)Z

    .line 121
    move-result v18

    .line 122
    const-wide/16 v19, 0x0

    .line 124
    move v11, v6

    .line 125
    move-wide/from16 v12, v19

    .line 127
    :goto_7e
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 130
    move-result v0
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_82} :catch_298
    .catchall {:try_start_71 .. :try_end_82} :catchall_292

    .line 131
    const/16 v7, 0xc

    .line 133
    const-string v15, "decompressZipArchiveReal error: "

    .line 135
    if-eqz v0, :cond_f1

    .line 137
    :try_start_88
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 140
    move-result-object v0

    .line 141
    move-object v14, v0

    .line 142
    check-cast v14, Ljava/util/zip/ZipEntry;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8f} :catch_c8
    .catchall {:try_start_88 .. :try_end_8f} :catchall_c6

    .line 144
    :try_start_8f
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
    invoke-static {v0, v6}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByPath(Ljava/lang/String;Z)Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/android/fileexplorer/apptag/FileUtils;->isValidFatFilename(Ljava/lang/String;)Z

    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_bb

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    .line 160
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    const-string v3, "Filename InValid: "

    .line 165
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v0

    .line 179
    invoke-static {v4, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_b5} :catch_c4
    .catchall {:try_start_8f .. :try_end_b5} :catchall_c6

    .line 182
    const/16 v0, 0x1a

    .line 184
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 187
    return v0

    .line 188
    :cond_bb
    :try_start_bb
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 191
    move-result v0
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_bf} :catch_c4
    .catchall {:try_start_bb .. :try_end_bf} :catchall_c6

    .line 192
    if-nez v0, :cond_e1

    .line 194
    add-int/lit8 v11, v11, 0x1

    .line 196
    goto :goto_e1

    .line 197
    :catch_c4
    move-exception v0

    .line 198
    goto :goto_cb

    .line 199
    :catchall_c6
    move-exception v0

    .line 200
    goto :goto_112

    .line 201
    :catch_c8
    move-exception v0

    .line 202
    const/4 v3, 0x0

    .line 203
    move-object v14, v3

    .line 204
    :goto_cb
    :try_start_cb
    new-instance v3, Ljava/lang/StringBuilder;

    .line 206
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 223
    invoke-static {v4, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_e1} :catch_ef
    .catchall {:try_start_cb .. :try_end_e1} :catchall_c6

    .line 226
    :cond_e1
    :goto_e1
    if-nez v14, :cond_e7

    .line 228
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 231
    return v7

    .line 232
    :cond_e7
    :try_start_e7
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 235
    move-result-wide v14
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_eb} :catch_ef
    .catchall {:try_start_e7 .. :try_end_eb} :catchall_c6

    .line 236
    add-long/2addr v12, v14

    .line 237
    const/4 v7, 0x0

    .line 238
    const/4 v3, 0x2

    .line 239
    goto :goto_7e

    .line 240
    :catch_ef
    move-exception v0

    .line 241
    goto :goto_115

    .line 242
    :cond_f1
    :try_start_f1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 244
    invoke-direct {v1, v11}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 250
    move-result-object v0

    .line 251
    move-object v3, v0

    .line 252
    check-cast v3, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_fd} :catch_28d
    .catchall {:try_start_f1 .. :try_end_fd} :catchall_28a

    .line 254
    if-eqz v3, :cond_119

    .line 256
    :try_start_ff
    invoke-interface {v3, v12, v13}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setProgressMax(J)V

    .line 259
    const-wide/16 v11, 0x1

    .line 261
    invoke-interface {v3, v11, v12}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->increaseProgressBy(J)V

    .line 264
    const v0, 0x7f1102f7

    .line 267
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 270
    move-result-object v0

    .line 271
    invoke-interface {v3, v0, v6}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->setCompressProgress(Ljava/lang/String;I)V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_111} :catch_ef
    .catchall {:try_start_ff .. :try_end_111} :catchall_c6

    .line 274
    goto :goto_119

    .line 275
    :goto_112
    const/4 v7, 0x0

    .line 276
    goto/16 :goto_295

    .line 278
    :goto_115
    const/4 v1, 0x0

    .line 279
    move-object v7, v10

    .line 280
    goto/16 :goto_2a4

    .line 282
    :cond_119
    :goto_119
    :try_start_119
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 285
    move-result-object v21

    .line 286
    invoke-static {}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getInstance()Lcom/android/fileexplorer/util/ThreadPoolManager;

    .line 289
    move-result-object v0

    .line 290
    sget-object v11, Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;->UNZIP:Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;

    .line 292
    invoke-virtual {v0, v11}, Lcom/android/fileexplorer/util/ThreadPoolManager;->getPool(Lcom/android/fileexplorer/util/ThreadPoolManager$POOL_TYPE;)Ljava/util/concurrent/ExecutorService;

    .line 295
    move-result-object v0

    .line 296
    move-object/from16 v22, v0

    .line 298
    check-cast v22, Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_12b} :catch_28d
    .catchall {:try_start_119 .. :try_end_12b} :catchall_28a

    .line 300
    :try_start_12b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 303
    move-result-wide v23

    .line 304
    :goto_12f
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 307
    move-result v0

    .line 308
    const/4 v11, 0x5

    .line 309
    if-eqz v0, :cond_217

    .line 311
    if-eqz v3, :cond_14d

    .line 313
    invoke-interface {v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 316
    move-result v0
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_13c} :catch_288
    .catchall {:try_start_12b .. :try_end_13c} :catchall_284

    .line 317
    if-eqz v0, :cond_14d

    .line 319
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 322
    if-eqz v22, :cond_14c

    .line 324
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 327
    move-result v0

    .line 328
    if-nez v0, :cond_14c

    .line 330
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 333
    :cond_14c
    return v11

    .line 334
    :cond_14d
    :try_start_14d
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 337
    move-result-object v0

    .line 338
    check-cast v0, Ljava/util/zip/ZipEntry;
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_153} :catch_154
    .catchall {:try_start_14d .. :try_end_153} :catchall_284

    .line 340
    goto :goto_16c

    .line 341
    :catch_154
    move-exception v0

    .line 342
    :try_start_155
    new-instance v11, Ljava/lang/StringBuilder;

    .line 344
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 353
    move-result-object v0

    .line 354
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    move-result-object v0

    .line 361
    invoke-static {v4, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_16b} :catch_288
    .catchall {:try_start_155 .. :try_end_16b} :catchall_284

    .line 364
    const/4 v0, 0x0

    .line 365
    :goto_16c
    if-nez v0, :cond_17d

    .line 367
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 370
    if-eqz v22, :cond_17c

    .line 372
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 375
    move-result v0

    .line 376
    if-nez v0, :cond_17c

    .line 378
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 381
    :cond_17c
    return v7

    .line 382
    :cond_17d
    :try_start_17d
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 385
    move-result-object v11

    .line 386
    const-string v12, "(/[.]{2})*"

    .line 388
    const-string v13, ""

    .line 390
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    move-result-object v14

    .line 394
    new-instance v13, Ljava/io/File;

    .line 396
    invoke-direct {v13, v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 402
    move-result v11
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_192} :catch_288
    .catchall {:try_start_17d .. :try_end_192} :catchall_284

    .line 403
    if-nez v11, :cond_208

    .line 405
    :try_start_194
    invoke-virtual {v10, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 408
    move-result-object v12

    .line 409
    invoke-interface {v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 412
    move-result-object v11
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_19c} :catch_1d7
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_19c} :catch_1af
    .catchall {:try_start_194 .. :try_end_19c} :catchall_284

    .line 413
    const v0, 0x8000

    .line 416
    move-object v7, v14

    .line 417
    move/from16 v14, v18

    .line 419
    move-object/from16 v25, v15

    .line 421
    move v15, v0

    .line 422
    move-object/from16 v16, v22

    .line 424
    move-object/from16 v17, v1

    .line 426
    :try_start_1a9
    invoke-static/range {v11 .. v17}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->zipDecompressWriteDocumentFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/File;ZILjava/util/concurrent/ThreadPoolExecutor;Ljava/util/concurrent/CountDownLatch;)V
    :try_end_1ac
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1ac} :catch_1ad
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1ac} :catch_1af
    .catchall {:try_start_1a9 .. :try_end_1ac} :catchall_284

    .line 429
    goto :goto_211

    .line 430
    :catch_1ad
    move-exception v0

    .line 431
    goto :goto_1d9

    .line 432
    :catch_1af
    move-exception v0

    .line 433
    :try_start_1b0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 435
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    const-string v2, "Exception error: "

    .line 440
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 446
    move-result-object v0

    .line 447
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    move-result-object v0

    .line 454
    invoke-static {v4, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c8
    .catch Ljava/io/IOException; {:try_start_1b0 .. :try_end_1c8} :catch_288
    .catchall {:try_start_1b0 .. :try_end_1c8} :catchall_284

    .line 457
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 460
    if-eqz v22, :cond_1d6

    .line 462
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 465
    move-result v0

    .line 466
    if-nez v0, :cond_1d6

    .line 468
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 471
    :cond_1d6
    return v9

    .line 472
    :catch_1d7
    move-exception v0

    .line 473
    move-object v7, v14

    .line 474
    :goto_1d9
    :try_start_1d9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 476
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    const-string v2, "IOException error: "

    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 487
    move-result-object v0

    .line 488
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string v0, ", name:"

    .line 493
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    move-result-object v0

    .line 503
    invoke-static {v4, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f9
    .catch Ljava/io/IOException; {:try_start_1d9 .. :try_end_1f9} :catch_288
    .catchall {:try_start_1d9 .. :try_end_1f9} :catchall_284

    .line 506
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 509
    if-eqz v22, :cond_207

    .line 511
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 514
    move-result v0

    .line 515
    if-nez v0, :cond_207

    .line 517
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 520
    :cond_207
    return v9

    .line 521
    :cond_208
    move-object/from16 v25, v15

    .line 523
    :try_start_20a
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 526
    move-result-object v0

    .line 527
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    .line 530
    :goto_211
    move-object/from16 v15, v25

    .line 532
    const/16 v7, 0xc

    .line 534
    goto/16 :goto_12f

    .line 536
    :cond_217
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 539
    move-result-wide v12

    .line 540
    cmp-long v0, v12, v19

    .line 542
    if-eqz v0, :cond_236

    .line 544
    if-eqz v3, :cond_217

    .line 546
    invoke-interface {v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->isProgressCancelled()Z

    .line 549
    move-result v0
    :try_end_225
    .catch Ljava/io/IOException; {:try_start_20a .. :try_end_225} :catch_288
    .catchall {:try_start_20a .. :try_end_225} :catchall_284

    .line 550
    if-eqz v0, :cond_217

    .line 552
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 555
    if-eqz v22, :cond_235

    .line 557
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 560
    move-result v0

    .line 561
    if-nez v0, :cond_235

    .line 563
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 566
    :cond_235
    return v11

    .line 567
    :cond_236
    :try_start_236
    new-instance v0, Ljava/lang/StringBuilder;

    .line 569
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    .line 575
    move-result-object v1

    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string v1, " decompress time : "

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 587
    move-result-wide v11

    .line 588
    sub-long v11, v11, v23

    .line 590
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    move-result-object v0

    .line 597
    invoke-static {v4, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_257
    .catch Ljava/io/IOException; {:try_start_236 .. :try_end_257} :catch_288
    .catchall {:try_start_236 .. :try_end_257} :catchall_284

    .line 600
    if-eqz v8, :cond_272

    .line 602
    const/4 v1, 0x2

    .line 603
    :try_start_25a
    new-array v0, v1, [Ljava/lang/Object;

    .line 605
    aput-object v2, v0, v6

    .line 607
    const/16 v1, 0x34

    .line 609
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 612
    move-result-object v1

    .line 613
    const/4 v2, 0x1

    .line 614
    aput-object v1, v0, v2

    .line 616
    const/4 v1, 0x0

    .line 617
    invoke-virtual {v8, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26b
    .catch Ljava/lang/IllegalAccessException; {:try_start_25a .. :try_end_26b} :catch_26e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_25a .. :try_end_26b} :catch_26c
    .catch Ljava/io/IOException; {:try_start_25a .. :try_end_26b} :catch_288
    .catchall {:try_start_25a .. :try_end_26b} :catchall_284

    .line 620
    goto :goto_272

    .line 621
    :catch_26c
    move-exception v0

    .line 622
    goto :goto_26f

    .line 623
    :catch_26e
    move-exception v0

    .line 624
    :goto_26f
    :try_start_26f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 627
    :cond_272
    :goto_272
    invoke-static {v5}, Lcom/android/fileexplorer/util/MediaScanUtil;->scan(Ljava/lang/String;)V
    :try_end_275
    .catch Ljava/io/IOException; {:try_start_26f .. :try_end_275} :catch_288
    .catchall {:try_start_26f .. :try_end_275} :catchall_284

    .line 630
    invoke-static {v10}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 633
    if-eqz v22, :cond_283

    .line 635
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 638
    move-result v0

    .line 639
    if-nez v0, :cond_283

    .line 641
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 644
    :cond_283
    return v6

    .line 645
    :catchall_284
    move-exception v0

    .line 646
    move-object/from16 v7, v22

    .line 648
    goto :goto_295

    .line 649
    :catch_288
    move-exception v0

    .line 650
    goto :goto_29b

    .line 651
    :catchall_28a
    move-exception v0

    .line 652
    const/4 v1, 0x0

    .line 653
    goto :goto_294

    .line 654
    :catch_28d
    move-exception v0

    .line 655
    const/4 v1, 0x0

    .line 656
    move-object/from16 v22, v1

    .line 658
    goto :goto_29b

    .line 659
    :catchall_292
    move-exception v0

    .line 660
    move-object v1, v7

    .line 661
    :goto_294
    move-object v7, v1

    .line 662
    :goto_295
    move-object v1, v7

    .line 663
    move-object v7, v10

    .line 664
    goto :goto_2b9

    .line 665
    :catch_298
    move-exception v0

    .line 666
    move-object/from16 v22, v7

    .line 668
    :goto_29b
    move-object v7, v10

    .line 669
    move-object/from16 v1, v22

    .line 671
    goto :goto_2a4

    .line 672
    :catchall_29f
    move-exception v0

    .line 673
    move-object v1, v7

    .line 674
    goto :goto_2b9

    .line 675
    :catch_2a2
    move-exception v0

    .line 676
    move-object v1, v7

    .line 677
    :goto_2a4
    :try_start_2a4
    const-string v2, "error extract zip file"

    .line 679
    invoke-static {v4, v2, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2a9
    .catchall {:try_start_2a4 .. :try_end_2a9} :catchall_2b8

    .line 682
    invoke-static {v7}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 685
    if-eqz v1, :cond_2b7

    .line 687
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 690
    move-result v0

    .line 691
    if-nez v0, :cond_2b7

    .line 693
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 696
    :cond_2b7
    return v9

    .line 697
    :catchall_2b8
    move-exception v0

    .line 698
    :goto_2b9
    invoke-static {v7}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 701
    if-eqz v1, :cond_2c7

    .line 703
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 706
    move-result v2

    .line 707
    if-nez v2, :cond_2c7

    .line 709
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 712
    :cond_2c7
    throw v0
.end method
