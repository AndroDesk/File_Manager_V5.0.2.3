.class public Lmiui/cloud/net/XByteArrayProcessor;
.super Ljava/lang/Object;
.source "XByteArrayProcessor.java"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
.implements Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;


# static fields
.field public static final CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

.field private static IN_DATA_PROCESSING_BUFFER_LEN:I = 0x100

.field private static MIME_TYPE:Ljava/lang/String; = "application/octet-stream"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiui/cloud/net/XByteArrayProcessor$1;

    .line 3
    invoke-direct {v0}, Lmiui/cloud/net/XByteArrayProcessor$1;-><init>()V

    .line 6
    sput-object v0, Lmiui/cloud/net/XByteArrayProcessor;->CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lmiui/cloud/net/XByteArrayProcessor;->MIME_TYPE:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getContentLengthFromHeader(Ljava/util/Map;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .line 1
    const-string v0, "Content-Encoding"

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eqz v0, :cond_24

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_24

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 28
    const-string v3, "identity"

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_f

    .line 36
    return v1

    .line 37
    :cond_24
    const-string v0, "Content-Length"

    .line 39
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/util/List;

    .line 45
    if-eqz p0, :cond_43

    .line 47
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_35

    .line 53
    goto :goto_43

    .line 54
    :cond_35
    const/4 v0, 0x0

    .line 55
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ljava/lang/String;

    .line 61
    if-nez p0, :cond_3f

    .line 63
    return v1

    .line 64
    :cond_3f
    :try_start_3f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 67
    move-result v1
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_43} :catch_43

    .line 68
    :catch_43
    :cond_43
    :goto_43
    return v1
.end method


# virtual methods
.method public getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object p1, Lmiui/cloud/net/XByteArrayProcessor;->MIME_TYPE:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public getOutDataLength(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, [B

    .line 3
    array-length p1, p1

    .line 4
    return p1
.end method

.method public processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lmiui/cloud/net/XByteArrayProcessor;->getContentLengthFromHeader(Ljava/util/Map;)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-gez p1, :cond_22

    .line 8
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 10
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 13
    sget v1, Lmiui/cloud/net/XByteArrayProcessor;->IN_DATA_PROCESSING_BUFFER_LEN:I

    .line 15
    new-array v1, v1, [B

    .line 17
    :goto_10
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    .line 20
    move-result v2

    .line 21
    if-lez v2, :cond_1a

    .line 23
    invoke-virtual {p1, v1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 26
    goto :goto_10

    .line 27
    :cond_1a
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 30
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 33
    move-result-object p1

    .line 34
    goto :goto_30

    .line 35
    :cond_22
    new-array v1, p1, [B

    .line 37
    :cond_24
    sub-int v2, p1, v0

    .line 39
    invoke-virtual {p2, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    .line 42
    move-result v2

    .line 43
    if-lez v2, :cond_2f

    .line 45
    add-int/2addr v0, v2

    .line 46
    if-ne v0, p1, :cond_24

    .line 48
    :cond_2f
    move-object p1, v1

    .line 49
    :goto_30
    return-object p1
.end method

.method public processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .registers 3

    .line 1
    check-cast p1, [B

    .line 3
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 6
    return-void
.end method
