.class abstract Lorg/swiftp/CmdAbstractStore;
.super Lorg/swiftp/FtpCmd;
.source "CmdAbstractStore.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final message:Ljava/lang/String; = "TEMPLATE!!"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lorg/swiftp/CmdAbstractStore;

    .line 3
    const-string v0, "CmdAbstractStore"

    .line 5
    sput-object v0, Lorg/swiftp/CmdAbstractStore;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(Lorg/swiftp/SessionThread;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    .line 4
    return-void
.end method


# virtual methods
.method public doStorOrAppe(Ljava/lang/String;Z)V
    .registers 11

    .line 1
    sget-object v0, Lorg/swiftp/CmdAbstractStore;->TAG:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "STOR/APPE executing with append="

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 25
    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1, p1}, Lorg/swiftp/FtpCmd;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0, v1}, Lorg/swiftp/FtpCmd;->violatesChroot(Ljava/io/File;)Z

    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v2, :cond_2b

    .line 40
    const-string p1, "550 Invalid name or chroot violation\r\n"

    .line 42
    goto/16 :goto_13e

    .line 44
    :cond_2b
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_35

    .line 50
    const-string p1, "451 Can\'t overwrite a directory\r\n"

    .line 52
    goto/16 :goto_13e

    .line 54
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_4e

    .line 60
    if-nez p2, :cond_4e

    .line 62
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_47

    .line 68
    const-string p1, "451 Couldn\'t truncate file\r\n"

    .line 70
    goto/16 :goto_13e

    .line 72
    :cond_47
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    invoke-static {v2}, Lorg/swiftp/Util;->deletedFileNotify(Ljava/lang/String;)V

    .line 79
    :cond_4e
    new-instance v2, Ljava/io/FileOutputStream;

    .line 81
    invoke-direct {v2, v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_53} :catch_119

    .line 84
    iget-object p1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 86
    invoke-virtual {p1}, Lorg/swiftp/SessionThread;->startUsingDataSocket()Z

    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_5f

    .line 92
    const-string v3, "425 Couldn\'t open data socket\r\n"

    .line 94
    goto/16 :goto_116

    .line 96
    :cond_5f
    const-string p1, "Data socket ready"

    .line 98
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 103
    const-string p2, "150 Data socket ready\r\n"

    .line 105
    invoke-virtual {p1, p2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lorg/swiftp/Defaults;->getDataChunkSize()I

    .line 111
    move-result p1

    .line 112
    new-array p1, p1, [B

    .line 114
    iget-object p2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 116
    invoke-virtual {p2}, Lorg/swiftp/SessionThread;->isBinaryMode()Z

    .line 119
    move-result p2

    .line 120
    if-eqz p2, :cond_7f

    .line 122
    const-string p2, "Mode is binary"

    .line 124
    invoke-static {v0, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    goto :goto_84

    .line 128
    :cond_7f
    const-string p2, "Mode is ascii"

    .line 130
    invoke-static {v0, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_84
    iget-object p2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 135
    invoke-virtual {p2, p1}, Lorg/swiftp/SessionThread;->receiveFromDataSocket([B)I

    .line 138
    move-result p2

    .line 139
    const/4 v0, -0x2

    .line 140
    if-eq p2, v0, :cond_114

    .line 142
    const/4 v0, -0x1

    .line 143
    if-eq p2, v0, :cond_10c

    .line 145
    if-eqz p2, :cond_109

    .line 147
    const/4 v0, 0x0

    .line 148
    :try_start_93
    iget-object v4, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 150
    invoke-virtual {v4}, Lorg/swiftp/SessionThread;->isBinaryMode()Z

    .line 153
    move-result v4

    .line 154
    if-eqz v4, :cond_9f

    .line 156
    invoke-virtual {v2, p1, v0, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 159
    goto :goto_b9

    .line 160
    :cond_9f
    move v4, v0

    .line 161
    move v5, v4

    .line 162
    :goto_a1
    if-ge v4, p2, :cond_b3

    .line 164
    aget-byte v6, p1, v4

    .line 166
    const/16 v7, 0xd

    .line 168
    if-ne v6, v7, :cond_b0

    .line 170
    sub-int v6, v4, v5

    .line 172
    invoke-virtual {v2, p1, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 175
    add-int/lit8 v5, v4, 0x1

    .line 177
    :cond_b0
    add-int/lit8 v4, v4, 0x1

    .line 179
    goto :goto_a1

    .line 180
    :cond_b3
    if-ge v5, p2, :cond_b9

    .line 182
    sub-int/2addr v4, v5

    .line 183
    invoke-virtual {v2, p1, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 186
    :cond_b9
    :goto_b9
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_bc} :catch_bd

    .line 189
    goto :goto_84

    .line 190
    :catch_bd
    move-exception p1

    .line 191
    sget-object p2, Lorg/swiftp/CmdAbstractStore;->TAG:Ljava/lang/String;

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    const-string v4, "Exception while storing: "

    .line 200
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v3

    .line 210
    invoke-static {p2, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    .line 215
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    const-string v4, "Message: "

    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 226
    move-result-object v4

    .line 227
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object v3

    .line 234
    invoke-static {p2, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v3, "Stack trace: "

    .line 239
    invoke-static {p2, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 245
    move-result-object p1

    .line 246
    array-length p2, p1

    .line 247
    :goto_f6
    if-ge v0, p2, :cond_106

    .line 249
    aget-object v3, p1, v0

    .line 251
    sget-object v4, Lorg/swiftp/CmdAbstractStore;->TAG:Ljava/lang/String;

    .line 253
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 256
    move-result-object v3

    .line 257
    invoke-static {v4, v3}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    .line 262
    goto :goto_f6

    .line 263
    :cond_106
    const-string v3, "451 File IO problem. Device might be full.\r\n"

    .line 265
    goto :goto_116

    .line 266
    :cond_109
    const-string v3, "426 Couldn\'t receive data\r\n"

    .line 268
    goto :goto_116

    .line 269
    :cond_10c
    sget-object p1, Lorg/swiftp/CmdAbstractStore;->TAG:Ljava/lang/String;

    .line 271
    const-string p2, "Returned from final read"

    .line 273
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    goto :goto_116

    .line 277
    :cond_114
    const-string v3, "425 Could not connect data socket\r\n"

    .line 279
    :goto_116
    move-object p1, v3

    .line 280
    move-object v3, v2

    .line 281
    goto :goto_13e

    .line 282
    :catch_119
    :try_start_119
    new-instance p2, Ljava/lang/StringBuilder;

    .line 284
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    const-string v0, "451 Couldn\'t open file \""

    .line 289
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string p1, "\" aka \""

    .line 297
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 303
    move-result-object p1

    .line 304
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string p1, "\" for writing\r\n"

    .line 309
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    move-result-object p1
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_13b} :catch_13c

    .line 316
    goto :goto_13e

    .line 317
    :catch_13c
    const-string p1, "451 Couldn\'t open file, nested exception\r\n"

    .line 319
    :goto_13e
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 322
    if-eqz p1, :cond_15f

    .line 324
    sget-object p2, Lorg/swiftp/CmdAbstractStore;->TAG:Ljava/lang/String;

    .line 326
    const-string v0, "STOR error: "

    .line 328
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    move-result-object v0

    .line 343
    invoke-static {p2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object p2, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 348
    invoke-virtual {p2, p1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 351
    goto :goto_16d

    .line 352
    :cond_15f
    iget-object p1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 354
    const-string p2, "226 Transmission complete\r\n"

    .line 356
    invoke-virtual {p1, p2}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 362
    move-result-object p1

    .line 363
    invoke-static {p1}, Lorg/swiftp/Util;->newFileNotify(Ljava/lang/String;)V

    .line 366
    :goto_16d
    iget-object p1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 368
    invoke-virtual {p1}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    .line 371
    sget-object p1, Lorg/swiftp/CmdAbstractStore;->TAG:Ljava/lang/String;

    .line 373
    const-string p2, "STOR finished"

    .line 375
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-void
.end method
