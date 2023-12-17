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

.field private static final PORT:I

.field public static final URL:Ljava/lang/String; = "http://127.0.0.1:7878"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mFile:Ljava/lang/String;

.field private mHttpSession:Lcom/android/fileexplorer/smb/HTTPSession;

.field private myServerSocket:Ljava/net/ServerSocket;

.field private myThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x93350

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/smb/StreamService;->PORT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-class v0, Lcom/android/fileexplorer/smb/StreamService;

    const-string v0, "StreamService"

    iput-object v0, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/smb/StreamService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/smb/StreamService;)Ljava/net/ServerSocket;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/smb/StreamService;->myServerSocket:Ljava/net/ServerSocket;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/smb/StreamService;)Lcom/android/fileexplorer/smb/HTTPSession;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/smb/StreamService;->mHttpSession:Lcom/android/fileexplorer/smb/HTTPSession;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/smb/StreamService;Lcom/android/fileexplorer/smb/HTTPSession;)Lcom/android/fileexplorer/smb/HTTPSession;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/smb/StreamService;->mHttpSession:Lcom/android/fileexplorer/smb/HTTPSession;

    return-object p1
.end method

.method public static getNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    goto :goto_1b

    :cond_a
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    goto :goto_1a

    :cond_14
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_1a
    return-object p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

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

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    :try_start_3
    new-instance v0, Ljava/net/ServerSocket;

    const/16 v1, 0x1ec6

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/android/fileexplorer/smb/StreamService;->myServerSocket:Ljava/net/ServerSocket;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/fileexplorer/smb/StreamService$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/smb/StreamService$1;-><init>(Lcom/android/fileexplorer/smb/StreamService;)V

    const-string v2, "Streaming Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/fileexplorer/smb/StreamService;->myThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamService;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_23} :catch_24

    goto :goto_2e

    :catch_24
    move-exception v0

    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    return-void
.end method

.method public onDestroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamService;->myServerSocket:Ljava/net/ServerSocket;

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamService;->myThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamService;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_1f

    :catch_15
    move-exception v0

    iget-object v1, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    const-string v1, "Http Server Stopped"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    const-string p2, "filePath"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/smb/StreamService;->mFile:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    const-string p2, "Http Server Started"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    return p1
.end method

.method public serve(Ljava/lang/String;Ljava/util/Properties;)Lcom/android/fileexplorer/smb/Response;
    .registers 16

    const-string v0, "text/plain"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p1}, Lcom/android/fileexplorer/smb/StreamService;->getNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/fileexplorer/smb/StreamService;->mFile:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/android/fileexplorer/smb/StreamService;->mFile:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    new-instance p1, Ljcifs/smb/SmbFile;

    iget-object v2, p0, Lcom/android/fileexplorer/smb/StreamService;->mFile:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    goto :goto_26

    :cond_25
    move-object p1, v1

    :goto_26
    if-nez p1, :cond_31

    new-instance p1, Lcom/android/fileexplorer/smb/Response;

    const-string p2, "404 Not Found"

    invoke-direct {p1, p2, v0, v1}, Lcom/android/fileexplorer/smb/Response;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/smb/StreamSource;)V

    goto/16 :goto_1a3

    :cond_31
    const-wide/16 v2, -0x1

    const-string v4, "range"

    invoke-virtual {p2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v4, 0x0

    if-eqz p2, :cond_a2

    const-string v6, "bytes="

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a2

    const/4 v6, 0x6

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const/16 v6, 0x2d

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_50} :catch_192

    if-lez v6, :cond_a2

    const/4 v7, 0x0

    :try_start_53
    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_53 .. :try_end_5b} :catch_96
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_5b} :catch_90
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5b} :catch_192

    add-int/lit8 v6, v6, 0x1

    :try_start_5d
    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    :goto_61
    const/4 v11, 0x5

    if-ge v7, v11, :cond_a3

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_70

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    goto :goto_78

    :cond_70
    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_78
    cmp-long v11, v2, v4

    if-eqz v11, :cond_7d

    goto :goto_a3

    :cond_7d
    iget-object v11, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    const-string v12, "cannot get smb file, retrying..."

    invoke-static {v11, v12}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v11, 0xbb8

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_89
    .catch Ljava/lang/NumberFormatException; {:try_start_5d .. :try_end_89} :catch_8e
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_89} :catch_8c
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_89} :catch_192

    add-int/lit8 v7, v7, 0x1

    goto :goto_61

    :catch_8c
    move-exception v6

    goto :goto_92

    :catch_8e
    move-exception v6

    goto :goto_98

    :catch_90
    move-exception v6

    move-wide v8, v4

    :goto_92
    :try_start_92
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a3

    :catch_96
    move-exception v6

    move-wide v8, v4

    :goto_98
    iget-object v7, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a3

    :cond_a2
    move-wide v8, v4

    :cond_a3
    :goto_a3
    iget-object v6, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Request: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " from: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", to: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/android/fileexplorer/smb/StreamSource;

    invoke-direct {v6, p1}, Lcom/android/fileexplorer/smb/StreamSource;-><init>(Ljcifs/smb/SmbFile;)V

    invoke-virtual {v6}, Lcom/android/fileexplorer/smb/StreamSource;->getLength()J

    move-result-wide v10
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_d2} :catch_192

    const-string p1, "Accept-Ranges"

    const-string v7, ""

    if-eqz p2, :cond_162

    cmp-long p2, v8, v4

    if-lez p2, :cond_162

    :try_start_dc
    iget-object p2, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    const-string v12, "Generating range request"

    invoke-static {p2, v12}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p2, v8, v10

    if-ltz p2, :cond_105

    new-instance p2, Lcom/android/fileexplorer/smb/Response;

    const-string v2, "416 Requested Range Not Satisfiable"

    invoke-direct {p2, v2, v0, v1}, Lcom/android/fileexplorer/smb/Response;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/smb/StreamSource;)V

    const-string v2, "Content-Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes 0-0/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/android/fileexplorer/smb/Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15c

    :cond_105
    cmp-long p2, v2, v4

    if-gez p2, :cond_10d

    const-wide/16 v2, 0x1

    sub-long v2, v10, v2

    :cond_10d
    sub-long/2addr v10, v8

    cmp-long p2, v10, v4

    if-gez p2, :cond_113

    goto :goto_114

    :cond_113
    move-wide v4, v10

    :goto_114
    iget-object p2, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", endAt="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", newLen="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8, v9}, Lcom/android/fileexplorer/smb/StreamSource;->moveTo(J)J

    new-instance p2, Lcom/android/fileexplorer/smb/Response;

    const-string v2, "206 Partial Content"

    invoke-virtual {v6}, Lcom/android/fileexplorer/smb/StreamSource;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v2, v3, v6}, Lcom/android/fileexplorer/smb/Response;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/smb/StreamSource;)V

    const-string v2, "Content-length"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/android/fileexplorer/smb/Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15c
    const-string v2, "bytes"

    invoke-virtual {p2, p1, v2}, Lcom/android/fileexplorer/smb/Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_190

    :cond_162
    iget-object p2, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    const-string v2, "Generating fixed length request"

    invoke-static {p2, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/fileexplorer/smb/StreamSource;->resetSkipByte()V

    new-instance p2, Lcom/android/fileexplorer/smb/Response;

    const-string v2, "200 OK"

    invoke-virtual {v6}, Lcom/android/fileexplorer/smb/StreamSource;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v2, v3, v6}, Lcom/android/fileexplorer/smb/Response;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/smb/StreamSource;)V

    const-string v2, "Content-Length"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/android/fileexplorer/smb/Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "none"

    invoke-virtual {p2, p1, v2}, Lcom/android/fileexplorer/smb/Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_190
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_190} :catch_192

    :goto_190
    move-object p1, p2

    goto :goto_1a3

    :catch_192
    move-exception p1

    iget-object p2, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/fileexplorer/smb/Response;

    const-string p2, "403 Forbidden"

    invoke-direct {p1, p2, v0, v1}, Lcom/android/fileexplorer/smb/Response;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/smb/StreamSource;)V

    :goto_1a3
    iget-object p2, p0, Lcom/android/fileexplorer/smb/StreamService;->TAG:Ljava/lang/String;

    const-string v0, "response generated"

    invoke-static {p2, v0}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
