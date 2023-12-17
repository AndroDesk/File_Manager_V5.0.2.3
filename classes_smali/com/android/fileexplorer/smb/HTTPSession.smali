.class Lcom/android/fileexplorer/smb/HTTPSession;
.super Ljava/lang/Object;
.source "HTTPSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static gmtFrmt:Ljava/text/SimpleDateFormat;


# instance fields
.field private isStopped:Z

.field private mMainThread:Ljava/lang/Thread;

.field private mService:Lcom/android/fileexplorer/smb/StreamService;

.field private final mSocket:Ljava/net/Socket;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/android/fileexplorer/smb/HTTPSession;

    const-string v0, "HTTPSession"

    sput-object v0, Lcom/android/fileexplorer/smb/HTTPSession;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/fileexplorer/smb/HTTPSession;->gmtFrmt:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/smb/StreamService;Ljava/net/Socket;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/smb/HTTPSession;->isStopped:Z

    iput-object p1, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mService:Lcom/android/fileexplorer/smb/StreamService;

    iput-object p2, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mSocket:Ljava/net/Socket;

    new-instance p1, Ljava/lang/Thread;

    const-string p2, "HttpSession"

    invoke-direct {p1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mMainThread:Ljava/lang/Thread;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private decodeHeader(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V
    .registers 10

    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_8e

    const-string v2, "400 Bad Request"

    if-nez v0, :cond_17

    :try_start_14
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/smb/HTTPSession;->sendError(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v3, "method"

    invoke-virtual {p2, v3, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/smb/HTTPSession;->sendError(Ljava/lang/String;)V

    :cond_29
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_48

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lcom/android/fileexplorer/smb/HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Properties;)V

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/fileexplorer/smb/HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_4c

    :cond_48
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_4c
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_56
    if-eqz v0, :cond_88

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_88

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_83

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v2, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_83
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    :cond_88
    const-string p1, "uri"

    invoke-virtual {p2, p1, p3}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_8d} :catch_8e

    goto :goto_93

    :catch_8e
    const-string p1, "500 Internal Server Error"

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/smb/HTTPSession;->sendError(Ljava/lang/String;)V

    :goto_93
    return-void
.end method

.method private decodeParms(Ljava/lang/String;Ljava/util/Properties;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "&"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_a
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_a

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/smb/HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/smb/HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_39
    return-void
.end method

.method private decodePercent(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_39

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-eq v2, v3, :cond_22

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_1c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_36

    :cond_1c
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_36

    :cond_22
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    return-object p1

    :catch_3e
    const-string p1, "400 Bad Request"

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/smb/HTTPSession;->sendError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private handleResponse()V
    .registers 19

    move-object/from16 v1, p0

    const-string v2, "500 Internal Server Error"

    const/4 v3, 0x0

    :try_start_5
    sget-object v0, Lcom/android/fileexplorer/smb/HTTPSession;->TAG:Ljava/lang/String;

    const-string v4, "Start handling request"

    invoke-static {v0, v4}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/fileexplorer/smb/HTTPSession;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_12d
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_12} :catch_129
    .catchall {:try_start_5 .. :try_end_12} :catchall_127

    if-nez v3, :cond_18

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_18
    const/16 v4, 0x2000

    :try_start_1a
    new-array v5, v4, [B

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_12d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_21} :catch_129
    .catchall {:try_start_1a .. :try_end_21} :catchall_127

    if-gtz v4, :cond_27

    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_27
    :try_start_27
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v5, v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "utf-8"

    invoke-direct {v9, v7, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    invoke-direct {v1, v8, v7, v9, v10}, Lcom/android/fileexplorer/smb/HTTPSession;->decodeHeader(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Params: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Header: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-virtual {v7, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "content-length"

    invoke-virtual {v10, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_7e} :catch_12d
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_7e} :catch_129
    .catchall {:try_start_27 .. :try_end_7e} :catchall_127

    const-wide v8, 0x7fffffffffffffffL

    if-eqz v0, :cond_96

    :try_start_85
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_89
    .catch Ljava/lang/NumberFormatException; {:try_start_85 .. :try_end_89} :catch_8b
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_89} :catch_12d
    .catch Ljava/lang/InterruptedException; {:try_start_85 .. :try_end_89} :catch_129
    .catchall {:try_start_85 .. :try_end_89} :catchall_127

    int-to-long v11, v0

    goto :goto_97

    :catch_8b
    move-exception v0

    move-object v11, v0

    :try_start_8d
    sget-object v0, Lcom/android/fileexplorer/smb/HTTPSession;->TAG:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_96
    move-wide v11, v8

    :goto_97
    move v0, v6

    :goto_98
    const/4 v13, 0x1

    if-ge v0, v4, :cond_ba

    aget-byte v14, v5, v0

    const/16 v15, 0xd

    if-ne v14, v15, :cond_b7

    add-int/lit8 v0, v0, 0x1

    aget-byte v14, v5, v0

    const/16 v6, 0xa

    if-ne v14, v6, :cond_b7

    add-int/lit8 v0, v0, 0x1

    aget-byte v14, v5, v0

    if-ne v14, v15, :cond_b7

    add-int/lit8 v0, v0, 0x1

    aget-byte v14, v5, v0

    if-ne v14, v6, :cond_b7

    move v6, v13

    goto :goto_bb

    :cond_b7
    add-int/2addr v0, v13

    const/4 v6, 0x0

    goto :goto_98

    :cond_ba
    const/4 v6, 0x0

    :goto_bb
    add-int/2addr v0, v13

    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-ge v0, v4, :cond_c8

    sub-int v15, v4, v0

    invoke-virtual {v14, v5, v0, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_c8
    const-wide/16 v16, 0x0

    if-ge v0, v4, :cond_d2

    sub-int v0, v4, v0

    add-int/2addr v0, v13

    int-to-long v5, v0

    sub-long/2addr v11, v5

    goto :goto_da

    :cond_d2
    if-eqz v6, :cond_d8

    cmp-long v0, v11, v8

    if-nez v0, :cond_da

    :cond_d8
    move-wide/from16 v11, v16

    :cond_da
    :goto_da
    const/16 v0, 0x200

    new-array v5, v0, [B

    :goto_de
    if-ltz v4, :cond_f2

    cmp-long v4, v11, v16

    if-lez v4, :cond_f2

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    int-to-long v8, v6

    sub-long/2addr v11, v8

    if-lez v6, :cond_f0

    invoke-virtual {v14, v5, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_f0
    move v4, v6

    goto :goto_de

    :cond_f2
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sget-object v4, Lcom/android/fileexplorer/smb/HTTPSession;->TAG:Ljava/lang/String;

    const-string v5, "try to generate response"

    invoke-static {v4, v5}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/fileexplorer/smb/HTTPSession;->mService:Lcom/android/fileexplorer/smb/StreamService;

    invoke-virtual {v4, v7, v10}, Lcom/android/fileexplorer/smb/StreamService;->serve(Ljava/lang/String;Ljava/util/Properties;)Lcom/android/fileexplorer/smb/Response;

    move-result-object v4

    if-nez v4, :cond_118

    invoke-direct {v1, v2}, Lcom/android/fileexplorer/smb/HTTPSession;->sendError(Ljava/lang/String;)V

    goto :goto_123

    :cond_118
    iget-object v5, v4, Lcom/android/fileexplorer/smb/Response;->status:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/fileexplorer/smb/Response;->mimeType:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/fileexplorer/smb/Response;->header:Ljava/util/Properties;

    iget-object v4, v4, Lcom/android/fileexplorer/smb/Response;->data:Lcom/android/fileexplorer/smb/StreamSource;

    invoke-direct {v1, v5, v6, v7, v4}, Lcom/android/fileexplorer/smb/HTTPSession;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Lcom/android/fileexplorer/smb/StreamSource;)V

    :goto_123
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_126} :catch_12d
    .catch Ljava/lang/InterruptedException; {:try_start_8d .. :try_end_126} :catch_129
    .catchall {:try_start_8d .. :try_end_126} :catchall_127

    goto :goto_129

    :catchall_127
    move-exception v0

    goto :goto_13e

    :catch_129
    :goto_129
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_13d

    :catch_12d
    :try_start_12d
    invoke-direct {v1, v2}, Lcom/android/fileexplorer/smb/HTTPSession;->sendError(Ljava/lang/String;)V
    :try_end_130
    .catchall {:try_start_12d .. :try_end_130} :catchall_131

    goto :goto_129

    :catchall_131
    move-exception v0

    move-object v2, v0

    :try_start_133
    sget-object v0, Lcom/android/fileexplorer/smb/HTTPSession;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13c
    .catchall {:try_start_133 .. :try_end_13c} :catchall_127

    goto :goto_129

    :goto_13d
    return-void

    :goto_13e
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private sendError(Ljava/lang/String;)V
    .registers 4

    const-string v0, "text/plain"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/fileexplorer/smb/HTTPSession;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Lcom/android/fileexplorer/smb/StreamSource;)V

    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method

.method private sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Lcom/android/fileexplorer/smb/StreamSource;)V
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/android/fileexplorer/smb/HTTPSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start sending response, size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/android/fileexplorer/smb/StreamSource;->getLength()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_107

    iget-object v1, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP/1.0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \r\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_41} :catch_111
    .catchall {:try_start_1 .. :try_end_41} :catchall_10f

    const-string p1, "\r\n"

    if-eqz p2, :cond_5c

    :try_start_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5c
    if-eqz p3, :cond_66

    const-string p2, "Date"

    invoke-virtual {p3, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_88

    :cond_66
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/fileexplorer/smb/HTTPSession;->gmtFrmt:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_88
    if-eqz p3, :cond_b9

    invoke-virtual {p3}, Ljava/util/Dictionary;->keys()Ljava/util/Enumeration;

    move-result-object p2

    :goto_8e
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_b9

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8e

    :cond_b9
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {p4}, Lcom/android/fileexplorer/smb/StreamSource;->open()V

    const/16 p1, 0x2800

    new-array p1, p1, [B

    const/4 p2, 0x0

    move p3, p2

    :goto_c8
    invoke-virtual {p4, p1}, Lcom/android/fileexplorer/smb/StreamSource;->read([B)I

    move-result v1

    if-lez v1, :cond_e2

    iget-boolean v2, p0, Lcom/android/fileexplorer/smb/HTTPSession;->isStopped:Z
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_d0} :catch_111
    .catchall {:try_start_45 .. :try_end_d0} :catchall_10f

    if-nez v2, :cond_e2

    :try_start_d2
    invoke-virtual {v0, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d5} :catch_d7
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_10f

    add-int/2addr p3, v1

    goto :goto_c8

    :catch_d7
    move-exception v1

    :try_start_d8
    sget-object v2, Lcom/android/fileexplorer/smb/HTTPSession;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c8

    :cond_e2
    sget-object p1, Lcom/android/fileexplorer/smb/HTTPSession;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send response finished, total sent:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_fb} :catch_111
    .catchall {:try_start_d8 .. :try_end_fb} :catchall_10f

    iget-object p1, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mSocket:Ljava/net/Socket;

    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    :try_start_103
    invoke-virtual {p4}, Lcom/android/fileexplorer/smb/StreamSource;->close()V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_106} :catch_123

    goto :goto_127

    :cond_107
    :try_start_107
    new-instance p1, Ljava/lang/Error;

    const-string p2, "sendResponse(): Status can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_10f} :catch_111
    .catchall {:try_start_107 .. :try_end_10f} :catchall_10f

    :catchall_10f
    move-exception p1

    goto :goto_128

    :catch_111
    move-exception p1

    :try_start_112
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_115
    .catchall {:try_start_112 .. :try_end_115} :catchall_10f

    iget-object p1, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mSocket:Ljava/net/Socket;

    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p4, :cond_127

    :try_start_11f
    invoke-virtual {p4}, Lcom/android/fileexplorer/smb/StreamSource;->close()V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_122} :catch_123

    goto :goto_127

    :catch_123
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_127
    :goto_127
    return-void

    :goto_128
    iget-object p2, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mSocket:Ljava/net/Socket;

    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p4, :cond_13a

    :try_start_132
    invoke-virtual {p4}, Lcom/android/fileexplorer/smb/StreamSource;->close()V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_135} :catch_136

    goto :goto_13a

    :catch_136
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13a
    :goto_13a
    throw p1
.end method


# virtual methods
.method public isRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mMainThread:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public run()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/fileexplorer/smb/HTTPSession;->handleResponse()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_9

    iget-object v0, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_9
    move-exception v0

    iget-object v1, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mSocket:Ljava/net/Socket;

    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/smb/HTTPSession;->isStopped:Z

    return-void
.end method
