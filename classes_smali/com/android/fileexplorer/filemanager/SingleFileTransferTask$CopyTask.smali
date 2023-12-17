.class Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;
.super Ljava/lang/Object;
.source "SingleFileTransferTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CopyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private isMove:Z

.field private newFile:Ljava/io/File;

.field private originalFile:Ljava/io/File;

.field private parentFile:Ls0/a;

.field public final synthetic this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;Ls0/a;Ljava/io/File;Ljava/io/File;Z)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->parentFile:Ls0/a;

    .line 8
    iput-object p3, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->originalFile:Ljava/io/File;

    .line 10
    iput-object p4, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->newFile:Ljava/io/File;

    .line 12
    iput-boolean p5, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->isMove:Z

    .line 14
    return-void
.end method

.method private checkIfNeedFSync(ILjava/lang/String;JLjava/io/FileOutputStream;)Z
    .registers 6

    .line 1
    const/4 p3, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 4
    return p3

    .line 5
    :cond_4
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 8
    move-result-object p1

    .line 9
    const/4 p4, 0x1

    .line 10
    invoke-virtual {p1, p4}, Lcom/android/fileexplorer/model/StorageHelper;->getUSBStorageInfo(Z)Lcom/android/fileexplorer/model/StorageInfo;

    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_1b

    .line 16
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1b

    .line 26
    move p1, p4

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move p1, p3

    .line 29
    :goto_1c
    invoke-direct {p0}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->isLast()Z

    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_2d

    .line 35
    if-eqz p1, :cond_2d

    .line 37
    new-instance p1, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask$1;

    .line 39
    invoke-direct {p1, p0, p5}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask$1;-><init>(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;Ljava/io/FileOutputStream;)V

    .line 42
    invoke-static {p1}, Lcom/android/fileexplorer/util/CustomThreadPool;->asyncWork(Ljava/lang/Runnable;)V

    .line 45
    return p4

    .line 46
    :cond_2d
    if-eqz p1, :cond_32

    .line 48
    invoke-static {p5}, Lcom/android/fileexplorer/apptag/FileUtils;->fSync(Ljava/io/FileOutputStream;)Z

    .line 51
    :cond_32
    return p3
.end method

.method private copy(Ls0/a;Ljava/io/File;Ljava/io/File;Z)I
    .registers 21

    .line 1
    move-object/from16 v7, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move-object/from16 v1, p2

    .line 7
    move-object/from16 v2, p3

    .line 9
    if-eqz v1, :cond_151

    .line 11
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_12

    .line 17
    goto/16 :goto_151

    .line 19
    :cond_12
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    invoke-static {v3}, Lcom/android/fileexplorer/filemanager/LocalFileOperationUtils;->mkDir(Ljava/lang/String;)I

    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_24

    .line 29
    const/4 v4, 0x1

    .line 30
    if-eq v3, v4, :cond_24

    .line 32
    const/16 v4, 0xe

    .line 34
    if-eq v3, v4, :cond_24

    .line 36
    return v3

    .line 37
    :cond_24
    const-string v8, "SingleFileTransferTask"

    .line 39
    const-string v3, "start copy"

    .line 41
    invoke-static {v8, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    .line 47
    move-result-wide v4

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    move-result-wide v9

    .line 52
    const/4 v3, 0x0

    .line 53
    :try_start_34
    new-instance v11, Ljava/io/FileInputStream;

    .line 55
    invoke-direct {v11, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_39} :catch_11c
    .catchall {:try_start_34 .. :try_end_39} :catchall_118

    .line 58
    :try_start_39
    invoke-static/range {p3 .. p3}, Lcom/android/fileexplorer/filemanager/StorageVolumeUtil;->needUseDocumentFile(Ljava/io/File;)Z

    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_7c

    .line 64
    if-nez v0, :cond_46

    .line 66
    invoke-static/range {p3 .. p3}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ljava/io/File;)Ls0/a;

    .line 69
    move-result-object v0

    .line 70
    goto :goto_4a

    .line 71
    :cond_46
    invoke-static {v0, v2}, Lcom/android/fileexplorer/filemanager/DocumentsUtils;->createDocumentFile(Ls0/a;Ljava/io/File;)Ls0/a;

    .line 74
    move-result-object v0

    .line 75
    :goto_4a
    if-eqz v0, :cond_77

    .line 77
    check-cast v0, Ls0/c;

    .line 79
    iget-object v0, v0, Ls0/c;->c:Landroid/net/Uri;

    .line 81
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 88
    move-result-object v6

    .line 89
    const-string v12, "w"

    .line 91
    invoke-virtual {v6, v0, v12}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 94
    move-result-object v6
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_5e} :catch_113
    .catchall {:try_start_39 .. :try_end_5e} :catchall_10e

    .line 95
    if-eqz v6, :cond_75

    .line 97
    :try_start_60
    new-instance v0, Ljava/io/FileOutputStream;

    .line 99
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 102
    move-result-object v12

    .line 103
    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_69
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_69} :catch_70
    .catchall {:try_start_60 .. :try_end_69} :catchall_6b

    .line 106
    move-object v3, v0

    .line 107
    goto :goto_75

    .line 108
    :catchall_6b
    move-exception v0

    .line 109
    move-object v13, v3

    .line 110
    move-object v12, v6

    .line 111
    goto/16 :goto_111

    .line 113
    :catch_70
    move-exception v0

    .line 114
    move-object v13, v3

    .line 115
    move-object v12, v6

    .line 116
    goto/16 :goto_116

    .line 118
    :cond_75
    :goto_75
    move-object v12, v6

    .line 119
    goto :goto_7d

    .line 120
    :cond_77
    :try_start_77
    const-string v0, "copySingleFileToLocal documentFile = null!"

    .line 122
    invoke-static {v8, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_77 .. :try_end_7c} :catch_113
    .catchall {:try_start_77 .. :try_end_7c} :catchall_10e

    .line 125
    :cond_7c
    move-object v12, v3

    .line 126
    :goto_7d
    if-nez v3, :cond_8e

    .line 128
    :try_start_7f
    new-instance v0, Ljava/io/FileOutputStream;

    .line 130
    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_84
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_84} :catch_8a
    .catchall {:try_start_7f .. :try_end_84} :catchall_86

    .line 133
    move-object v13, v0

    .line 134
    goto :goto_8f

    .line 135
    :catchall_86
    move-exception v0

    .line 136
    move-object v13, v3

    .line 137
    goto/16 :goto_111

    .line 139
    :catch_8a
    move-exception v0

    .line 140
    move-object v13, v3

    .line 141
    goto/16 :goto_116

    .line 143
    :cond_8e
    move-object v13, v3

    .line 144
    :goto_8f
    :try_start_8f
    invoke-direct {v7, v4, v5, v2}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->getBufferSize(JLjava/io/File;)I

    .line 147
    move-result v0

    .line 148
    iget-object v3, v7, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    .line 150
    invoke-static {v3}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->access$000(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 153
    move-result-object v3

    .line 154
    invoke-interface {v3}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 157
    move-result-object v3

    .line 158
    invoke-static {v3, v11, v13, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->writeFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 161
    move-result v0

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    .line 164
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    const-string v6, "copySingleFileToLocal: time = "

    .line 169
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 175
    move-result-wide v14

    .line 176
    sub-long/2addr v14, v9

    .line 177
    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v3

    .line 184
    invoke-static {v8, v3}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v3, 0x5

    .line 188
    if-ne v0, v3, :cond_c1

    .line 190
    invoke-static/range {p3 .. p3}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    .line 193
    goto :goto_c8

    .line 194
    :cond_c1
    if-nez v0, :cond_c8

    .line 196
    if-eqz p4, :cond_c8

    .line 198
    invoke-static/range {p2 .. p2}, Lcom/android/fileexplorer/filemanager/FileDeleteUtils;->deleteFile(Ljava/io/File;)Z

    .line 201
    :cond_c8
    :goto_c8
    iget-object v1, v7, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    .line 203
    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->access$100(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    .line 206
    move-result-object v1

    .line 207
    if-eqz v1, :cond_d9

    .line 209
    iget-object v1, v7, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    .line 211
    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->access$100(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->updateCompleteAccount()V

    .line 218
    :cond_d9
    iget-object v1, v7, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    .line 220
    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->access$100(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    .line 223
    move-result-object v1

    .line 224
    if-eqz v1, :cond_ed

    .line 226
    iget-object v1, v7, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    .line 228
    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->access$100(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {v1}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->isLast()Z

    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_f2

    .line 238
    :cond_ed
    iget-object v1, v7, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    .line 240
    invoke-static {v1}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->access$000(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 243
    :cond_f2
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 246
    move-result-object v3

    .line 247
    move-object/from16 v1, p0

    .line 249
    move v2, v0

    .line 250
    move-object v6, v13

    .line 251
    invoke-direct/range {v1 .. v6}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->checkIfNeedFSync(ILjava/lang/String;JLjava/io/FileOutputStream;)Z

    .line 254
    move-result v1
    :try_end_fe
    .catch Ljava/io/FileNotFoundException; {:try_start_8f .. :try_end_fe} :catch_10c
    .catchall {:try_start_8f .. :try_end_fe} :catchall_10a

    .line 255
    invoke-static {v11}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 258
    if-nez v1, :cond_106

    .line 260
    invoke-static {v13}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 263
    :cond_106
    invoke-static {v12}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 266
    goto :goto_145

    .line 267
    :catchall_10a
    move-exception v0

    .line 268
    goto :goto_111

    .line 269
    :catch_10c
    move-exception v0

    .line 270
    goto :goto_116

    .line 271
    :catchall_10e
    move-exception v0

    .line 272
    move-object v12, v3

    .line 273
    move-object v13, v12

    .line 274
    :goto_111
    move-object v3, v11

    .line 275
    goto :goto_147

    .line 276
    :catch_113
    move-exception v0

    .line 277
    move-object v12, v3

    .line 278
    move-object v13, v12

    .line 279
    :goto_116
    move-object v3, v11

    .line 280
    goto :goto_11f

    .line 281
    :catchall_118
    move-exception v0

    .line 282
    move-object v12, v3

    .line 283
    move-object v13, v12

    .line 284
    goto :goto_147

    .line 285
    :catch_11c
    move-exception v0

    .line 286
    move-object v12, v3

    .line 287
    move-object v13, v12

    .line 288
    :goto_11f
    :try_start_11f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 291
    const/4 v1, 0x4

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    .line 294
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    const-string v4, "error"

    .line 299
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    move-result-object v0

    .line 313
    invoke-static {v8, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13b
    .catchall {:try_start_11f .. :try_end_13b} :catchall_146

    .line 316
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 319
    invoke-static {v13}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 322
    invoke-static {v12}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 325
    move v0, v1

    .line 326
    :goto_145
    return v0

    .line 327
    :catchall_146
    move-exception v0

    .line 328
    :goto_147
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 331
    invoke-static {v13}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 334
    invoke-static {v12}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 337
    throw v0

    .line 338
    :cond_151
    :goto_151
    const/4 v0, 0x6

    .line 339
    return v0
.end method

.method private getBufferSize(JLjava/io/File;)I
    .registers 8

    .line 1
    const-wide/32 v0, 0x6400000

    .line 4
    cmp-long v0, p1, v0

    .line 6
    const v1, 0x8000

    .line 9
    if-ltz v0, :cond_d

    .line 11
    const/high16 p1, 0xa00000

    .line 13
    goto :goto_18

    .line 14
    :cond_d
    const-wide/32 v2, 0xa00000

    .line 17
    cmp-long p1, p1, v2

    .line 19
    if-lez p1, :cond_17

    .line 21
    const/high16 p1, 0x100000

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move p1, v1

    .line 25
    :goto_18
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    invoke-static {}, Lcom/android/fileexplorer/model/StorageHelper;->getInstance()Lcom/android/fileexplorer/model/StorageHelper;

    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p3}, Lcom/android/fileexplorer/model/StorageHelper;->getExternalSDPath()Ljava/lang/String;

    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_2b

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v1, p1

    .line 45
    :goto_2c
    return v1
.end method

.method private isLast()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->access$100(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_17

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->this$0:Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;->access$100(Lcom/android/fileexplorer/filemanager/SingleFileTransferTask;)Lcom/android/fileexplorer/filemanager/FileTransferParams;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->isLast()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_15

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 25
    :goto_18
    return v0
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->parentFile:Ls0/a;

    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->originalFile:Ljava/io/File;

    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->newFile:Ljava/io/File;

    iget-boolean v3, p0, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->isMove:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->copy(Ls0/a;Ljava/io/File;Ljava/io/File;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/SingleFileTransferTask$CopyTask;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
