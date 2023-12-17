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

    .line 1
    const-class v0, Lcom/android/fileexplorer/smb/HTTPSession;

    .line 3
    const-string v0, "HTTPSession"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/smb/HTTPSession;->TAG:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 9
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 11
    const-string v2, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    .line 13
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 16
    sput-object v0, Lcom/android/fileexplorer/smb/HTTPSession;->gmtFrmt:Ljava/text/SimpleDateFormat;

    .line 18
    const-string v1, "GMT"

    .line 20
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/smb/StreamService;Ljava/net/Socket;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/smb/HTTPSession;->isStopped:Z

    .line 7
    iput-object p1, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mService:Lcom/android/fileexplorer/smb/StreamService;

    .line 9
    iput-object p2, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mSocket:Ljava/net/Socket;

    .line 11
    new-instance p1, Ljava/lang/Thread;

    .line 13
    const-string p2, "HttpSession"

    .line 15
    invoke-direct {p1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mMainThread:Ljava/lang/Thread;

    .line 20
    const/4 p2, 0x1

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 24
    iget-object p1, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mMainThread:Ljava/lang/Thread;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 29
    return-void
.end method

.method private decodeHeader(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V
    .registers 10

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance v1, Ljava/util/StringTokenizer;

    .line 10
    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 16
    move-result v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_8e

    .line 17
    const-string v2, "400 Bad Request"

    .line 19
    if-nez v0, :cond_17

    .line 21
    :try_start_14
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/smb/HTTPSession;->sendError(Ljava/lang/String;)V

    .line 24
    :cond_17
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const-string v3, "method"

    .line 30
    invoke-virtual {p2, v3, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_29

    .line 39
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/smb/HTTPSession;->sendError(Ljava/lang/String;)V

    .line 42
    :cond_29
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    const/16 v2, 0x3f

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x0

    .line 53
    if-ltz v2, :cond_48

    .line 55
    add-int/lit8 v4, v2, 0x1

    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    invoke-direct {p0, v4, p3}, Lcom/android/fileexplorer/smb/HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Properties;)V

    .line 64
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    move-result-object p3

    .line 68
    invoke-direct {p0, p3}, Lcom/android/fileexplorer/smb/HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p3

    .line 72
    goto :goto_4c

    .line 73
    :cond_48
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object p3

    .line 77
    :goto_4c
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_88

    .line 83
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    :goto_56
    if-eqz v0, :cond_88

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_88

    .line 99
    const/16 v1, 0x3a

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 104
    move-result v1

    .line 105
    if-ltz v1, :cond_83

    .line 107
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 118
    move-result-object v2

    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p4, v2, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_83
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    goto :goto_56

    .line 137
    :cond_88
    const-string p1, "uri"

    .line 139
    invoke-virtual {p2, p1, p3}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_8d} :catch_8e

    .line 142
    goto :goto_93

    .line 143
    :catch_8e
    const-string p1, "500 Internal Server Error"

    .line 145
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/smb/HTTPSession;->sendError(Ljava/lang/String;)V

    .line 148
    :goto_93
    return-void
.end method

.method private decodeParms(Ljava/lang/String;Ljava/util/Properties;)V
    .registers 6

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance v0, Ljava/util/StringTokenizer;

    .line 6
    const-string v1, "&"

    .line 8
    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_a
    :goto_a
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_39

    .line 17
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    const/16 v1, 0x3d

    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 26
    move-result v1

    .line 27
    if-ltz v1, :cond_a

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/smb/HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_a

    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/smb/HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p2, v1, p1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    goto :goto_a

    .line 58
    :cond_39
    return-void
.end method

.method private decodePercent(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_39

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x25

    .line 19
    if-eq v2, v3, :cond_22

    .line 21
    const/16 v3, 0x2b

    .line 23
    if-eq v2, v3, :cond_1c

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    goto :goto_36

    .line 29
    :cond_1c
    const/16 v2, 0x20

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    goto :goto_36

    .line 35
    :cond_22
    add-int/lit8 v2, v1, 0x1

    .line 37
    add-int/lit8 v3, v1, 0x3

    .line 39
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    const/16 v3, 0x10

    .line 45
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 48
    move-result v2

    .line 49
    int-to-char v2, v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    add-int/lit8 v1, v1, 0x2

    .line 55
    :goto_36
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_6

    .line 58
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    .line 62
    return-object p1

    .line 63
    :catch_3e
    const-string p1, "400 Bad Request"

    .line 65
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/smb/HTTPSession;->sendError(Ljava/lang/String;)V

    .line 68
    const/4 p1, 0x0

    .line 69
    return-object p1
.end method

.method private handleResponse()V
    .registers 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v2, "500 Internal Server Error"

    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_5
    sget-object v0, Lcom/android/fileexplorer/smb/HTTPSession;->TAG:Ljava/lang/String;

    .line 8
    const-string v4, "Start handling request"

    .line 10
    invoke-static {v0, v4}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v4, v1, Lcom/android/fileexplorer/smb/HTTPSession;->mSocket:Ljava/net/Socket;

    .line 15
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 18
    move-result-object v3
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_12d
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_12} :catch_129
    .catchall {:try_start_5 .. :try_end_12} :catchall_127

    .line 19
    if-nez v3, :cond_18

    .line 21
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 24
    return-void

    .line 25
    :cond_18
    const/16 v4, 0x2000

    .line 27
    :try_start_1a
    new-array v5, v4, [B

    .line 29
    const/4 v6, 0x0

    .line 30
    invoke-virtual {v3, v5, v6, v4}, Ljava/io/InputStream;->read([BII)I

    .line 33
    move-result v4
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_12d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_21} :catch_129
    .catchall {:try_start_1a .. :try_end_21} :catchall_127

    .line 34
    if-gtz v4, :cond_27

    .line 36
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 39
    return-void

    .line 40
    :cond_27
    :try_start_27
    new-instance v7, Ljava/io/ByteArrayInputStream;

    .line 42
    invoke-direct {v7, v5, v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 45
    new-instance v8, Ljava/io/BufferedReader;

    .line 47
    new-instance v9, Ljava/io/InputStreamReader;

    .line 49
    const-string v10, "utf-8"

    .line 51
    invoke-direct {v9, v7, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 54
    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 57
    new-instance v7, Ljava/util/Properties;

    .line 59
    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    .line 62
    new-instance v9, Ljava/util/Properties;

    .line 64
    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    .line 67
    new-instance v10, Ljava/util/Properties;

    .line 69
    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    .line 72
    invoke-direct {v1, v8, v7, v9, v10}, Lcom/android/fileexplorer/smb/HTTPSession;->decodeHeader(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V

    .line 75
    new-instance v8, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    const-string v11, "Params: "

    .line 82
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v8

    .line 92
    invoke-static {v0, v8}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v8, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    const-string v9, "Header: "

    .line 102
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v8

    .line 112
    invoke-static {v0, v8}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "uri"

    .line 117
    invoke-virtual {v7, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object v7

    .line 121
    const-string v0, "content-length"

    .line 123
    invoke-virtual {v10, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object v0
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_7e} :catch_12d
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_7e} :catch_129
    .catchall {:try_start_27 .. :try_end_7e} :catchall_127

    .line 127
    const-wide v8, 0x7fffffffffffffffL

    .line 132
    if-eqz v0, :cond_96

    .line 134
    :try_start_85
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 137
    move-result v0
    :try_end_89
    .catch Ljava/lang/NumberFormatException; {:try_start_85 .. :try_end_89} :catch_8b
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_89} :catch_12d
    .catch Ljava/lang/InterruptedException; {:try_start_85 .. :try_end_89} :catch_129
    .catchall {:try_start_85 .. :try_end_89} :catchall_127

    .line 138
    int-to-long v11, v0

    .line 139
    goto :goto_97

    .line 140
    :catch_8b
    move-exception v0

    .line 141
    move-object v11, v0

    .line 142
    :try_start_8d
    sget-object v0, Lcom/android/fileexplorer/smb/HTTPSession;->TAG:Ljava/lang/String;

    .line 144
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 147
    move-result-object v11

    .line 148
    invoke-static {v0, v11}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_96
    move-wide v11, v8

    .line 152
    :goto_97
    move v0, v6

    .line 153
    :goto_98
    const/4 v13, 0x1

    .line 154
    if-ge v0, v4, :cond_ba

    .line 156
    aget-byte v14, v5, v0

    .line 158
    const/16 v15, 0xd

    .line 160
    if-ne v14, v15, :cond_b7

    .line 162
    add-int/lit8 v0, v0, 0x1

    .line 164
    aget-byte v14, v5, v0

    .line 166
    const/16 v6, 0xa

    .line 168
    if-ne v14, v6, :cond_b7

    .line 170
    add-int/lit8 v0, v0, 0x1

    .line 172
    aget-byte v14, v5, v0

    .line 174
    if-ne v14, v15, :cond_b7

    .line 176
    add-int/lit8 v0, v0, 0x1

    .line 178
    aget-byte v14, v5, v0

    .line 180
    if-ne v14, v6, :cond_b7

    .line 182
    move v6, v13

    .line 183
    goto :goto_bb

    .line 184
    :cond_b7
    add-int/2addr v0, v13

    .line 185
    const/4 v6, 0x0

    .line 186
    goto :goto_98

    .line 187
    :cond_ba
    const/4 v6, 0x0

    .line 188
    :goto_bb
    add-int/2addr v0, v13

    .line 189
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    .line 191
    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 194
    if-ge v0, v4, :cond_c8

    .line 196
    sub-int v15, v4, v0

    .line 198
    invoke-virtual {v14, v5, v0, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 201
    :cond_c8
    const-wide/16 v16, 0x0

    .line 203
    if-ge v0, v4, :cond_d2

    .line 205
    sub-int v0, v4, v0

    .line 207
    add-int/2addr v0, v13

    .line 208
    int-to-long v5, v0

    .line 209
    sub-long/2addr v11, v5

    .line 210
    goto :goto_da

    .line 211
    :cond_d2
    if-eqz v6, :cond_d8

    .line 213
    cmp-long v0, v11, v8

    .line 215
    if-nez v0, :cond_da

    .line 217
    :cond_d8
    move-wide/from16 v11, v16

    .line 219
    :cond_da
    :goto_da
    const/16 v0, 0x200

    .line 221
    new-array v5, v0, [B

    .line 223
    :goto_de
    if-ltz v4, :cond_f2

    .line 225
    cmp-long v4, v11, v16

    .line 227
    if-lez v4, :cond_f2

    .line 229
    const/4 v4, 0x0

    .line 230
    invoke-virtual {v3, v5, v4, v0}, Ljava/io/InputStream;->read([BII)I

    .line 233
    move-result v6

    .line 234
    int-to-long v8, v6

    .line 235
    sub-long/2addr v11, v8

    .line 236
    if-lez v6, :cond_f0

    .line 238
    invoke-virtual {v14, v5, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 241
    :cond_f0
    move v4, v6

    .line 242
    goto :goto_de

    .line 243
    :cond_f2
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 246
    move-result-object v0

    .line 247
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 249
    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 252
    new-instance v0, Ljava/io/BufferedReader;

    .line 254
    new-instance v5, Ljava/io/InputStreamReader;

    .line 256
    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 259
    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 262
    sget-object v4, Lcom/android/fileexplorer/smb/HTTPSession;->TAG:Ljava/lang/String;

    .line 264
    const-string v5, "try to generate response"

    .line 266
    invoke-static {v4, v5}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v4, v1, Lcom/android/fileexplorer/smb/HTTPSession;->mService:Lcom/android/fileexplorer/smb/StreamService;

    .line 271
    invoke-virtual {v4, v7, v10}, Lcom/android/fileexplorer/smb/StreamService;->serve(Ljava/lang/String;Ljava/util/Properties;)Lcom/android/fileexplorer/smb/Response;

    .line 274
    move-result-object v4

    .line 275
    if-nez v4, :cond_118

    .line 277
    invoke-direct {v1, v2}, Lcom/android/fileexplorer/smb/HTTPSession;->sendError(Ljava/lang/String;)V

    .line 280
    goto :goto_123

    .line 281
    :cond_118
    iget-object v5, v4, Lcom/android/fileexplorer/smb/Response;->status:Ljava/lang/String;

    .line 283
    iget-object v6, v4, Lcom/android/fileexplorer/smb/Response;->mimeType:Ljava/lang/String;

    .line 285
    iget-object v7, v4, Lcom/android/fileexplorer/smb/Response;->header:Ljava/util/Properties;

    .line 287
    iget-object v4, v4, Lcom/android/fileexplorer/smb/Response;->data:Lcom/android/fileexplorer/smb/StreamSource;

    .line 289
    invoke-direct {v1, v5, v6, v7, v4}, Lcom/android/fileexplorer/smb/HTTPSession;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Lcom/android/fileexplorer/smb/StreamSource;)V

    .line 292
    :goto_123
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_126} :catch_12d
    .catch Ljava/lang/InterruptedException; {:try_start_8d .. :try_end_126} :catch_129
    .catchall {:try_start_8d .. :try_end_126} :catchall_127

    .line 295
    goto :goto_129

    .line 296
    :catchall_127
    move-exception v0

    .line 297
    goto :goto_13e

    .line 298
    :catch_129
    :goto_129
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 301
    goto :goto_13d

    .line 302
    :catch_12d
    :try_start_12d
    invoke-direct {v1, v2}, Lcom/android/fileexplorer/smb/HTTPSession;->sendError(Ljava/lang/String;)V
    :try_end_130
    .catchall {:try_start_12d .. :try_end_130} :catchall_131

    .line 305
    goto :goto_129

    .line 306
    :catchall_131
    move-exception v0

    .line 307
    move-object v2, v0

    .line 308
    :try_start_133
    sget-object v0, Lcom/android/fileexplorer/smb/HTTPSession;->TAG:Ljava/lang/String;

    .line 310
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 313
    move-result-object v2

    .line 314
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13c
    .catchall {:try_start_133 .. :try_end_13c} :catchall_127

    .line 317
    goto :goto_129

    .line 318
    :goto_13d
    return-void

    .line 319
    :goto_13e
    invoke-static {v3}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 322
    throw v0
.end method

.method private sendError(Ljava/lang/String;)V
    .registers 4

    .line 1
    const-string v0, "text/plain"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/fileexplorer/smb/HTTPSession;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Lcom/android/fileexplorer/smb/StreamSource;)V

    .line 7
    new-instance p1, Ljava/lang/InterruptedException;

    .line 9
    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    .line 12
    throw p1
.end method

.method private sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Lcom/android/fileexplorer/smb/StreamSource;)V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget-object v1, Lcom/android/fileexplorer/smb/HTTPSession;->TAG:Ljava/lang/String;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v3, "start sending response, size:"

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p4}, Lcom/android/fileexplorer/smb/StreamSource;->getLength()J

    .line 17
    move-result-wide v3

    .line 18
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    if-eqz p1, :cond_107

    .line 30
    iget-object v1, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mSocket:Ljava/net/Socket;

    .line 32
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ljava/io/PrintWriter;

    .line 38
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v3, "HTTP/1.0 "

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string p1, " \r\n"

    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_41} :catch_111
    .catchall {:try_start_1 .. :try_end_41} :catchall_10f

    .line 66
    const-string p1, "\r\n"

    .line 68
    if-eqz p2, :cond_5c

    .line 70
    :try_start_45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    const-string v3, "Content-Type: "

    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    :cond_5c
    if-eqz p3, :cond_66

    .line 95
    const-string p2, "Date"

    .line 97
    invoke-virtual {p3, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object p2

    .line 101
    if-nez p2, :cond_88

    .line 103
    :cond_66
    new-instance p2, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    const-string v2, "Date: "

    .line 110
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    sget-object v2, Lcom/android/fileexplorer/smb/HTTPSession;->gmtFrmt:Ljava/text/SimpleDateFormat;

    .line 115
    new-instance v3, Ljava/util/Date;

    .line 117
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 120
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    :cond_88
    if-eqz p3, :cond_b9

    .line 139
    invoke-virtual {p3}, Ljava/util/Dictionary;->keys()Ljava/util/Enumeration;

    .line 142
    move-result-object p2

    .line 143
    :goto_8e
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_b9

    .line 149
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Ljava/lang/String;

    .line 155
    invoke-virtual {p3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    move-result-object v3

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v2, ": "

    .line 169
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    goto :goto_8e

    .line 186
    :cond_b9
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 192
    invoke-virtual {p4}, Lcom/android/fileexplorer/smb/StreamSource;->open()V

    .line 195
    const/16 p1, 0x2800

    .line 197
    new-array p1, p1, [B

    .line 199
    const/4 p2, 0x0

    .line 200
    move p3, p2

    .line 201
    :goto_c8
    invoke-virtual {p4, p1}, Lcom/android/fileexplorer/smb/StreamSource;->read([B)I

    .line 204
    move-result v1

    .line 205
    if-lez v1, :cond_e2

    .line 207
    iget-boolean v2, p0, Lcom/android/fileexplorer/smb/HTTPSession;->isStopped:Z
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_d0} :catch_111
    .catchall {:try_start_45 .. :try_end_d0} :catchall_10f

    .line 209
    if-nez v2, :cond_e2

    .line 211
    :try_start_d2
    invoke-virtual {v0, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d5} :catch_d7
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_10f

    .line 214
    add-int/2addr p3, v1

    .line 215
    goto :goto_c8

    .line 216
    :catch_d7
    move-exception v1

    .line 217
    :try_start_d8
    sget-object v2, Lcom/android/fileexplorer/smb/HTTPSession;->TAG:Ljava/lang/String;

    .line 219
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 222
    move-result-object v1

    .line 223
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    goto :goto_c8

    .line 227
    :cond_e2
    sget-object p1, Lcom/android/fileexplorer/smb/HTTPSession;->TAG:Ljava/lang/String;

    .line 229
    new-instance p2, Ljava/lang/StringBuilder;

    .line 231
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    const-string v1, "Send response finished, total sent:"

    .line 236
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    move-result-object p2

    .line 246
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_fb} :catch_111
    .catchall {:try_start_d8 .. :try_end_fb} :catchall_10f

    .line 252
    iget-object p1, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mSocket:Ljava/net/Socket;

    .line 254
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 257
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 260
    :try_start_103
    invoke-virtual {p4}, Lcom/android/fileexplorer/smb/StreamSource;->close()V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_106} :catch_123

    .line 263
    goto :goto_127

    .line 264
    :cond_107
    :try_start_107
    new-instance p1, Ljava/lang/Error;

    .line 266
    const-string p2, "sendResponse(): Status can\'t be null."

    .line 268
    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 271
    throw p1
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_10f} :catch_111
    .catchall {:try_start_107 .. :try_end_10f} :catchall_10f

    .line 272
    :catchall_10f
    move-exception p1

    .line 273
    goto :goto_128

    .line 274
    :catch_111
    move-exception p1

    .line 275
    :try_start_112
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_115
    .catchall {:try_start_112 .. :try_end_115} :catchall_10f

    .line 278
    iget-object p1, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mSocket:Ljava/net/Socket;

    .line 280
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 283
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 286
    if-eqz p4, :cond_127

    .line 288
    :try_start_11f
    invoke-virtual {p4}, Lcom/android/fileexplorer/smb/StreamSource;->close()V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_122} :catch_123

    .line 291
    goto :goto_127

    .line 292
    :catch_123
    move-exception p1

    .line 293
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 296
    :cond_127
    :goto_127
    return-void

    .line 297
    :goto_128
    iget-object p2, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mSocket:Ljava/net/Socket;

    .line 299
    invoke-static {p2}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 302
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 305
    if-eqz p4, :cond_13a

    .line 307
    :try_start_132
    invoke-virtual {p4}, Lcom/android/fileexplorer/smb/StreamSource;->close()V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_135} :catch_136

    .line 310
    goto :goto_13a

    .line 311
    :catch_136
    move-exception p2

    .line 312
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 315
    :cond_13a
    :goto_13a
    throw p1
.end method


# virtual methods
.method public isRunning()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mMainThread:Ljava/lang/Thread;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public run()V
    .registers 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/android/fileexplorer/smb/HTTPSession;->handleResponse()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_9

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mSocket:Ljava/net/Socket;

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 9
    return-void

    .line 10
    :catchall_9
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/android/fileexplorer/smb/HTTPSession;->mSocket:Ljava/net/Socket;

    .line 13
    invoke-static {v1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 16
    throw v0
.end method

.method public stop()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/smb/HTTPSession;->isStopped:Z

    .line 4
    return-void
.end method
