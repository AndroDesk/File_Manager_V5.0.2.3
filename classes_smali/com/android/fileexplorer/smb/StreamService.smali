.class public Lcom/android/fileexplorer/smb/StreamService;
.super Landroid/app/Service;
.source "StreamService.java"


# static fields
.field public static final HTTP_BAD_REQUEST:Ljava/lang/String; = "400 Bad Request"

.field private static final HTTP_FORBIDDEN:Ljava/lang/String; = "403 Forbidden"

.field public static final HTTP_INTERNAL_ERROR:Ljava/lang/String; = "500 Internal Server Error"

.field private static final HTTP_NOT_FOUND:Ljava/lang/String; = "404 Not Found"

.field private static final HTTP_OK:Ljava/lang/String; = "200 OK"

.field private static final HTTP_PARTIAL_CONTENT:Ljava/lang/String; = "206 Partial Content"

.field private static final HTTP_RANGE_NOT_SATISFIABLE:Ljava/lang/String; = "416 Requested Range Not Satisfiable"

.field public static final MIME_PLAINTEXT:Ljava/lang/String; = "text/plain"

.field private static final PORT:I = 0x1ec6

.field public static final URL:Ljava/lang/String; = "http://127.0.0.1:7878"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mFile:Ljava/lang/String;

.field private mHttpSession:Lcom/android/fileexplorer/smb/HTTPSession;

.field private myServerSocket:Ljava/net/ServerSocket;

.field private myThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4
    const-class v0, Lcom/android/fileexplorer/smb/StreamService;

    .line 6
    const-string v0, "StreamService"

    .line 8
    iput-object v0, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/smb/StreamService;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/smb/StreamService;)Ljava/net/ServerSocket;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/smb/StreamService;->myServerSocket:Ljava/net/ServerSocket;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/smb/StreamService;)Lcom/android/fileexplorer/smb/HTTPSession;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/smb/StreamService;->mHttpSession:Lcom/android/fileexplorer/smb/HTTPSession;

    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/smb/StreamService;Lcom/android/fileexplorer/smb/HTTPSession;)Lcom/android/fileexplorer/smb/HTTPSession;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/smb/StreamService;->mHttpSession:Lcom/android/fileexplorer/smb/HTTPSession;

    .line 3
    return-object p1
.end method

.method public static getNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    if-eqz p0, :cond_1b

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ge v0, v1, :cond_a

    .line 10
    goto :goto_1b

    .line 11
    :cond_a
    const/16 v0, 0x2f

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 16
    move-result v0

    .line 17
    const/4 v1, -0x1

    .line 18
    if-ne v0, v1, :cond_14

    .line 20
    goto :goto_1a

    .line 21
    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    :goto_1a
    return-object p0

    .line 28
    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 4
    :try_start_3
    new-instance v0, Ljava/net/ServerSocket;

    .line 6
    const/16 v1, 0x1ec6

    .line 8
    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/smb/StreamService;->myServerSocket:Ljava/net/ServerSocket;

    .line 13
    new-instance v0, Ljava/lang/Thread;

    .line 15
    new-instance v1, Lcom/android/fileexplorer/smb/StreamService$1;

    .line 17
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/smb/StreamService$1;-><init>(Lcom/android/fileexplorer/smb/StreamService;)V

    .line 20
    const-string v2, "Streaming Thread"

    .line 22
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 25
    iput-object v0, p0, Lcom/android/fileexplorer/smb/StreamService;->myThread:Ljava/lang/Thread;

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamService;->myThread:Ljava/lang/Thread;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_23} :catch_24

    .line 36
    goto :goto_2e

    .line 37
    :catch_24
    move-exception v0

    .line 38
    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_2e
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamService;->myServerSocket:Ljava/net/ServerSocket;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamService;->myThread:Ljava/lang/Thread;

    .line 8
    if-eqz v0, :cond_1f

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1f

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamService;->myThread:Ljava/lang/Thread;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_14} :catch_15

    .line 21
    goto :goto_1f

    .line 22
    :catch_15
    move-exception v0

    .line 23
    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    .line 34
    const-string v1, "Http Server Stopped"

    .line 36
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 1
    const-string p2, "filePath"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/android/fileexplorer/smb/StreamService;->mFile:Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    .line 11
    const-string p2, "Http Server Started"

    .line 13
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const/4 p1, 0x3

    .line 17
    return p1
.end method

.method public serve(Ljava/lang/String;Ljava/util/Properties;)Lcom/android/fileexplorer/smb/Response;
    .registers 16

    .line 1
    const-string v0, "text/plain"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    invoke-static {p1}, Lcom/android/fileexplorer/smb/StreamService;->getNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    iget-object v2, p0, Lcom/android/fileexplorer/smb/StreamService;->mFile:Ljava/lang/String;

    .line 10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_25

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_25

    .line 22
    iget-object v2, p0, Lcom/android/fileexplorer/smb/StreamService;->mFile:Ljava/lang/String;

    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_25

    .line 30
    new-instance p1, Ljcifs/smb/SmbFile;

    .line 32
    iget-object v2, p0, Lcom/android/fileexplorer/smb/StreamService;->mFile:Ljava/lang/String;

    .line 34
    invoke-direct {p1, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    move-object p1, v1

    .line 39
    :goto_26
    if-nez p1, :cond_31

    .line 41
    new-instance p1, Lcom/android/fileexplorer/smb/Response;

    .line 43
    const-string p2, "404 Not Found"

    .line 45
    invoke-direct {p1, p2, v0, v1}, Lcom/android/fileexplorer/smb/Response;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/smb/StreamSource;)V

    .line 48
    goto/16 :goto_1a3

    .line 50
    :cond_31
    const-wide/16 v2, -0x1

    .line 52
    const-string v4, "range"

    .line 54
    invoke-virtual {p2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p2

    .line 58
    const-wide/16 v4, 0x0

    .line 60
    if-eqz p2, :cond_a2

    .line 62
    const-string v6, "bytes="

    .line 64
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_a2

    .line 70
    const/4 v6, 0x6

    .line 71
    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 74
    move-result-object p2

    .line 75
    const/16 v6, 0x2d

    .line 77
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    .line 80
    move-result v6
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_50} :catch_192

    .line 81
    if-lez v6, :cond_a2

    .line 83
    const/4 v7, 0x0

    .line 84
    :try_start_53
    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 87
    move-result-object v8

    .line 88
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 91
    move-result-wide v8
    :try_end_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_53 .. :try_end_5b} :catch_96
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_5b} :catch_90
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5b} :catch_192

    .line 92
    add-int/lit8 v6, v6, 0x1

    .line 94
    :try_start_5d
    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 97
    move-result-object v10

    .line 98
    :goto_61
    const/4 v11, 0x5

    .line 99
    if-ge v7, v11, :cond_a3

    .line 101
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    move-result v11

    .line 105
    if-eqz v11, :cond_70

    .line 107
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getContentLength()I

    .line 110
    move-result v2

    .line 111
    int-to-long v2, v2

    .line 112
    goto :goto_78

    .line 113
    :cond_70
    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 116
    move-result-object v11

    .line 117
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 120
    move-result-wide v2

    .line 121
    :goto_78
    cmp-long v11, v2, v4

    .line 123
    if-eqz v11, :cond_7d

    .line 125
    goto :goto_a3

    .line 126
    :cond_7d
    iget-object v11, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    .line 128
    const-string v12, "cannot get smb file, retrying..."

    .line 130
    invoke-static {v11, v12}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-wide/16 v11, 0xbb8

    .line 135
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_89
    .catch Ljava/lang/NumberFormatException; {:try_start_5d .. :try_end_89} :catch_8e
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_89} :catch_8c
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_89} :catch_192

    .line 138
    add-int/lit8 v7, v7, 0x1

    .line 140
    goto :goto_61

    .line 141
    :catch_8c
    move-exception v6

    .line 142
    goto :goto_92

    .line 143
    :catch_8e
    move-exception v6

    .line 144
    goto :goto_98

    .line 145
    :catch_90
    move-exception v6

    .line 146
    move-wide v8, v4

    .line 147
    :goto_92
    :try_start_92
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    goto :goto_a3

    .line 151
    :catch_96
    move-exception v6

    .line 152
    move-wide v8, v4

    .line 153
    :goto_98
    iget-object v7, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    .line 155
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 158
    move-result-object v6

    .line 159
    invoke-static {v7, v6}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    goto :goto_a3

    .line 163
    :cond_a2
    move-wide v8, v4

    .line 164
    :cond_a3
    :goto_a3
    iget-object v6, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    .line 166
    new-instance v7, Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    const-string v10, "Request: "

    .line 173
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v10, " from: "

    .line 181
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 187
    const-string v10, ", to: "

    .line 189
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object v7

    .line 199
    invoke-static {v6, v7}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v6, Lcom/android/fileexplorer/smb/StreamSource;

    .line 204
    invoke-direct {v6, p1}, Lcom/android/fileexplorer/smb/StreamSource;-><init>(Ljcifs/smb/SmbFile;)V

    .line 207
    invoke-virtual {v6}, Lcom/android/fileexplorer/smb/StreamSource;->getLength()J

    .line 210
    move-result-wide v10
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_d2} :catch_192

    .line 211
    const-string p1, "Accept-Ranges"

    .line 213
    const-string v7, ""

    .line 215
    if-eqz p2, :cond_162

    .line 217
    cmp-long p2, v8, v4

    .line 219
    if-lez p2, :cond_162

    .line 221
    :try_start_dc
    iget-object p2, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    .line 223
    const-string v12, "Generating range request"

    .line 225
    invoke-static {p2, v12}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    cmp-long p2, v8, v10

    .line 230
    if-ltz p2, :cond_105

    .line 232
    new-instance p2, Lcom/android/fileexplorer/smb/Response;

    .line 234
    const-string v2, "416 Requested Range Not Satisfiable"

    .line 236
    invoke-direct {p2, v2, v0, v1}, Lcom/android/fileexplorer/smb/Response;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/smb/StreamSource;)V

    .line 239
    const-string v2, "Content-Range"

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    .line 243
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    const-string v4, "bytes 0-0/"

    .line 248
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {p2, v2, v3}, Lcom/android/fileexplorer/smb/Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    goto :goto_15c

    .line 262
    :cond_105
    cmp-long p2, v2, v4

    .line 264
    if-gez p2, :cond_10d

    .line 266
    const-wide/16 v2, 0x1

    .line 268
    sub-long v2, v10, v2

    .line 270
    :cond_10d
    sub-long/2addr v10, v8

    .line 271
    cmp-long p2, v10, v4

    .line 273
    if-gez p2, :cond_113

    .line 275
    goto :goto_114

    .line 276
    :cond_113
    move-wide v4, v10

    .line 277
    :goto_114
    iget-object p2, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    .line 279
    new-instance v10, Ljava/lang/StringBuilder;

    .line 281
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    const-string v11, "start="

    .line 286
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 292
    const-string v11, ", endAt="

    .line 294
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 300
    const-string v2, ", newLen="

    .line 302
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    move-result-object v2

    .line 312
    invoke-static {p2, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v6, v8, v9}, Lcom/android/fileexplorer/smb/StreamSource;->moveTo(J)J

    .line 318
    new-instance p2, Lcom/android/fileexplorer/smb/Response;

    .line 320
    const-string v2, "206 Partial Content"

    .line 322
    invoke-virtual {v6}, Lcom/android/fileexplorer/smb/StreamSource;->getMimeType()Ljava/lang/String;

    .line 325
    move-result-object v3

    .line 326
    invoke-direct {p2, v2, v3, v6}, Lcom/android/fileexplorer/smb/Response;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/smb/StreamSource;)V

    .line 329
    const-string v2, "Content-length"

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    .line 333
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    move-result-object v3

    .line 346
    invoke-virtual {p2, v2, v3}, Lcom/android/fileexplorer/smb/Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :goto_15c
    const-string v2, "bytes"

    .line 351
    invoke-virtual {p2, p1, v2}, Lcom/android/fileexplorer/smb/Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    goto :goto_190

    .line 355
    :cond_162
    iget-object p2, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    .line 357
    const-string v2, "Generating fixed length request"

    .line 359
    invoke-static {p2, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v6}, Lcom/android/fileexplorer/smb/StreamSource;->resetSkipByte()V

    .line 365
    new-instance p2, Lcom/android/fileexplorer/smb/Response;

    .line 367
    const-string v2, "200 OK"

    .line 369
    invoke-virtual {v6}, Lcom/android/fileexplorer/smb/StreamSource;->getMimeType()Ljava/lang/String;

    .line 372
    move-result-object v3

    .line 373
    invoke-direct {p2, v2, v3, v6}, Lcom/android/fileexplorer/smb/Response;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/smb/StreamSource;)V

    .line 376
    const-string v2, "Content-Length"

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    .line 380
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    move-result-object v3

    .line 393
    invoke-virtual {p2, v2, v3}, Lcom/android/fileexplorer/smb/Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v2, "none"

    .line 398
    invoke-virtual {p2, p1, v2}, Lcom/android/fileexplorer/smb/Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_190
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_190} :catch_192

    .line 401
    :goto_190
    move-object p1, p2

    .line 402
    goto :goto_1a3

    .line 403
    :catch_192
    move-exception p1

    .line 404
    iget-object p2, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    .line 406
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 409
    move-result-object p1

    .line 410
    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance p1, Lcom/android/fileexplorer/smb/Response;

    .line 415
    const-string p2, "403 Forbidden"

    .line 417
    invoke-direct {p1, p2, v0, v1}, Lcom/android/fileexplorer/smb/Response;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/smb/StreamSource;)V

    .line 420
    :goto_1a3
    iget-object p2, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    .line 422
    const-string v0, "response generated"

    .line 424
    invoke-static {p2, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-object p1
.end method
