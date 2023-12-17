.class public La/b;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Lm0/p0;
.implements Lxcrash/i;


# static fields
.field public static final a:[I

.field public static final b:[J

.field public static final c:[Ljava/lang/Object;

.field public static d:Ljava/lang/reflect/Field; = null

.field public static e:Z = false

.field public static f:Z = false

.field public static g:Lm1/j;

.field public static final h:[B

.field public static final i:[B

.field public static final j:[Ljava/lang/String;

.field public static k:La/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 17

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [I

    .line 4
    sput-object v1, La/b;->a:[I

    .line 6
    new-array v1, v0, [J

    .line 8
    sput-object v1, La/b;->b:[J

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    sput-object v0, La/b;->c:[Ljava/lang/Object;

    .line 14
    const/16 v0, 0x40

    .line 16
    new-array v1, v0, [B

    .line 18
    fill-array-data v1, :array_44

    .line 21
    sput-object v1, La/b;->h:[B

    .line 23
    new-array v0, v0, [B

    .line 25
    fill-array-data v0, :array_68

    .line 28
    sput-object v0, La/b;->i:[B

    .line 30
    const-string v1, "0"

    .line 32
    const-string v2, "1"

    .line 34
    const-string v3, "2"

    .line 36
    const-string v4, "3"

    .line 38
    const-string v5, "4"

    .line 40
    const-string v6, "5"

    .line 42
    const-string v7, "6"

    .line 44
    const-string v8, "7"

    .line 46
    const-string v9, "8"

    .line 48
    const-string v10, "9"

    .line 50
    const-string v11, "a"

    .line 52
    const-string v12, "b"

    .line 54
    const-string v13, "c"

    .line 56
    const-string v14, "d"

    .line 58
    const-string v15, "e"

    .line 60
    const-string v16, "f"

    .line 62
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    sput-object v0, La/b;->j:[Ljava/lang/String;

    .line 68
    return-void

    .line 69
    :array_44
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_68
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public synthetic constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .registers 2

    .line 1
    if-nez p1, :cond_9

    .line 3
    sget-object p1, Lo4/b;->c:Ljava/nio/charset/Charset;

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static B(Lm4/b;)Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .registers 3

    .line 1
    iget-object v0, p0, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 3
    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->AES_INTERNAL_ONLY:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 5
    if-eq v0, v1, :cond_7

    .line 7
    return-object v0

    .line 8
    :cond_7
    iget-object p0, p0, Lm4/b;->p:Lm4/a;

    .line 10
    if-eqz p0, :cond_e

    .line 12
    iget-object p0, p0, Lm4/a;->f:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 14
    return-object p0

    .line 15
    :cond_e
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 17
    const-string v0, "AesExtraDataRecord not present in local header for aes encrypted data"

    .line 19
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0
.end method

.method public static C(Lm4/n;Ljava/lang/String;)Lm4/g;
    .registers 5

    .line 1
    invoke-static {p0, p1}, La/b;->D(Lm4/n;Ljava/lang/String;)Lm4/g;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1e

    .line 7
    const-string v0, "\\\\"

    .line 9
    const-string v1, "/"

    .line 11
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-static {p0, p1}, La/b;->D(Lm4/n;Ljava/lang/String;)Lm4/g;

    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_1d

    .line 21
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    invoke-static {p0, p1}, La/b;->D(Lm4/n;Ljava/lang/String;)Lm4/g;

    .line 28
    move-result-object v0

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move-object v0, v2

    .line 31
    :cond_1e
    :goto_1e
    return-object v0
.end method

.method public static D(Lm4/n;Ljava/lang/String;)Lm4/g;
    .registers 6

    .line 1
    if-eqz p0, :cond_68

    .line 3
    invoke-static {p1}, La/b;->O(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5c

    .line 9
    iget-object v0, p0, Lm4/n;->b:Lo1/a;

    .line 11
    if-eqz v0, :cond_50

    .line 13
    iget-object v0, v0, Lo1/a;->b:Ljava/lang/Object;

    .line 15
    move-object v1, v0

    .line 16
    check-cast v1, Ljava/util/List;

    .line 18
    if-eqz v1, :cond_44

    .line 20
    check-cast v0, Ljava/util/List;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-nez v0, :cond_1d

    .line 29
    return-object v1

    .line 30
    :cond_1d
    iget-object p0, p0, Lm4/n;->b:Lo1/a;

    .line 32
    iget-object p0, p0, Lo1/a;->b:Ljava/lang/Object;

    .line 34
    check-cast p0, Ljava/util/List;

    .line 36
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object p0

    .line 40
    :cond_27
    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_43

    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lm4/g;

    .line 52
    iget-object v2, v0, Lm4/b;->k:Ljava/lang/String;

    .line 54
    invoke-static {v2}, La/b;->O(Ljava/lang/String;)Z

    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_3c

    .line 60
    goto :goto_27

    .line 61
    :cond_3c
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_27

    .line 67
    return-object v0

    .line 68
    :cond_43
    return-object v1

    .line 69
    :cond_44
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 71
    const-string v0, "file Headers are null, cannot determine file header with exact match for fileName: "

    .line 73
    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p0

    .line 81
    :cond_50
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 83
    const-string v0, "central directory is null, cannot determine file header with exact match for fileName: "

    .line 85
    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p0

    .line 93
    :cond_5c
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 95
    const-string v0, "file name is null, cannot determine file header with exact match for fileName: "

    .line 97
    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 104
    throw p0

    .line 105
    :cond_68
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    .line 107
    const-string v0, "zip model is null, cannot determine file header with exact match for fileName: "

    .line 109
    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 116
    throw p0
.end method

.method public static F(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    instance-of v0, p0, Ljava/lang/InterruptedException;

    .line 6
    if-nez v0, :cond_36

    .line 8
    sget-boolean v0, La/b;->f:Z

    .line 10
    if-eqz v0, :cond_c

    .line 12
    return-void

    .line 13
    :cond_c
    instance-of v0, p0, Ljava/nio/channels/ClosedByInterruptException;

    .line 15
    if-nez v0, :cond_2a

    .line 17
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    .line 19
    if-eqz v0, :cond_29

    .line 21
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    .line 23
    if-nez v0, :cond_29

    .line 25
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    .line 27
    if-eqz v0, :cond_1d

    .line 29
    goto :goto_29

    .line 30
    :cond_1d
    new-instance v0, Ljava/lang/InterruptedException;

    .line 32
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Ljava/lang/InterruptedException;

    .line 41
    throw p0

    .line 42
    :cond_29
    :goto_29
    return-void

    .line 43
    :cond_2a
    new-instance v0, Ljava/lang/InterruptedException;

    .line 45
    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Ljava/lang/InterruptedException;

    .line 54
    throw p0

    .line 55
    :cond_36
    check-cast p0, Ljava/lang/InterruptedException;

    .line 57
    throw p0
.end method

.method public static G(Ljava/lang/String;)[B
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 7
    new-array v1, v0, [B

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_9
    if-ge v2, v0, :cond_29

    .line 12
    mul-int/lit8 v3, v2, 0x2

    .line 14
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 17
    move-result v4

    .line 18
    const/16 v5, 0x10

    .line 20
    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    .line 23
    move-result v4

    .line 24
    mul-int/2addr v4, v5

    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 27
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 30
    move-result v3

    .line 31
    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    .line 34
    move-result v3

    .line 35
    add-int/2addr v3, v4

    .line 36
    int-to-byte v3, v3

    .line 37
    aput-byte v3, v1, v2

    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 41
    goto :goto_9

    .line 42
    :cond_29
    return-object v1
.end method

.method public static H(Ljava/lang/String;)[B
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 7
    new-array v1, v0, [B

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_9
    if-ge v2, v0, :cond_29

    .line 12
    mul-int/lit8 v3, v2, 0x2

    .line 14
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 17
    move-result v4

    .line 18
    const/16 v5, 0x10

    .line 20
    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    .line 23
    move-result v4

    .line 24
    mul-int/2addr v4, v5

    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 27
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 30
    move-result v3

    .line 31
    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    .line 34
    move-result v3

    .line 35
    add-int/2addr v3, v4

    .line 36
    int-to-byte v3, v3

    .line 37
    aput-byte v3, v1, v2

    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 41
    goto :goto_9

    .line 42
    :cond_29
    return-object v1
.end method

.method public static J(IB)Z
    .registers 6

    int-to-long v0, p1

    const-wide/16 v2, 0x1

    shl-long p0, v2, p0

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static K(Landroid/view/MotionEvent;I)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    .line 4
    move-result p0

    .line 5
    and-int/2addr p0, p1

    .line 6
    if-ne p0, p1, :cond_9

    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 p0, 0x0

    .line 11
    :goto_a
    return p0
.end method

.method public static M(Lcn/kuaipan/android/exception/KscException;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 10
    move-result-object p0

    .line 11
    :cond_a
    instance-of v0, p0, Ljava/net/SocketException;

    .line 13
    if-nez v0, :cond_45

    .line 15
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    .line 17
    if-nez v0, :cond_45

    .line 19
    instance-of v0, p0, Ljava/nio/channels/ConnectionPendingException;

    .line 21
    if-nez v0, :cond_45

    .line 23
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    .line 25
    if-nez v0, :cond_45

    .line 27
    instance-of v0, p0, Lorg/apache/http/ConnectionClosedException;

    .line 29
    if-nez v0, :cond_45

    .line 31
    instance-of v0, p0, Ljava/net/HttpRetryException;

    .line 33
    if-nez v0, :cond_45

    .line 35
    instance-of v0, p0, Lorg/apache/http/NoHttpResponseException;

    .line 37
    if-nez v0, :cond_45

    .line 39
    instance-of v0, p0, Ljava/net/ProtocolException;

    .line 41
    if-nez v0, :cond_45

    .line 43
    instance-of v0, p0, Lorg/apache/http/client/ClientProtocolException;

    .line 45
    if-nez v0, :cond_45

    .line 47
    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    .line 49
    if-nez v0, :cond_45

    .line 51
    instance-of v0, p0, Ljava/net/UnknownHostException;

    .line 53
    if-nez v0, :cond_45

    .line 55
    instance-of v0, p0, Ljava/net/UnknownServiceException;

    .line 57
    if-nez v0, :cond_45

    .line 59
    instance-of v0, p0, Lorg/apache/http/HttpException;

    .line 61
    if-nez v0, :cond_45

    .line 63
    instance-of p0, p0, Lcn/kuaipan/android/exception/NetworkException;

    .line 65
    if-eqz p0, :cond_43

    .line 67
    goto :goto_45

    .line 68
    :cond_43
    const/4 p0, 0x0

    .line 69
    goto :goto_46

    .line 70
    :cond_45
    :goto_45
    const/4 p0, 0x1

    .line 71
    :goto_46
    return p0
.end method

.method public static N(Ljava/lang/Exception;)Z
    .registers 1

    .line 1
    invoke-static {p0}, La/b;->b0(Ljava/lang/Throwable;)Lcn/kuaipan/android/exception/KscTransferStopByCallerException;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_8

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 p0, 0x0

    .line 10
    :goto_9
    return p0
.end method

.method public static O(Ljava/lang/String;)Z
    .registers 1

    .line 1
    if-eqz p0, :cond_e

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    move-result p0

    .line 11
    if-lez p0, :cond_e

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p0, 0x0

    .line 16
    :goto_f
    return p0
.end method

.method public static P(Landroid/content/Context;)Z
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/Intent;

    .line 7
    const-string v2, "cn.wps.moffice.service.lite.work.snapshot.action"

    .line 9
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    const/high16 v2, 0x20000

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    const-string v2, "cn.wps.moffice.service.lite.work.snapshot.SnapshotLiteService"

    .line 21
    const-string v3, "cn.wps.moffice_eng.xiaomi.lite"

    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v0, :cond_4d

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    move-result v5

    .line 30
    if-lez v5, :cond_4d

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v0

    .line 36
    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_4d

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 48
    if-eqz v5, :cond_23

    .line 50
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 52
    if-eqz v6, :cond_23

    .line 54
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 56
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_49

    .line 62
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 64
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 66
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_49

    .line 72
    move v5, v1

    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    move v5, v4

    .line 75
    :goto_4a
    if-eqz v5, :cond_23

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    move v5, v4

    .line 79
    :goto_4e
    if-eqz v5, :cond_74

    .line 81
    :try_start_50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 84
    move-result-object p0

    .line 85
    new-instance v0, Landroid/content/ComponentName;

    .line 87
    invoke-direct {v0, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/16 v2, 0x80

    .line 92
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 95
    move-result-object p0

    .line 96
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 98
    const-string v0, "cn.wps.moffice.service.lite.work.snapshot"

    .line 100
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Ljava/lang/Boolean;

    .line 106
    if-eqz p0, :cond_70

    .line 108
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 111
    move-result p0
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_6f} :catch_70

    .line 112
    goto :goto_71

    .line 113
    :catch_70
    :cond_70
    move p0, v4

    .line 114
    :goto_71
    if-eqz p0, :cond_74

    .line 116
    goto :goto_75

    .line 117
    :cond_74
    move v1, v4

    .line 118
    :goto_75
    return v1
.end method

.method public static final Q(C)Z
    .registers 2

    .line 1
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_f

    .line 7
    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 p0, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 p0, 0x1

    .line 17
    :goto_10
    return p0
.end method

.method public static S(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;)V
    .registers 3

    .line 1
    if-eqz p2, :cond_20

    .line 3
    iget-object p2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 5
    if-nez p2, :cond_20

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    move-result-object p0

    .line 11
    :goto_a
    instance-of p2, p0, Landroid/view/View;

    .line 13
    if-eqz p2, :cond_20

    .line 15
    instance-of p2, p0, Landroidx/appcompat/widget/i1;

    .line 17
    if-eqz p2, :cond_1b

    .line 19
    check-cast p0, Landroidx/appcompat/widget/i1;

    .line 21
    invoke-interface {p0}, Landroidx/appcompat/widget/i1;->a()Ljava/lang/CharSequence;

    .line 24
    move-result-object p0

    .line 25
    iput-object p0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 27
    goto :goto_20

    .line 28
    :cond_1b
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 31
    move-result-object p0

    .line 32
    goto :goto_a

    .line 33
    :cond_20
    :goto_20
    return-void
.end method

.method public static T(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    const-string p0, "stat"

    .line 9
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    const-string v2, "OK"

    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_15

    .line 21
    return-object v0

    .line 22
    :cond_15
    const-string p0, "proxies"

    .line 24
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 31
    move-result v1

    .line 32
    new-array v2, v1, [Ljava/lang/String;

    .line 34
    const/4 v3, 0x0

    .line 35
    :goto_22
    if-ge v3, v1, :cond_33

    .line 37
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 40
    move-result-object v4

    .line 41
    const-string v5, "url"

    .line 43
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v4

    .line 47
    aput-object v4, v2, v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_34

    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 51
    goto :goto_22

    .line 52
    :cond_33
    return-object v2

    .line 53
    :catch_34
    return-object v0
.end method

.method public static U(I[B)V
    .registers 5

    .line 1
    int-to-byte v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    aput-byte v0, p1, v1

    .line 5
    shr-int/lit8 v0, p0, 0x8

    .line 7
    int-to-byte v0, v0

    .line 8
    const/4 v2, 0x1

    .line 9
    aput-byte v0, p1, v2

    .line 11
    shr-int/lit8 v0, p0, 0x10

    .line 13
    int-to-byte v0, v0

    .line 14
    const/4 v2, 0x2

    .line 15
    aput-byte v0, p1, v2

    .line 17
    shr-int/lit8 p0, p0, 0x18

    .line 19
    int-to-byte p0, p0

    .line 20
    const/4 v0, 0x3

    .line 21
    aput-byte p0, p1, v0

    .line 23
    const/4 p0, 0x4

    .line 24
    :goto_17
    const/16 v0, 0xf

    .line 26
    if-gt p0, v0, :cond_20

    .line 28
    aput-byte v1, p1, p0

    .line 30
    add-int/lit8 p0, p0, 0x1

    .line 32
    goto :goto_17

    .line 33
    :cond_20
    return-void
.end method

.method public static V(Ljava/io/InputStream;[BII)I
    .registers 7

    .line 1
    if-ltz p2, :cond_31

    .line 3
    if-ltz p3, :cond_29

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p3, :cond_8

    .line 8
    return v0

    .line 9
    :cond_8
    add-int v1, p2, p3

    .line 11
    array-length v2, p1

    .line 12
    if-gt v1, v2, :cond_21

    .line 14
    :goto_d
    if-eq v0, p3, :cond_20

    .line 16
    add-int v1, p2, v0

    .line 18
    sub-int v2, p3, v0

    .line 20
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 23
    move-result v1

    .line 24
    const/4 v2, -0x1

    .line 25
    if-ne v1, v2, :cond_1e

    .line 27
    if-nez v0, :cond_1d

    .line 29
    return v2

    .line 30
    :cond_1d
    return v0

    .line 31
    :cond_1e
    add-int/2addr v0, v1

    .line 32
    goto :goto_d

    .line 33
    :cond_20
    return v0

    .line 34
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    const-string p1, "Length greater than buffer size"

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p0

    .line 42
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    const-string p1, "Negative length"

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0

    .line 50
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 52
    const-string p1, "Negative offset"

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p0
.end method

.method public static W(Ljava/io/PushbackInputStream;[B)I
    .registers 8

    .line 1
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_3d

    .line 8
    array-length v2, p1

    .line 9
    if-eq v0, v2, :cond_3c

    .line 11
    if-ltz v0, :cond_34

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_11

    .line 16
    move v0, v2

    .line 17
    goto :goto_28

    .line 18
    :cond_11
    array-length v3, p1

    .line 19
    sub-int/2addr v3, v0

    .line 20
    const/4 v4, 0x1

    .line 21
    :goto_14
    array-length v5, p1

    .line 22
    if-ge v0, v5, :cond_28

    .line 24
    if-eq v2, v1, :cond_28

    .line 26
    const/16 v2, 0xf

    .line 28
    if-ge v4, v2, :cond_28

    .line 30
    invoke-virtual {p0, p1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    .line 33
    move-result v2

    .line 34
    if-lez v2, :cond_25

    .line 36
    add-int/2addr v0, v2

    .line 37
    sub-int/2addr v3, v2

    .line 38
    :cond_25
    add-int/lit8 v4, v4, 0x1

    .line 40
    goto :goto_14

    .line 41
    :cond_28
    :goto_28
    array-length p0, p1

    .line 42
    if-ne v0, p0, :cond_2c

    .line 44
    goto :goto_3c

    .line 45
    :cond_2c
    new-instance p0, Ljava/io/IOException;

    .line 47
    const-string p1, "Cannot read fully into byte buffer"

    .line 49
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0

    .line 53
    :cond_34
    new-instance p0, Ljava/io/IOException;

    .line 55
    const-string p1, "Invalid readLength"

    .line 57
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0

    .line 61
    :cond_3c
    :goto_3c
    return v0

    .line 62
    :cond_3d
    new-instance p0, Ljava/io/IOException;

    .line 64
    const-string p1, "Unexpected EOF reached when trying to read stream"

    .line 66
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p0
.end method

.method public static b0(Ljava/lang/Throwable;)Lcn/kuaipan/android/exception/KscTransferStopByCallerException;
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    const/4 v1, 0x2

    .line 6
    new-array v2, v1, [Ljava/lang/Throwable;

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object p0, v2, v3

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 14
    move-result-object p0

    .line 15
    const/4 v4, 0x1

    .line 16
    aput-object p0, v2, v4

    .line 18
    :goto_11
    if-ge v3, v1, :cond_1f

    .line 20
    aget-object p0, v2, v3

    .line 22
    instance-of v4, p0, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;

    .line 24
    if-eqz v4, :cond_1c

    .line 26
    check-cast p0, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;

    .line 28
    return-object p0

    .line 29
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    .line 31
    goto :goto_11

    .line 32
    :cond_1f
    return-object v0
.end method

.method public static c(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3d

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    goto :goto_3d

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :try_start_e
    new-instance v1, Ljava/io/FileInputStream;

    .line 17
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_1c
    .catchall {:try_start_e .. :try_end_13} :catchall_1a

    .line 20
    :try_start_13
    invoke-static {v1}, La/b;->d(Ljava/io/FileInputStream;)Ljava/lang/String;

    .line 23
    move-result-object v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_1d
    .catchall {:try_start_13 .. :try_end_17} :catchall_37

    .line 24
    goto :goto_33

    .line 25
    :goto_18
    move-object v0, v1

    .line 26
    goto :goto_39

    .line 27
    :catchall_1a
    move-exception p0

    .line 28
    goto :goto_39

    .line 29
    :catch_1c
    move-object v1, v0

    .line 30
    :catch_1d
    :try_start_1d
    const-string v2, "Encode"

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string v4, "Failed compute SHA1 for file: "

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_37

    .line 52
    :goto_33
    :try_start_33
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_36

    .line 55
    :catchall_36
    return-object v0

    .line 56
    :catchall_37
    move-exception p0

    .line 57
    goto :goto_18

    .line 58
    :goto_39
    :try_start_39
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3c

    .line 61
    :catchall_3c
    throw p0

    .line 62
    :cond_3d
    :goto_3d
    const-string p0, ""

    .line 64
    return-object p0
.end method

.method public static c0(Lm1/f;Lcn/kuaipan/android/kss/TransferStep;)V
    .registers 4

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_6

    .line 5
    :cond_4
    iget-object v0, p0, Lm1/f;->e:Ljava/lang/Throwable;

    .line 7
    :goto_6
    if-eqz v0, :cond_18

    .line 9
    instance-of v1, v0, Ljava/lang/RuntimeException;

    .line 11
    if-eqz v1, :cond_f

    .line 13
    check-cast v0, Ljava/lang/RuntimeException;

    .line 15
    throw v0

    .line 16
    :cond_f
    invoke-virtual {p0}, Lm1/f;->a()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    invoke-static {v0, p0, p1}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    .line 23
    move-result-object p0

    .line 24
    throw p0

    .line 25
    :cond_18
    return-void
.end method

.method public static d(Ljava/io/FileInputStream;)Ljava/lang/String;
    .registers 5

    .line 1
    :try_start_0
    const-string v0, "sha1"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x4000

    .line 9
    new-array v1, v1, [B

    .line 11
    :goto_a
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 14
    move-result v2

    .line 15
    if-ltz v2, :cond_15

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 21
    goto :goto_a

    .line 22
    :cond_15
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, La/b;->l([B)Ljava/lang/String;

    .line 29
    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 30
    return-object p0

    .line 31
    :catch_1e
    move-exception p0

    .line 32
    const-string v0, "Encode"

    .line 34
    const-string v1, "SHA1Encode failed."

    .line 36
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method

.method public static d0(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    .line 3
    if-nez v0, :cond_13

    .line 5
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    .line 7
    if-nez v0, :cond_10

    .line 9
    instance-of v0, p0, Ljava/lang/LinkageError;

    .line 11
    if-nez v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    check-cast p0, Ljava/lang/LinkageError;

    .line 16
    throw p0

    .line 17
    :cond_10
    check-cast p0, Ljava/lang/ThreadDeath;

    .line 19
    throw p0

    .line 20
    :cond_13
    check-cast p0, Ljava/lang/VirtualMachineError;

    .line 22
    throw p0
.end method

.method public static e(Ljava/io/InputStream;I)Ljava/lang/String;
    .registers 8

    .line 1
    :try_start_0
    const-string v0, "sha1"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x4000

    .line 9
    new-array v2, v1, [B

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :cond_c
    sub-int v5, p1, v4

    .line 15
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 18
    move-result v5

    .line 19
    invoke-virtual {p0, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    .line 22
    move-result v5

    .line 23
    if-ltz v5, :cond_20

    .line 25
    invoke-virtual {v0, v2, v3, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 28
    add-int/2addr v4, v5

    .line 29
    sub-int v5, p1, v4

    .line 31
    if-gtz v5, :cond_c

    .line 33
    :cond_20
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, La/b;->l([B)Ljava/lang/String;

    .line 40
    move-result-object p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 41
    return-object p0

    .line 42
    :catch_29
    move-exception p0

    .line 43
    const-string p1, "Encode"

    .line 45
    const-string v0, "SHA1Encode failed."

    .line 47
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    const/4 p0, 0x0

    .line 51
    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_13

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move-object v1, v0

    .line 21
    :goto_14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_22

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    :cond_22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_29

    .line 41
    return-object v0

    .line 42
    :cond_29
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_35

    .line 50
    invoke-static {v1, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    :cond_35
    const-string v0, "lite_cache"

    .line 56
    invoke-static {v1, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    new-instance v1, Ljava/io/File;

    .line 62
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_49

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 74
    :cond_49
    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public static f0(IB)B
    .registers 3

    const/4 v0, 0x1

    shl-int p0, v0, p0

    not-int p0, p0

    and-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9d

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_9d

    .line 13
    if-nez p2, :cond_10

    .line 15
    goto/16 :goto_9d

    .line 17
    :cond_10
    sget-object v0, Lxcrash/d;->i:Lxcrash/d;

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v2, "\n\n"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string p1, ":\n"

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    const/4 p2, 0x0

    .line 51
    :try_start_32
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 53
    const-string v1, "rws"

    .line 55
    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_39} :catch_81
    .catchall {:try_start_32 .. :try_end_39} :catchall_7f

    .line 58
    :try_start_39
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 61
    move-result-wide v1

    .line 62
    const-wide/16 v3, 0x0

    .line 64
    cmp-long p0, v1, v3

    .line 66
    if-lez p0, :cond_6a

    .line 68
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 71
    move-result-object v5

    .line 72
    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 74
    const-wide/16 v7, 0x0

    .line 76
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 79
    move-result-wide v9

    .line 80
    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 87
    move-result-wide v1

    .line 88
    :goto_57
    cmp-long p2, v1, v3

    .line 90
    if-lez p2, :cond_69

    .line 92
    long-to-int p2, v1

    .line 93
    add-int/lit8 p2, p2, -0x1

    .line 95
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_65

    .line 101
    goto :goto_69

    .line 102
    :cond_65
    const-wide/16 v5, 0x1

    .line 104
    sub-long/2addr v1, v5

    .line 105
    goto :goto_57

    .line 106
    :cond_69
    :goto_69
    move-wide v3, v1

    .line 107
    :cond_6a
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 110
    const-string p0, "UTF-8"

    .line 112
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {v0, p0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_76} :catch_7c
    .catchall {:try_start_39 .. :try_end_76} :catchall_7a

    .line 119
    :try_start_76
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_95

    .line 122
    goto :goto_95

    .line 123
    :catchall_7a
    move-exception p0

    .line 124
    goto :goto_97

    .line 125
    :catch_7c
    move-exception p0

    .line 126
    move-object p2, v0

    .line 127
    goto :goto_82

    .line 128
    :catchall_7f
    move-exception p0

    .line 129
    goto :goto_96

    .line 130
    :catch_81
    move-exception p0

    .line 131
    :goto_82
    :try_start_82
    sget-object p1, Lxcrash/XCrash;->c:Lxcrash/i;

    .line 133
    const-string v0, "xcrash"

    .line 135
    const-string v1, "FileManager appendText failed"

    .line 137
    check-cast p1, La/b;

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_82 .. :try_end_90} :catchall_7f

    .line 145
    if-eqz p2, :cond_95

    .line 147
    :try_start_92
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_95

    .line 150
    :catch_95
    :cond_95
    :goto_95
    return-void

    .line 151
    :goto_96
    move-object v0, p2

    .line 152
    :goto_97
    if-eqz v0, :cond_9c

    .line 154
    :try_start_99
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_9c

    .line 157
    :catch_9c
    :cond_9c
    throw p0

    .line 158
    :cond_9d
    :goto_9d
    return-void
.end method

.method public static h([III)I
    .registers 6

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_3
    if-gt v0, p1, :cond_18

    .line 6
    add-int v1, v0, p1

    .line 8
    ushr-int/lit8 v1, v1, 0x1

    .line 10
    aget v2, p0, v1

    .line 12
    if-ge v2, p2, :cond_11

    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 16
    move v0, v1

    .line 17
    goto :goto_3

    .line 18
    :cond_11
    if-le v2, p2, :cond_17

    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 22
    move p1, v1

    .line 23
    goto :goto_3

    .line 24
    :cond_17
    return v1

    .line 25
    :cond_18
    not-int p0, v0

    .line 26
    return p0
.end method

.method public static i([JIJ)I
    .registers 8

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_3
    if-gt v0, p1, :cond_1a

    .line 6
    add-int v1, v0, p1

    .line 8
    ushr-int/lit8 v1, v1, 0x1

    .line 10
    aget-wide v2, p0, v1

    .line 12
    cmp-long v2, v2, p2

    .line 14
    if-gez v2, :cond_13

    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 18
    move v0, v1

    .line 19
    goto :goto_3

    .line 20
    :cond_13
    if-lez v2, :cond_19

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 24
    move p1, v1

    .line 25
    goto :goto_3

    .line 26
    :cond_19
    return v1

    .line 27
    :cond_1a
    not-int p0, v0

    .line 28
    return p0
.end method

.method public static k(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 4

    .line 1
    if-nez p1, :cond_8

    .line 3
    const-string p1, "null"

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    goto :goto_3f

    .line 9
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    move-result v1

    .line 21
    if-gtz v1, :cond_2c

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const/16 v1, 0x2e

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 36
    move-result v1

    .line 37
    if-lez v1, :cond_2c

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    :cond_2c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const/16 v0, 0x7b

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 56
    move-result p1

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :goto_3f
    return-void
.end method

.method public static l([B)Ljava/lang/String;
    .registers 5

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    .line 7
    array-length v1, p0

    .line 8
    mul-int/lit8 v1, v1, 0x2

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_d
    array-length v2, p0

    .line 15
    if-ge v1, v2, :cond_29

    .line 17
    sget-object v2, La/b;->j:[Ljava/lang/String;

    .line 19
    aget-byte v3, p0, v1

    .line 21
    ushr-int/lit8 v3, v3, 0x4

    .line 23
    and-int/lit8 v3, v3, 0xf

    .line 25
    aget-object v3, v2, v3

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    aget-byte v3, p0, v1

    .line 32
    and-int/lit8 v3, v3, 0xf

    .line 34
    aget-object v2, v2, v3

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_d

    .line 42
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public static m(ZLjava/lang/String;)V
    .registers 2

    .line 1
    if-eqz p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public static n(I)V
    .registers 1

    .line 1
    if-ltz p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 6
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 9
    throw p0
.end method

.method public static o(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    .line 1
    if-eqz p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public static p(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    return p1

    :cond_5
    cmpl-float p1, p0, p2

    if-lez p1, :cond_a

    return p2

    :cond_a
    return p0
.end method

.method public static q(III)I
    .registers 3

    if-ge p0, p1, :cond_3

    return p1

    :cond_3
    if-le p0, p2, :cond_6

    return p2

    :cond_6
    return p0
.end method

.method public static r([CZ)[B
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_25

    .line 4
    :try_start_3
    sget-object p1, Lo4/b;->b:Ljava/nio/charset/Charset;

    .line 6
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 17
    move-result v1

    .line 18
    new-array v1, v1, [B

    .line 20
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_17

    .line 23
    goto :goto_33

    .line 24
    :catch_17
    array-length p1, p0

    .line 25
    new-array v1, p1, [B

    .line 27
    :goto_1a
    array-length p1, p0

    .line 28
    if-ge v0, p1, :cond_33

    .line 30
    aget-char p1, p0, v0

    .line 32
    int-to-byte p1, p1

    .line 33
    aput-byte p1, v1, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 37
    goto :goto_1a

    .line 38
    :cond_25
    array-length p1, p0

    .line 39
    new-array v1, p1, [B

    .line 41
    :goto_28
    array-length p1, p0

    .line 42
    if-ge v0, p1, :cond_33

    .line 44
    aget-char p1, p0, v0

    .line 46
    int-to-byte p1, p1

    .line 47
    aput-byte p1, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    .line 51
    goto :goto_28

    .line 52
    :cond_33
    :goto_33
    return-object v1
.end method

.method public static s(Lm4/n;)Lk4/h;
    .registers 4

    .line 1
    iget-object v0, p0, Lm4/n;->h:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, ".zip.001"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_16

    .line 15
    new-instance v0, Lk4/f;

    .line 17
    iget-object p0, p0, Lm4/n;->h:Ljava/io/File;

    .line 19
    invoke-direct {v0, p0}, Lk4/f;-><init>(Ljava/io/File;)V

    .line 22
    return-object v0

    .line 23
    :cond_16
    new-instance v0, Lk4/m;

    .line 25
    iget-object v1, p0, Lm4/n;->h:Ljava/io/File;

    .line 27
    iget-boolean v2, p0, Lm4/n;->f:Z

    .line 29
    iget-object p0, p0, Lm4/n;->c:Lm4/d;

    .line 31
    iget p0, p0, Lm4/d;->b:I

    .line 33
    invoke-direct {v0, v1, p0, v2}, Lk4/m;-><init>(Ljava/io/File;IZ)V

    .line 36
    return-object v0
.end method

.method public static t([BZLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    .line 1
    if-eqz p2, :cond_8

    .line 3
    new-instance p1, Ljava/lang/String;

    .line 5
    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 8
    return-object p1

    .line 9
    :cond_8
    if-eqz p1, :cond_12

    .line 11
    new-instance p1, Ljava/lang/String;

    .line 13
    sget-object p2, Lo4/b;->b:Ljava/nio/charset/Charset;

    .line 15
    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 18
    return-object p1

    .line 19
    :cond_12
    :try_start_12
    new-instance p1, Ljava/lang/String;

    .line 21
    const-string p2, "Cp437"

    .line 23
    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 26
    return-object p1

    .line 27
    :catch_1a
    new-instance p1, Ljava/lang/String;

    .line 29
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    .line 32
    return-object p1
.end method

.method public static u([B[CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)[B
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    .line 6
    move-result v1

    .line 7
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getMacLength()I

    .line 10
    move-result v2

    .line 11
    add-int v3, v1, v2

    .line 13
    const/4 v4, 0x2

    .line 14
    add-int/2addr v3, v4

    .line 15
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    move-object/from16 v5, p1

    .line 20
    move/from16 v6, p3

    .line 22
    invoke-static {v5, v6}, La/b;->r([CZ)[B

    .line 25
    move-result-object v5

    .line 26
    new-instance v6, Lh4/a;

    .line 28
    const-string v7, "HmacSHA1"

    .line 30
    invoke-direct {v6, v7}, Lh4/a;-><init>(Ljava/lang/String;)V

    .line 33
    :try_start_20
    iget-object v7, v6, Lh4/a;->a:Ljavax/crypto/Mac;

    .line 35
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    .line 37
    iget-object v9, v6, Lh4/a;->c:Ljava/lang/String;

    .line 39
    invoke-direct {v8, v5, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 42
    invoke-virtual {v7, v8}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_2c
    .catch Ljava/security/InvalidKeyException; {:try_start_20 .. :try_end_2c} :catch_d8

    .line 45
    if-nez v3, :cond_31

    .line 47
    iget v5, v6, Lh4/a;->b:I

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v5, v3

    .line 51
    :goto_32
    iget v7, v6, Lh4/a;->b:I

    .line 53
    rem-int v8, v5, v7

    .line 55
    const/4 v10, 0x0

    .line 56
    if-lez v8, :cond_3b

    .line 58
    const/4 v8, 0x1

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    move v8, v10

    .line 61
    :goto_3c
    div-int v11, v5, v7

    .line 63
    add-int/2addr v11, v8

    .line 64
    add-int/lit8 v8, v11, -0x1

    .line 66
    mul-int/2addr v8, v7

    .line 67
    sub-int v8, v5, v8

    .line 69
    mul-int v12, v11, v7

    .line 71
    new-array v12, v12, [B

    .line 73
    move v14, v10

    .line 74
    const/4 v13, 0x1

    .line 75
    :goto_4a
    if-gt v13, v11, :cond_af

    .line 77
    iget v15, v6, Lh4/a;->b:I

    .line 79
    new-array v9, v15, [B

    .line 81
    array-length v4, v0

    .line 82
    add-int/lit8 v4, v4, 0x4

    .line 84
    new-array v4, v4, [B

    .line 86
    move/from16 p3, v11

    .line 88
    array-length v11, v0

    .line 89
    invoke-static {v0, v10, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    array-length v11, v0

    .line 93
    const/high16 v16, 0x1000000

    .line 95
    div-int v10, v13, v16

    .line 97
    int-to-byte v10, v10

    .line 98
    aput-byte v10, v4, v11

    .line 100
    add-int/lit8 v10, v11, 0x1

    .line 102
    const/high16 v16, 0x10000

    .line 104
    div-int v0, v13, v16

    .line 106
    int-to-byte v0, v0

    .line 107
    aput-byte v0, v4, v10

    .line 109
    add-int/lit8 v0, v11, 0x2

    .line 111
    div-int/lit16 v10, v13, 0x100

    .line 113
    int-to-byte v10, v10

    .line 114
    aput-byte v10, v4, v0

    .line 116
    add-int/lit8 v11, v11, 0x3

    .line 118
    int-to-byte v0, v13

    .line 119
    aput-byte v0, v4, v11

    .line 121
    const/4 v0, 0x0

    .line 122
    :goto_79
    const/16 v10, 0x3e8

    .line 124
    if-ge v0, v10, :cond_a1

    .line 126
    iget-object v10, v6, Lh4/a;->d:Ljava/io/ByteArrayOutputStream;

    .line 128
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 131
    move-result v10

    .line 132
    if-lez v10, :cond_89

    .line 134
    const/4 v10, 0x0

    .line 135
    invoke-virtual {v6, v10}, Lh4/a;->a(I)V

    .line 138
    :cond_89
    iget-object v10, v6, Lh4/a;->a:Ljavax/crypto/Mac;

    .line 140
    invoke-virtual {v10, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 143
    move-result-object v4

    .line 144
    const/4 v10, 0x0

    .line 145
    :goto_90
    if-ge v10, v15, :cond_9e

    .line 147
    aget-byte v11, v9, v10

    .line 149
    aget-byte v16, v4, v10

    .line 151
    xor-int v11, v11, v16

    .line 153
    int-to-byte v11, v11

    .line 154
    aput-byte v11, v9, v10

    .line 156
    add-int/lit8 v10, v10, 0x1

    .line 158
    goto :goto_90

    .line 159
    :cond_9e
    add-int/lit8 v0, v0, 0x1

    .line 161
    goto :goto_79

    .line 162
    :cond_a1
    const/4 v0, 0x0

    .line 163
    invoke-static {v9, v0, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    add-int/2addr v14, v7

    .line 167
    add-int/lit8 v13, v13, 0x1

    .line 169
    move/from16 v11, p3

    .line 171
    move v10, v0

    .line 172
    const/4 v4, 0x2

    .line 173
    move-object/from16 v0, p0

    .line 175
    goto :goto_4a

    .line 176
    :cond_af
    move v0, v10

    .line 177
    if-ge v8, v7, :cond_b8

    .line 179
    new-array v4, v5, [B

    .line 181
    invoke-static {v12, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    move-object v12, v4

    .line 185
    :cond_b8
    array-length v4, v12

    .line 186
    if-ne v4, v3, :cond_bc

    .line 188
    return-object v12

    .line 189
    :cond_bc
    const/4 v3, 0x2

    .line 190
    new-array v3, v3, [Ljava/lang/Object;

    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    move-result-object v1

    .line 196
    aput-object v1, v3, v0

    .line 198
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    move-result-object v0

    .line 202
    const/4 v1, 0x1

    .line 203
    aput-object v0, v3, v1

    .line 205
    const-string v0, "Derived Key invalid for Key Length [%d] MAC Length [%d]"

    .line 207
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    move-result-object v0

    .line 211
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 213
    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 216
    throw v1

    .line 217
    :catch_d8
    move-exception v0

    .line 218
    new-instance v1, Ljava/lang/RuntimeException;

    .line 220
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 223
    throw v1
.end method

.method public static v(J)J
    .registers 11

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-long v0, p0, v0

    .line 4
    const-wide/16 v2, 0x3e

    .line 6
    and-long/2addr v0, v2

    .line 7
    long-to-int v8, v0

    .line 8
    const/4 v0, 0x5

    .line 9
    shr-long v0, p0, v0

    .line 11
    const-wide/16 v2, 0x3f

    .line 13
    and-long/2addr v0, v2

    .line 14
    long-to-int v7, v0

    .line 15
    const/16 v0, 0xb

    .line 17
    shr-long v0, p0, v0

    .line 19
    const-wide/16 v2, 0x1f

    .line 21
    and-long/2addr v0, v2

    .line 22
    long-to-int v6, v0

    .line 23
    const/16 v0, 0x10

    .line 25
    shr-long v0, p0, v0

    .line 27
    and-long/2addr v0, v2

    .line 28
    long-to-int v5, v0

    .line 29
    const/16 v0, 0x15

    .line 31
    shr-long v0, p0, v0

    .line 33
    const-wide/16 v2, 0xf

    .line 35
    and-long/2addr v0, v2

    .line 36
    const-wide/16 v2, 0x1

    .line 38
    sub-long/2addr v0, v2

    .line 39
    long-to-int v4, v0

    .line 40
    const/16 v0, 0x19

    .line 42
    shr-long v0, p0, v0

    .line 44
    const-wide/16 v2, 0x7f

    .line 46
    and-long/2addr v0, v2

    .line 47
    const-wide/16 v2, 0x7bc

    .line 49
    add-long/2addr v0, v2

    .line 50
    long-to-int v3, v0

    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 54
    move-result-object v0

    .line 55
    move-object v2, v0

    .line 56
    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 59
    const/16 v1, 0xe

    .line 61
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 65
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 72
    move-result-wide v0

    .line 73
    const/16 v2, 0x20

    .line 75
    shr-long/2addr p0, v2

    .line 76
    add-long/2addr v0, p0

    .line 77
    return-wide v0
.end method

.method public static w([B[B)Ljava/lang/String;
    .registers 11

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x2

    .line 3
    add-int/2addr v0, v1

    .line 4
    div-int/lit8 v0, v0, 0x3

    .line 6
    mul-int/lit8 v0, v0, 0x4

    .line 8
    new-array v0, v0, [B

    .line 10
    array-length v2, p0

    .line 11
    array-length v3, p0

    .line 12
    rem-int/lit8 v3, v3, 0x3

    .line 14
    sub-int/2addr v2, v3

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_10
    if-ge v3, v2, :cond_53

    .line 19
    add-int/lit8 v5, v4, 0x1

    .line 21
    aget-byte v6, p0, v3

    .line 23
    and-int/lit16 v6, v6, 0xff

    .line 25
    shr-int/2addr v6, v1

    .line 26
    aget-byte v6, p1, v6

    .line 28
    aput-byte v6, v0, v4

    .line 30
    add-int/lit8 v4, v5, 0x1

    .line 32
    aget-byte v6, p0, v3

    .line 34
    and-int/lit8 v6, v6, 0x3

    .line 36
    shl-int/lit8 v6, v6, 0x4

    .line 38
    add-int/lit8 v7, v3, 0x1

    .line 40
    aget-byte v8, p0, v7

    .line 42
    and-int/lit16 v8, v8, 0xff

    .line 44
    shr-int/lit8 v8, v8, 0x4

    .line 46
    or-int/2addr v6, v8

    .line 47
    aget-byte v6, p1, v6

    .line 49
    aput-byte v6, v0, v5

    .line 51
    add-int/lit8 v5, v4, 0x1

    .line 53
    aget-byte v6, p0, v7

    .line 55
    and-int/lit8 v6, v6, 0xf

    .line 57
    shl-int/2addr v6, v1

    .line 58
    add-int/lit8 v7, v3, 0x2

    .line 60
    aget-byte v8, p0, v7

    .line 62
    and-int/lit16 v8, v8, 0xff

    .line 64
    shr-int/lit8 v8, v8, 0x6

    .line 66
    or-int/2addr v6, v8

    .line 67
    aget-byte v6, p1, v6

    .line 69
    aput-byte v6, v0, v4

    .line 71
    add-int/lit8 v4, v5, 0x1

    .line 73
    aget-byte v6, p0, v7

    .line 75
    and-int/lit8 v6, v6, 0x3f

    .line 77
    aget-byte v6, p1, v6

    .line 79
    aput-byte v6, v0, v5

    .line 81
    add-int/lit8 v3, v3, 0x3

    .line 83
    goto :goto_10

    .line 84
    :cond_53
    array-length v3, p0

    .line 85
    rem-int/lit8 v3, v3, 0x3

    .line 87
    const/16 v5, 0x3d

    .line 89
    const/4 v6, 0x1

    .line 90
    if-eq v3, v6, :cond_8b

    .line 92
    if-eq v3, v1, :cond_5e

    .line 94
    goto :goto_a9

    .line 95
    :cond_5e
    add-int/lit8 v3, v4, 0x1

    .line 97
    aget-byte v7, p0, v2

    .line 99
    and-int/lit16 v7, v7, 0xff

    .line 101
    shr-int/2addr v7, v1

    .line 102
    aget-byte v7, p1, v7

    .line 104
    aput-byte v7, v0, v4

    .line 106
    add-int/lit8 v4, v3, 0x1

    .line 108
    aget-byte v7, p0, v2

    .line 110
    and-int/lit8 v7, v7, 0x3

    .line 112
    shl-int/lit8 v7, v7, 0x4

    .line 114
    add-int/2addr v2, v6

    .line 115
    aget-byte v6, p0, v2

    .line 117
    and-int/lit16 v6, v6, 0xff

    .line 119
    shr-int/lit8 v6, v6, 0x4

    .line 121
    or-int/2addr v6, v7

    .line 122
    aget-byte v6, p1, v6

    .line 124
    aput-byte v6, v0, v3

    .line 126
    add-int/lit8 v3, v4, 0x1

    .line 128
    aget-byte p0, p0, v2

    .line 130
    and-int/lit8 p0, p0, 0xf

    .line 132
    shl-int/2addr p0, v1

    .line 133
    aget-byte p0, p1, p0

    .line 135
    aput-byte p0, v0, v4

    .line 137
    aput-byte v5, v0, v3

    .line 139
    goto :goto_a9

    .line 140
    :cond_8b
    add-int/lit8 v3, v4, 0x1

    .line 142
    aget-byte v6, p0, v2

    .line 144
    and-int/lit16 v6, v6, 0xff

    .line 146
    shr-int/lit8 v1, v6, 0x2

    .line 148
    aget-byte v1, p1, v1

    .line 150
    aput-byte v1, v0, v4

    .line 152
    add-int/lit8 v1, v3, 0x1

    .line 154
    aget-byte p0, p0, v2

    .line 156
    and-int/lit8 p0, p0, 0x3

    .line 158
    shl-int/lit8 p0, p0, 0x4

    .line 160
    aget-byte p0, p1, p0

    .line 162
    aput-byte p0, v0, v3

    .line 164
    add-int/lit8 p0, v1, 0x1

    .line 166
    aput-byte v5, v0, v1

    .line 168
    aput-byte v5, v0, p0

    .line 170
    :goto_a9
    :try_start_a9
    new-instance p0, Ljava/lang/String;

    .line 172
    const-string p1, "US-ASCII"

    .line 174
    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a9 .. :try_end_b0} :catch_b1

    .line 177
    return-object p0

    .line 178
    :catch_b1
    move-exception p0

    .line 179
    new-instance p1, Ljava/lang/AssertionError;

    .line 181
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 184
    throw p1
.end method

.method public static x(J)J
    .registers 10

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p0, v0

    .line 5
    const-wide/32 v1, 0x210000

    .line 8
    if-gez v0, :cond_a

    .line 10
    return-wide v1

    .line 11
    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    .line 22
    move-result v4

    .line 23
    const/16 v5, 0x7bc

    .line 25
    if-ge v4, v5, :cond_1c

    .line 27
    move-wide v3, v1

    .line 28
    goto :goto_4b

    .line 29
    :cond_1c
    sub-int/2addr v4, v5

    .line 30
    shl-int/lit8 v4, v4, 0x19

    .line 32
    const/4 v5, 0x2

    .line 33
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    .line 36
    move-result v5

    .line 37
    add-int/2addr v5, v3

    .line 38
    shl-int/lit8 v5, v5, 0x15

    .line 40
    or-int/2addr v4, v5

    .line 41
    const/4 v5, 0x5

    .line 42
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    .line 45
    move-result v6

    .line 46
    shl-int/lit8 v6, v6, 0x10

    .line 48
    or-int/2addr v4, v6

    .line 49
    const/16 v6, 0xb

    .line 51
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    .line 54
    move-result v7

    .line 55
    shl-int/lit8 v6, v7, 0xb

    .line 57
    or-int/2addr v4, v6

    .line 58
    const/16 v6, 0xc

    .line 60
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    .line 63
    move-result v6

    .line 64
    shl-int/lit8 v5, v6, 0x5

    .line 66
    or-int/2addr v4, v5

    .line 67
    const/16 v5, 0xd

    .line 69
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    .line 72
    move-result v0

    .line 73
    shr-int/2addr v0, v3

    .line 74
    or-int/2addr v0, v4

    .line 75
    int-to-long v3, v0

    .line 76
    :goto_4b
    cmp-long v0, v3, v1

    .line 78
    if-eqz v0, :cond_57

    .line 80
    const-wide/16 v0, 0x7d0

    .line 82
    rem-long/2addr p0, v0

    .line 83
    const/16 v0, 0x20

    .line 85
    shl-long/2addr p0, v0

    .line 86
    add-long v1, v3, p0

    .line 88
    :cond_57
    return-wide v1
.end method

.method public static final y(CCZ)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-nez p2, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    .line 12
    move-result p0

    .line 13
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    .line 16
    move-result p1

    .line 17
    if-eq p0, p1, :cond_1e

    .line 19
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    .line 22
    move-result p0

    .line 23
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    .line 26
    move-result p1

    .line 27
    if-ne p0, p1, :cond_1d

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move v0, v1

    .line 31
    :cond_1e
    :goto_1e
    return v0
.end method


# virtual methods
.method public E(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 8
    move-result-object v1

    .line 9
    :try_start_8
    const-string v2, "com.xiaomi.accountsdk.account.IXiaomiAccountService"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    const/16 p2, 0xa

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 23
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 26
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 29
    move-result-object p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_24

    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 36
    return-object p1

    .line 37
    :catchall_24
    move-exception p1

    .line 38
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 44
    throw p1
.end method

.method public I(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 8
    move-result-object v1

    .line 9
    :try_start_8
    const-string v2, "com.xiaomi.accountsdk.account.IXiaomiAccountService"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    const/16 p2, 0xb

    .line 22
    const/4 p3, 0x0

    .line 23
    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 26
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 29
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 32
    move-result p1
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_2a

    .line 33
    if-eqz p1, :cond_23

    .line 35
    const/4 p3, 0x1

    .line 36
    :cond_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 42
    return p3

    .line 43
    :catchall_2a
    move-exception p1

    .line 44
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 47
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 50
    throw p1
.end method

.method public L(Landroid/content/Context;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public R(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public X(Landroid/content/Context;I)V
    .registers 3

    return-void
.end method

.method public Y(Landroid/content/Context;Z)V
    .registers 3

    return-void
.end method

.method public Z(ZLandroid/content/SyncResult;)V
    .registers 3

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public a0(ILandroid/view/View;)V
    .registers 6

    .line 1
    sget-boolean v0, La/b;->e:Z

    .line 3
    if-nez v0, :cond_1c

    .line 5
    const/4 v0, 0x1

    .line 6
    :try_start_5
    const-class v1, Landroid/view/View;

    .line 8
    const-string v2, "mViewFlags"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    move-result-object v1

    .line 14
    sput-object v1, La/b;->d:Ljava/lang/reflect/Field;

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_12} :catch_13

    .line 19
    goto :goto_1a

    .line 20
    :catch_13
    const-string v1, "ViewUtilsBase"

    .line 22
    const-string v2, "fetchViewFlagsField: "

    .line 24
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :goto_1a
    sput-boolean v0, La/b;->e:Z

    .line 29
    :cond_1c
    sget-object v0, La/b;->d:Ljava/lang/reflect/Field;

    .line 31
    if-eqz v0, :cond_2c

    .line 33
    :try_start_20
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 36
    move-result v0

    .line 37
    sget-object v1, La/b;->d:Ljava/lang/reflect/Field;

    .line 39
    and-int/lit8 v0, v0, -0xd

    .line 41
    or-int/2addr p1, v0

    .line 42
    invoke-virtual {v1, p2, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_2c} :catch_2c

    .line 45
    :catch_2c
    :cond_2c
    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public e0()V
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 15
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 17
    const-string v1, "interrupted"

    .line 19
    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 22
    throw v0
.end method

.method public j(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public z(Landroid/content/Context;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
