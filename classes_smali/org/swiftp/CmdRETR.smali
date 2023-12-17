.class Lorg/swiftp/CmdRETR;
.super Lorg/swiftp/FtpCmd;
.source "CmdRETR.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;)V

    .line 4
    const-class p1, Lorg/swiftp/CmdRETR;

    .line 6
    const-string p1, "CmdRETR"

    .line 8
    iput-object p1, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lorg/swiftp/CmdRETR;->input:Ljava/lang/String;

    .line 12
    return-void
.end method

.method private progress()Ljava/lang/String;
    .registers 16

    .line 1
    iget-object v0, p0, Lorg/swiftp/CmdRETR;->input:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lorg/swiftp/FtpCmd;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 9
    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1, v0}, Lorg/swiftp/FtpCmd;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Lorg/swiftp/FtpCmd;->violatesChroot(Ljava/io/File;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_19

    .line 23
    const-string v0, "550 Invalid name or chroot violation\r\n"

    .line 25
    return-object v0

    .line 26
    :cond_19
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_29

    .line 32
    iget-object v0, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    .line 34
    const-string v1, "Ignoring RETR for directory"

    .line 36
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "550 Can\'t RETR a directory\r\n"

    .line 41
    return-object v0

    .line 42
    :cond_29
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_48

    .line 48
    iget-object v1, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    .line 50
    const-string v2, "Can\'t RETR nonexistent file: "

    .line 52
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "550 File does not exist\r\n"

    .line 72
    return-object v0

    .line 73
    :cond_48
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_58

    .line 79
    iget-object v0, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    .line 81
    const-string v1, "Failed RETR permission (canRead() is false)"

    .line 83
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "550 No read permissions\r\n"

    .line 88
    return-object v0

    .line 89
    :cond_58
    const/4 v1, 0x0

    .line 90
    :try_start_59
    new-instance v2, Ljava/io/FileInputStream;

    .line 92
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_5e} :catch_112
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5e} :catch_10f
    .catchall {:try_start_59 .. :try_end_5e} :catchall_10d

    .line 95
    :try_start_5e
    invoke-static {}, Lorg/swiftp/Defaults;->getDataChunkSize()I

    .line 98
    move-result v0

    .line 99
    new-array v0, v0, [B

    .line 101
    iget-object v3, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 103
    invoke-virtual {v3}, Lorg/swiftp/SessionThread;->startUsingDataSocket()Z

    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_fa

    .line 109
    iget-object v3, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    .line 111
    const-string v4, "RETR opened data socket"

    .line 113
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 118
    const-string v4, "150 Sending file\r\n"

    .line 120
    invoke-virtual {v3, v4}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 125
    invoke-virtual {v3}, Lorg/swiftp/SessionThread;->isBinaryMode()Z

    .line 128
    move-result v3

    .line 129
    const/4 v4, -0x1

    .line 130
    if-eqz v3, :cond_a5

    .line 132
    iget-object v3, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    .line 134
    const-string v5, "Transferring in binary mode"

    .line 136
    invoke-static {v3, v5}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_8a
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 142
    move-result v3

    .line 143
    if-eq v3, v4, :cond_f6

    .line 145
    iget-object v5, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 147
    invoke-virtual {v5, v0, v3}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BI)Z

    .line 150
    move-result v3

    .line 151
    if-nez v3, :cond_8a

    .line 153
    const-string v0, "426 Data socket error\r\n"

    .line 155
    iget-object v1, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    .line 157
    const-string v3, "Data socket error"

    .line 159
    invoke-static {v1, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_a1} :catch_10b
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_a1} :catch_109
    .catchall {:try_start_5e .. :try_end_a1} :catchall_107

    .line 162
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 165
    return-object v0

    .line 166
    :cond_a5
    :try_start_a5
    iget-object v3, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    .line 168
    const-string v5, "Transferring in ASCII mode"

    .line 170
    invoke-static {v3, v5}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v3, 0x0

    .line 174
    :cond_ad
    move v5, v3

    .line 175
    :goto_ae
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 178
    move-result v6

    .line 179
    if-eq v6, v4, :cond_f6

    .line 181
    const/4 v7, 0x2

    .line 182
    new-array v7, v7, [B

    .line 184
    const/16 v8, 0xd

    .line 186
    aput-byte v8, v7, v3

    .line 188
    const/16 v9, 0xa

    .line 190
    const/4 v10, 0x1

    .line 191
    aput-byte v9, v7, v10

    .line 193
    move v11, v3

    .line 194
    move v12, v11

    .line 195
    :goto_c2
    if-ge v11, v6, :cond_e8

    .line 197
    aget-byte v13, v0, v11

    .line 199
    if-ne v13, v9, :cond_e5

    .line 201
    iget-object v13, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 203
    sub-int v14, v11, v12

    .line 205
    invoke-virtual {v13, v0, v12, v14}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BII)Z

    .line 208
    if-nez v11, :cond_d9

    .line 210
    if-nez v5, :cond_e4

    .line 212
    iget-object v12, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 214
    invoke-virtual {v12, v7, v10}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BI)Z

    .line 217
    goto :goto_e4

    .line 218
    :cond_d9
    add-int/lit8 v12, v11, -0x1

    .line 220
    aget-byte v12, v0, v12

    .line 222
    if-eq v12, v8, :cond_e4

    .line 224
    iget-object v12, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 226
    invoke-virtual {v12, v7, v10}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BI)Z

    .line 229
    :cond_e4
    :goto_e4
    move v12, v11

    .line 230
    :cond_e5
    add-int/lit8 v11, v11, 0x1

    .line 232
    goto :goto_c2

    .line 233
    :cond_e8
    iget-object v5, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 235
    sub-int/2addr v11, v12

    .line 236
    invoke-virtual {v5, v0, v12, v11}, Lorg/swiftp/SessionThread;->sendViaDataSocket([BII)Z

    .line 239
    add-int/lit8 v6, v6, -0x1

    .line 241
    aget-byte v5, v0, v6
    :try_end_f2
    .catch Ljava/io/FileNotFoundException; {:try_start_a5 .. :try_end_f2} :catch_10b
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_f2} :catch_109
    .catchall {:try_start_a5 .. :try_end_f2} :catchall_107

    .line 243
    if-ne v5, v8, :cond_ad

    .line 245
    move v5, v10

    .line 246
    goto :goto_ae

    .line 247
    :cond_f6
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 250
    goto :goto_118

    .line 251
    :cond_fa
    :try_start_fa
    const-string v0, "425 Error opening socket\r\n"

    .line 253
    iget-object v1, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    .line 255
    const-string v3, "Error in initDataSocket()"

    .line 257
    invoke-static {v1, v3}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_103
    .catch Ljava/io/FileNotFoundException; {:try_start_fa .. :try_end_103} :catch_10b
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_103} :catch_109
    .catchall {:try_start_fa .. :try_end_103} :catchall_107

    .line 260
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 263
    return-object v0

    .line 264
    :catchall_107
    move-exception v0

    .line 265
    goto :goto_11a

    .line 266
    :catch_109
    move-object v1, v2

    .line 267
    goto :goto_10f

    .line 268
    :catch_10b
    move-object v1, v2

    .line 269
    goto :goto_112

    .line 270
    :catchall_10d
    move-exception v0

    .line 271
    goto :goto_119

    .line 272
    :catch_10f
    :goto_10f
    :try_start_10f
    const-string v0, "425 Network error\r\n"

    .line 274
    goto :goto_114

    .line 275
    :catch_112
    :goto_112
    const-string v0, "550 File not found\r\n"
    :try_end_114
    .catchall {:try_start_10f .. :try_end_114} :catchall_10d

    .line 277
    :goto_114
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 280
    move-object v1, v0

    .line 281
    :goto_118
    return-object v1

    .line 282
    :goto_119
    move-object v2, v1

    .line 283
    :goto_11a
    invoke-static {v2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 286
    throw v0
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "RETR executing"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lorg/swiftp/CmdRETR;->progress()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 14
    invoke-virtual {v1}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    .line 17
    if-eqz v0, :cond_18

    .line 19
    iget-object v1, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 21
    invoke-virtual {v1, v0}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 24
    goto :goto_1f

    .line 25
    :cond_18
    iget-object v0, p0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    .line 27
    const-string v1, "226 Transmission finished\r\n"

    .line 29
    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 32
    :goto_1f
    iget-object v0, p0, Lorg/swiftp/CmdRETR;->TAG:Ljava/lang/String;

    .line 34
    const-string v1, "RETR done"

    .line 36
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method
