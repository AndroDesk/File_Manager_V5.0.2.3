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

.field public static d:Ljava/lang/reflect/Field;

.field public static e:Z

.field public static f:Z

.field public static g:Lm1/j;

.field public static final h:[B

.field public static final i:[B

.field public static final j:[Ljava/lang/String;

.field public static k:La/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 17

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, La/b;->a:[I

    new-array v1, v0, [J

    sput-object v1, La/b;->b:[J

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, La/b;->c:[Ljava/lang/Object;

    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_44

    sput-object v1, La/b;->h:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_68

    sput-object v0, La/b;->i:[B

    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "3"

    const-string v5, "4"

    const-string v6, "5"

    const-string v7, "6"

    const-string v8, "7"

    const-string v9, "8"

    const-string v10, "9"

    const-string v11, "a"

    const-string v12, "b"

    const-string v13, "c"

    const-string v14, "d"

    const-string v15, "e"

    const-string v16, "f"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/b;->j:[Ljava/lang/String;

    return-void

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .registers 2

    if-nez p1, :cond_9

    sget-object p1, Lo4/b;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static B(Lm4/b;)Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .registers 3

    iget-object v0, p0, Lm4/b;->d:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->AES_INTERNAL_ONLY:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-eq v0, v1, :cond_7

    return-object v0

    :cond_7
    iget-object p0, p0, Lm4/b;->p:Lm4/a;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lm4/a;->f:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-object p0

    :cond_e
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "AesExtraDataRecord not present in local header for aes encrypted data"

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static C(Lm4/n;Ljava/lang/String;)Lm4/g;
    .registers 5

    invoke-static {p0, p1}, La/b;->D(Lm4/n;Ljava/lang/String;)Lm4/g;

    move-result-object v0

    if-nez v0, :cond_1e

    const-string v0, "\\\\"

    const-string v1, "/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, La/b;->D(Lm4/n;Ljava/lang/String;)Lm4/g;

    move-result-object v2

    if-nez v2, :cond_1d

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, La/b;->D(Lm4/n;Ljava/lang/String;)Lm4/g;

    move-result-object v0

    goto :goto_1e

    :cond_1d
    move-object v0, v2

    :cond_1e
    :goto_1e
    return-object v0
.end method

.method public static D(Lm4/n;Ljava/lang/String;)Lm4/g;
    .registers 6

    if-eqz p0, :cond_68

    invoke-static {p1}, La/b;->O(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lm4/n;->b:Lo1/a;

    if-eqz v0, :cond_50

    iget-object v0, v0, Lo1/a;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_44

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    return-object v1

    :cond_1d
    iget-object p0, p0, Lm4/n;->b:Lo1/a;

    iget-object p0, p0, Lo1/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_27
    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm4/g;

    iget-object v2, v0, Lm4/b;->k:Ljava/lang/String;

    invoke-static {v2}, La/b;->O(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_27

    :cond_3c
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    return-object v0

    :cond_43
    return-object v1

    :cond_44
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file Headers are null, cannot determine file header with exact match for fileName: "

    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_50
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "central directory is null, cannot determine file header with exact match for fileName: "

    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5c
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file name is null, cannot determine file header with exact match for fileName: "

    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_68
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip model is null, cannot determine file header with exact match for fileName: "

    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static F(Ljava/lang/Throwable;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-nez v0, :cond_36

    sget-boolean v0, La/b;->f:Z

    if-eqz v0, :cond_c

    return-void

    :cond_c
    instance-of v0, p0, Ljava/nio/channels/ClosedByInterruptException;

    if-nez v0, :cond_2a

    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_29

    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v0, :cond_29

    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1d

    goto :goto_29

    :cond_1d
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/InterruptedException;

    throw p0

    :cond_29
    :goto_29
    return-void

    :cond_2a
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/lang/InterruptedException;

    throw p0

    :cond_36
    check-cast p0, Ljava/lang/InterruptedException;

    throw p0
.end method

.method public static G(Ljava/lang/String;)[B
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_29

    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    mul-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_29
    return-object v1
.end method

.method public static H(Ljava/lang/String;)[B
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_29

    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    mul-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

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

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static M(Lcn/kuaipan/android/exception/KscException;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    :cond_a
    instance-of v0, p0, Ljava/net/SocketException;

    if-nez v0, :cond_45

    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v0, :cond_45

    instance-of v0, p0, Ljava/nio/channels/ConnectionPendingException;

    if-nez v0, :cond_45

    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_45

    instance-of v0, p0, Lorg/apache/http/ConnectionClosedException;

    if-nez v0, :cond_45

    instance-of v0, p0, Ljava/net/HttpRetryException;

    if-nez v0, :cond_45

    instance-of v0, p0, Lorg/apache/http/NoHttpResponseException;

    if-nez v0, :cond_45

    instance-of v0, p0, Ljava/net/ProtocolException;

    if-nez v0, :cond_45

    instance-of v0, p0, Lorg/apache/http/client/ClientProtocolException;

    if-nez v0, :cond_45

    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_45

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_45

    instance-of v0, p0, Ljava/net/UnknownServiceException;

    if-nez v0, :cond_45

    instance-of v0, p0, Lorg/apache/http/HttpException;

    if-nez v0, :cond_45

    instance-of p0, p0, Lcn/kuaipan/android/exception/NetworkException;

    if-eqz p0, :cond_43

    goto :goto_45

    :cond_43
    const/4 p0, 0x0

    goto :goto_46

    :cond_45
    :goto_45
    const/4 p0, 0x1

    :goto_46
    return p0
.end method

.method public static N(Ljava/lang/Exception;)Z
    .registers 1

    invoke-static {p0}, La/b;->b0(Ljava/lang/Throwable;)Lcn/kuaipan/android/exception/KscTransferStopByCallerException;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static O(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static P(Landroid/content/Context;)Z
    .registers 8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.wps.moffice.service.lite.work.snapshot.action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x20000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "cn.wps.moffice.service.lite.work.snapshot.SnapshotLiteService"

    const-string v3, "cn.wps.moffice_eng.xiaomi.lite"

    const/4 v4, 0x0

    if-eqz v0, :cond_4d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4d

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    if-eqz v5, :cond_23

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_23

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    move v5, v1

    goto :goto_4a

    :cond_49
    move v5, v4

    :goto_4a
    if-eqz v5, :cond_23

    goto :goto_4e

    :cond_4d
    move v5, v4

    :goto_4e
    if-eqz v5, :cond_74

    :try_start_50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "cn.wps.moffice.service.lite.work.snapshot"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_70

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_6f} :catch_70

    goto :goto_71

    :catch_70
    :cond_70
    move p0, v4

    :goto_71
    if-eqz p0, :cond_74

    goto :goto_75

    :cond_74
    move v1, v4

    :goto_75
    return v1
.end method

.method public static final Q(C)Z
    .registers 2

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static S(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;)V
    .registers 3

    if-eqz p2, :cond_20

    iget-object p2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez p2, :cond_20

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_a
    instance-of p2, p0, Landroid/view/View;

    if-eqz p2, :cond_20

    instance-of p2, p0, Landroidx/appcompat/widget/i1;

    if-eqz p2, :cond_1b

    check-cast p0, Landroidx/appcompat/widget/i1;

    invoke-interface {p0}, Landroidx/appcompat/widget/i1;->a()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    goto :goto_20

    :cond_1b
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_a

    :cond_20
    :goto_20
    return-void
.end method

.method public static T(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "stat"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "OK"

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    return-object v0

    :cond_15
    const-string p0, "proxies"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v1, :cond_33

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_34

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_33
    return-object v2

    :catch_34
    return-object v0
.end method

.method public static U(I[B)V
    .registers 5

    int-to-byte v0, p0

    const/4 v1, 0x0

    aput-byte v0, p1, v1

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, p1, v2

    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    const/4 v2, 0x2

    aput-byte v0, p1, v2

    shr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 v0, 0x3

    aput-byte p0, p1, v0

    const/4 p0, 0x4

    :goto_17
    const/16 v0, 0xf

    if-gt p0, v0, :cond_20

    aput-byte v1, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_17

    :cond_20
    return-void
.end method

.method public static V(Ljava/io/InputStream;[BII)I
    .registers 7

    if-ltz p2, :cond_31

    if-ltz p3, :cond_29

    const/4 v0, 0x0

    if-nez p3, :cond_8

    return v0

    :cond_8
    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_21

    :goto_d
    if-eq v0, p3, :cond_20

    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1e

    if-nez v0, :cond_1d

    return v2

    :cond_1d
    return v0

    :cond_1e
    add-int/2addr v0, v1

    goto :goto_d

    :cond_20
    return v0

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length greater than buffer size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative offset"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static W(Ljava/io/PushbackInputStream;[B)I
    .registers 8

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3d

    array-length v2, p1

    if-eq v0, v2, :cond_3c

    if-ltz v0, :cond_34

    const/4 v2, 0x0

    if-nez v0, :cond_11

    move v0, v2

    goto :goto_28

    :cond_11
    array-length v3, p1

    sub-int/2addr v3, v0

    const/4 v4, 0x1

    :goto_14
    array-length v5, p1

    if-ge v0, v5, :cond_28

    if-eq v2, v1, :cond_28

    const/16 v2, 0xf

    if-ge v4, v2, :cond_28

    invoke-virtual {p0, p1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_25

    add-int/2addr v0, v2

    sub-int/2addr v3, v2

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_28
    :goto_28
    array-length p0, p1

    if-ne v0, p0, :cond_2c

    goto :goto_3c

    :cond_2c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot read fully into byte buffer"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid readLength"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    :goto_3c
    return v0

    :cond_3d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected EOF reached when trying to read stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b0(Ljava/lang/Throwable;)Lcn/kuaipan/android/exception/KscTransferStopByCallerException;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const/4 v4, 0x1

    aput-object p0, v2, v4

    :goto_11
    if-ge v3, v1, :cond_1f

    aget-object p0, v2, v3

    instance-of v4, p0, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;

    if-eqz v4, :cond_1c

    check-cast p0, Lcn/kuaipan/android/exception/KscTransferStopByCallerException;

    return-object p0

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1f
    return-object v0
.end method

.method public static c(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3d

    :cond_d
    const/4 v0, 0x0

    :try_start_e
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_1c
    .catchall {:try_start_e .. :try_end_13} :catchall_1a

    :try_start_13
    invoke-static {v1}, La/b;->d(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_1d
    .catchall {:try_start_13 .. :try_end_17} :catchall_37

    goto :goto_33

    :goto_18
    move-object v0, v1

    goto :goto_39

    :catchall_1a
    move-exception p0

    goto :goto_39

    :catch_1c
    move-object v1, v0

    :catch_1d
    :try_start_1d
    const-string v2, "Encode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed compute SHA1 for file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_37

    :goto_33
    :try_start_33
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_36

    :catchall_36
    return-object v0

    :catchall_37
    move-exception p0

    goto :goto_18

    :goto_39
    :try_start_39
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3c

    :catchall_3c
    throw p0

    :cond_3d
    :goto_3d
    const-string p0, ""

    return-object p0
.end method

.method public static c0(Lm1/f;Lcn/kuaipan/android/kss/TransferStep;)V
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    iget-object v0, p0, Lm1/f;->e:Ljava/lang/Throwable;

    :goto_6
    if-eqz v0, :cond_18

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_f
    invoke-virtual {p0}, Lm1/f;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcn/kuaipan/android/exception/KscException;->newException(Ljava/lang/Throwable;Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)Lcn/kuaipan/android/exception/KscException;

    move-result-object p0

    throw p0

    :cond_18
    return-void
.end method

.method public static d(Ljava/io/FileInputStream;)Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string v0, "sha1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/16 v1, 0x4000

    new-array v1, v1, [B

    :goto_a
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_15

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_a

    :cond_15
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, La/b;->l([B)Ljava/lang/String;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    move-exception p0

    const-string v0, "Encode"

    const-string v1, "SHA1Encode failed."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d0(Ljava/lang/Throwable;)V
    .registers 2

    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_13

    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_10

    instance-of v0, p0, Ljava/lang/LinkageError;

    if-nez v0, :cond_d

    return-void

    :cond_d
    check-cast p0, Ljava/lang/LinkageError;

    throw p0

    :cond_10
    check-cast p0, Ljava/lang/ThreadDeath;

    throw p0

    :cond_13
    check-cast p0, Ljava/lang/VirtualMachineError;

    throw p0
.end method

.method public static e(Ljava/io/InputStream;I)Ljava/lang/String;
    .registers 8

    :try_start_0
    const-string v0, "sha1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/16 v1, 0x4000

    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :cond_c
    sub-int v5, p1, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_20

    invoke-virtual {v0, v2, v3, v5}, Ljava/security/MessageDigest;->update([BII)V

    add-int/2addr v4, v5

    sub-int v5, p1, v4

    if-gtz v5, :cond_c

    :cond_20
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, La/b;->l([B)Ljava/lang/String;

    move-result-object p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    return-object p0

    :catch_29
    move-exception p0

    const-string p1, "Encode"

    const-string v0, "SHA1Encode failed."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_13
    move-object v1, v0

    :goto_14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_29

    return-object v0

    :cond_29
    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-static {v1, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_35
    const-string v0, "lite_cache"

    invoke-static {v1, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_49
    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9d

    if-nez p2, :cond_10

    goto/16 :goto_9d

    :cond_10
    sget-object v0, Lxcrash/d;->i:Lxcrash/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    :try_start_32
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rws"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_39} :catch_81
    .catchall {:try_start_32 .. :try_end_39} :catchall_7f

    :try_start_39
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_6a

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v7, 0x0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    :goto_57
    cmp-long p2, v1, v3

    if-lez p2, :cond_69

    long-to-int p2, v1

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p2

    if-eqz p2, :cond_65

    goto :goto_69

    :cond_65
    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    goto :goto_57

    :cond_69
    :goto_69
    move-wide v3, v1

    :cond_6a
    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string p0, "UTF-8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_76} :catch_7c
    .catchall {:try_start_39 .. :try_end_76} :catchall_7a

    :try_start_76
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_95

    goto :goto_95

    :catchall_7a
    move-exception p0

    goto :goto_97

    :catch_7c
    move-exception p0

    move-object p2, v0

    goto :goto_82

    :catchall_7f
    move-exception p0

    goto :goto_96

    :catch_81
    move-exception p0

    :goto_82
    :try_start_82
    sget-object p1, Lxcrash/XCrash;->c:Lxcrash/i;

    const-string v0, "xcrash"

    const-string v1, "FileManager appendText failed"

    check-cast p1, La/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_82 .. :try_end_90} :catchall_7f

    if-eqz p2, :cond_95

    :try_start_92
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_95

    :catch_95
    :cond_95
    :goto_95
    return-void

    :goto_96
    move-object v0, p2

    :goto_97
    if-eqz v0, :cond_9c

    :try_start_99
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_9c

    :catch_9c
    :cond_9c
    throw p0

    :cond_9d
    :goto_9d
    return-void
.end method

.method public static h([III)I
    .registers 6

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_3
    if-gt v0, p1, :cond_18

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    aget v2, p0, v1

    if-ge v2, p2, :cond_11

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_3

    :cond_11
    if-le v2, p2, :cond_17

    add-int/lit8 v1, v1, -0x1

    move p1, v1

    goto :goto_3

    :cond_17
    return v1

    :cond_18
    not-int p0, v0

    return p0
.end method

.method public static i([JIJ)I
    .registers 8

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_3
    if-gt v0, p1, :cond_1a

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    aget-wide v2, p0, v1

    cmp-long v2, v2, p2

    if-gez v2, :cond_13

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_3

    :cond_13
    if-lez v2, :cond_19

    add-int/lit8 v1, v1, -0x1

    move p1, v1

    goto :goto_3

    :cond_19
    return v1

    :cond_1a
    not-int p0, v0

    return p0
.end method

.method public static k(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 4

    if-nez p1, :cond_8

    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_2c

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3f
    return-void
.end method

.method public static l([B)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_d
    array-length v2, p0

    if-ge v1, v2, :cond_29

    sget-object v2, La/b;->j:[Ljava/lang/String;

    aget-byte v3, p0, v1

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(ZLjava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n(I)V
    .registers 1

    if-ltz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static o(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

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

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    :try_start_3
    sget-object p1, Lo4/b;->b:Ljava/nio/charset/Charset;

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_17

    goto :goto_33

    :catch_17
    array-length p1, p0

    new-array v1, p1, [B

    :goto_1a
    array-length p1, p0

    if-ge v0, p1, :cond_33

    aget-char p1, p0, v0

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_25
    array-length p1, p0

    new-array v1, p1, [B

    :goto_28
    array-length p1, p0

    if-ge v0, p1, :cond_33

    aget-char p1, p0, v0

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_33
    :goto_33
    return-object v1
.end method

.method public static s(Lm4/n;)Lk4/h;
    .registers 4

    iget-object v0, p0, Lm4/n;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip.001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lk4/f;

    iget-object p0, p0, Lm4/n;->h:Ljava/io/File;

    invoke-direct {v0, p0}, Lk4/f;-><init>(Ljava/io/File;)V

    return-object v0

    :cond_16
    new-instance v0, Lk4/m;

    iget-object v1, p0, Lm4/n;->h:Ljava/io/File;

    iget-boolean v2, p0, Lm4/n;->f:Z

    iget-object p0, p0, Lm4/n;->c:Lm4/d;

    iget p0, p0, Lm4/d;->b:I

    invoke-direct {v0, v1, p0, v2}, Lk4/m;-><init>(Ljava/io/File;IZ)V

    return-object v0
.end method

.method public static t([BZLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    if-eqz p2, :cond_8

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_8
    if-eqz p1, :cond_12

    new-instance p1, Ljava/lang/String;

    sget-object p2, Lo4/b;->b:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    :cond_12
    :try_start_12
    new-instance p1, Ljava/lang/String;

    const-string p2, "Cp437"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static u([B[CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)[B
    .registers 21

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getKeyLength()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getMacLength()I

    move-result v2

    add-int v3, v1, v2

    const/4 v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v5, p1

    move/from16 v6, p3

    invoke-static {v5, v6}, La/b;->r([CZ)[B

    move-result-object v5

    new-instance v6, Lh4/a;

    const-string v7, "HmacSHA1"

    invoke-direct {v6, v7}, Lh4/a;-><init>(Ljava/lang/String;)V

    :try_start_20
    iget-object v7, v6, Lh4/a;->a:Ljavax/crypto/Mac;

    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v9, v6, Lh4/a;->c:Ljava/lang/String;

    invoke-direct {v8, v5, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_2c
    .catch Ljava/security/InvalidKeyException; {:try_start_20 .. :try_end_2c} :catch_d8

    if-nez v3, :cond_31

    iget v5, v6, Lh4/a;->b:I

    goto :goto_32

    :cond_31
    move v5, v3

    :goto_32
    iget v7, v6, Lh4/a;->b:I

    rem-int v8, v5, v7

    const/4 v10, 0x0

    if-lez v8, :cond_3b

    const/4 v8, 0x1

    goto :goto_3c

    :cond_3b
    move v8, v10

    :goto_3c
    div-int v11, v5, v7

    add-int/2addr v11, v8

    add-int/lit8 v8, v11, -0x1

    mul-int/2addr v8, v7

    sub-int v8, v5, v8

    mul-int v12, v11, v7

    new-array v12, v12, [B

    move v14, v10

    const/4 v13, 0x1

    :goto_4a
    if-gt v13, v11, :cond_af

    iget v15, v6, Lh4/a;->b:I

    new-array v9, v15, [B

    array-length v4, v0

    add-int/lit8 v4, v4, 0x4

    new-array v4, v4, [B

    move/from16 p3, v11

    array-length v11, v0

    invoke-static {v0, v10, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v11, v0

    const/high16 v16, 0x1000000

    div-int v10, v13, v16

    int-to-byte v10, v10

    aput-byte v10, v4, v11

    add-int/lit8 v10, v11, 0x1

    const/high16 v16, 0x10000

    div-int v0, v13, v16

    int-to-byte v0, v0

    aput-byte v0, v4, v10

    add-int/lit8 v0, v11, 0x2

    div-int/lit16 v10, v13, 0x100

    int-to-byte v10, v10

    aput-byte v10, v4, v0

    add-int/lit8 v11, v11, 0x3

    int-to-byte v0, v13

    aput-byte v0, v4, v11

    const/4 v0, 0x0

    :goto_79
    const/16 v10, 0x3e8

    if-ge v0, v10, :cond_a1

    iget-object v10, v6, Lh4/a;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    if-lez v10, :cond_89

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lh4/a;->a(I)V

    :cond_89
    iget-object v10, v6, Lh4/a;->a:Ljavax/crypto/Mac;

    invoke-virtual {v10, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    const/4 v10, 0x0

    :goto_90
    if-ge v10, v15, :cond_9e

    aget-byte v11, v9, v10

    aget-byte v16, v4, v10

    xor-int v11, v11, v16

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_90

    :cond_9e
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    :cond_a1
    const/4 v0, 0x0

    invoke-static {v9, v0, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v14, v7

    add-int/lit8 v13, v13, 0x1

    move/from16 v11, p3

    move v10, v0

    const/4 v4, 0x2

    move-object/from16 v0, p0

    goto :goto_4a

    :cond_af
    move v0, v10

    if-ge v8, v7, :cond_b8

    new-array v4, v5, [B

    invoke-static {v12, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v12, v4

    :cond_b8
    array-length v4, v12

    if-ne v4, v3, :cond_bc

    return-object v12

    :cond_bc
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "Derived Key invalid for Key Length [%d] MAC Length [%d]"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_d8
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static v(J)J
    .registers 11

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const-wide/16 v2, 0x3e

    and-long/2addr v0, v2

    long-to-int v8, v0

    const/4 v0, 0x5

    shr-long v0, p0, v0

    const-wide/16 v2, 0x3f

    and-long/2addr v0, v2

    long-to-int v7, v0

    const/16 v0, 0xb

    shr-long v0, p0, v0

    const-wide/16 v2, 0x1f

    and-long/2addr v0, v2

    long-to-int v6, v0

    const/16 v0, 0x10

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v5, v0

    const/16 v0, 0x15

    shr-long v0, p0, v0

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    long-to-int v4, v0

    const/16 v0, 0x19

    shr-long v0, p0, v0

    const-wide/16 v2, 0x7f

    and-long/2addr v0, v2

    const-wide/16 v2, 0x7bc

    add-long/2addr v0, v2

    long-to-int v3, v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static w([B[B)Ljava/lang/String;
    .registers 11

    array-length v0, p0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    array-length v2, p0

    array-length v3, p0

    rem-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v3, v2, :cond_53

    add-int/lit8 v5, v4, 0x1

    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    shr-int/2addr v6, v1

    aget-byte v6, p1, v6

    aput-byte v6, v0, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v6, p0, v3

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v3, 0x1

    aget-byte v8, p0, v7

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v6, v8

    aget-byte v6, p1, v6

    aput-byte v6, v0, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v6, p0, v7

    and-int/lit8 v6, v6, 0xf

    shl-int/2addr v6, v1

    add-int/lit8 v7, v3, 0x2

    aget-byte v8, p0, v7

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v6, v8

    aget-byte v6, p1, v6

    aput-byte v6, v0, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v6, p0, v7

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, p1, v6

    aput-byte v6, v0, v5

    add-int/lit8 v3, v3, 0x3

    goto :goto_10

    :cond_53
    array-length v3, p0

    rem-int/lit8 v3, v3, 0x3

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-eq v3, v6, :cond_8b

    if-eq v3, v1, :cond_5e

    goto :goto_a9

    :cond_5e
    add-int/lit8 v3, v4, 0x1

    aget-byte v7, p0, v2

    and-int/lit16 v7, v7, 0xff

    shr-int/2addr v7, v1

    aget-byte v7, p1, v7

    aput-byte v7, v0, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v7, p0, v2

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/2addr v2, v6

    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x4

    or-int/2addr v6, v7

    aget-byte v6, p1, v6

    aput-byte v6, v0, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte p0, p0, v2

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v1

    aget-byte p0, p1, p0

    aput-byte p0, v0, v4

    aput-byte v5, v0, v3

    goto :goto_a9

    :cond_8b
    add-int/lit8 v3, v4, 0x1

    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v1, v6, 0x2

    aget-byte v1, p1, v1

    aput-byte v1, v0, v4

    add-int/lit8 v1, v3, 0x1

    aget-byte p0, p0, v2

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    aget-byte p0, p1, p0

    aput-byte p0, v0, v3

    add-int/lit8 p0, v1, 0x1

    aput-byte v5, v0, v1

    aput-byte v5, v0, p0

    :goto_a9
    :try_start_a9
    new-instance p0, Ljava/lang/String;

    const-string p1, "US-ASCII"

    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a9 .. :try_end_b0} :catch_b1

    return-object p0

    :catch_b1
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static x(J)J
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/32 v1, 0x210000

    if-gez v0, :cond_a

    return-wide v1

    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x7bc

    if-ge v4, v5, :cond_1c

    move-wide v3, v1

    goto :goto_4b

    :cond_1c
    sub-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x19

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v3

    shl-int/lit8 v5, v5, 0x15

    or-int/2addr v4, v5

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    shl-int/lit8 v6, v7, 0xb

    or-int/2addr v4, v6

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    shl-int/lit8 v5, v6, 0x5

    or-int/2addr v4, v5

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    shr-int/2addr v0, v3

    or-int/2addr v0, v4

    int-to-long v3, v0

    :goto_4b
    cmp-long v0, v3, v1

    if-eqz v0, :cond_57

    const-wide/16 v0, 0x7d0

    rem-long/2addr p0, v0

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    add-long v1, v3, p0

    :cond_57
    return-wide v1
.end method

.method public static final y(CCZ)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p2, :cond_8

    return v1

    :cond_8
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    if-eq p0, p1, :cond_1e

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :cond_1e
    :goto_1e
    return v0
.end method


# virtual methods
.method public E(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.xiaomi.accountsdk.account.IXiaomiAccountService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p2, 0xa

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_24

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_24
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public I(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.xiaomi.accountsdk.account.IXiaomiAccountService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p2, 0xb

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_2a

    if-eqz p1, :cond_23

    const/4 p3, 0x1

    :cond_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p3

    :catchall_2a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

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

    sget-boolean v0, La/b;->e:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "mViewFlags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, La/b;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_1a

    :catch_13
    const-string v1, "ViewUtilsBase"

    const-string v2, "fetchViewFlagsField: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    sput-boolean v0, La/b;->e:Z

    :cond_1c
    sget-object v0, La/b;->d:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2c

    :try_start_20
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, La/b;->d:Ljava/lang/reflect/Field;

    and-int/lit8 v0, v0, -0xd

    or-int/2addr p1, v0

    invoke-virtual {v1, p2, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_2c} :catch_2c

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

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

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
