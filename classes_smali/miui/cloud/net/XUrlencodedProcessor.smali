.class public Lmiui/cloud/net/XUrlencodedProcessor;
.super Ljava/lang/Object;
.source "XUrlencodedProcessor.java"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
.implements Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;


# static fields
.field public static final CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

.field private static MIME_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"


# instance fields
.field private mBufferedData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBufferedDataString:Ljava/lang/String;

.field private mEncode:Ljava/lang/String;

.field private mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiui/cloud/net/XUrlencodedProcessor$1;

    .line 3
    invoke-direct {v0}, Lmiui/cloud/net/XUrlencodedProcessor$1;-><init>()V

    .line 6
    sput-object v0, Lmiui/cloud/net/XUrlencodedProcessor;->CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiui/cloud/net/XPlainTextProcessor;

    .line 6
    invoke-direct {v0, p1}, Lmiui/cloud/net/XPlainTextProcessor;-><init>(Ljava/lang/String;)V

    .line 9
    iput-object v0, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    .line 11
    iput-object p1, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mEncode:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lmiui/cloud/net/XUrlencodedProcessor;->MIME_TYPE:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method private bufferData(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mBufferedData:Ljava/util/Map;

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-object p1, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mBufferedData:Ljava/util/Map;

    .line 8
    invoke-direct {p0, p1}, Lmiui/cloud/net/XUrlencodedProcessor;->encode(Ljava/util/Map;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mBufferedDataString:Ljava/lang/String;

    .line 14
    return-void
.end method

.method private decode(Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "&"

    .line 8
    invoke-static {p1, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_d
    array-length v4, v1

    .line 15
    if-ge v3, v4, :cond_58

    .line 17
    aget-object v4, v1, v3

    .line 19
    const-string v5, "="

    .line 21
    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    move-result-object v4

    .line 25
    array-length v5, v4

    .line 26
    const/4 v6, 0x2

    .line 27
    if-lt v5, v6, :cond_41

    .line 29
    :try_start_1c
    aget-object v5, v4, v2

    .line 31
    iget-object v6, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mEncode:Ljava/lang/String;

    .line 33
    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v5

    .line 37
    const/4 v6, 0x1

    .line 38
    aget-object v4, v4, v6

    .line 40
    iget-object v6, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mEncode:Ljava/lang/String;

    .line 42
    invoke-static {v4, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_30} :catch_31

    .line 49
    goto :goto_3e

    .line 50
    :catch_31
    const-string v4, "Encode not supported: "

    .line 52
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    move-result-object v4

    .line 56
    iget-object v5, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mEncode:Ljava/lang/String;

    .line 58
    const-string v6, "XUrlencodedProcessor"

    .line 60
    invoke-static {v4, v5, v6}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    .line 65
    goto :goto_d

    .line 66
    :cond_41
    new-instance v0, Lmiui/cloud/net/XHttpClient$DataConversionException;

    .line 68
    const-string v2, "Bad input data: "

    .line 70
    const-string v4, ", wrong format near: "

    .line 72
    invoke-static {v2, p1, v4}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    move-result-object p1

    .line 76
    aget-object v1, v1, v3

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    invoke-direct {v0, p1}, Lmiui/cloud/net/XHttpClient$DataConversionException;-><init>(Ljava/lang/String;)V

    .line 88
    throw v0

    .line 89
    :cond_58
    return-object v0
.end method

.method private encode(Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_4e

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 26
    :try_start_19
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/String;

    .line 32
    if-nez v3, :cond_23

    .line 34
    const-string v3, "null"

    .line 36
    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    iget-object v5, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mEncode:Ljava/lang/String;

    .line 43
    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v2, "="

    .line 52
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v2, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mEncode:Ljava/lang/String;

    .line 57
    invoke-static {v3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_46} :catch_47

    .line 71
    goto :goto_d

    .line 72
    :catch_47
    move-exception p1

    .line 73
    new-instance v0, Lmiui/cloud/net/XHttpClient$DataConversionException;

    .line 75
    invoke-direct {v0, p1}, Lmiui/cloud/net/XHttpClient$DataConversionException;-><init>(Ljava/lang/Throwable;)V

    .line 78
    throw v0

    .line 79
    :cond_4e
    const/4 p1, 0x0

    .line 80
    new-array p1, p1, [Ljava/lang/String;

    .line 82
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 85
    move-result-object p1

    .line 86
    const-string v0, "&"

    .line 88
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    return-object p1
.end method


# virtual methods
.method public getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object p1, Lmiui/cloud/net/XUrlencodedProcessor;->MIME_TYPE:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public getOutDataLength(Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 3
    invoke-direct {p0, p1}, Lmiui/cloud/net/XUrlencodedProcessor;->bufferData(Ljava/util/Map;)V

    .line 6
    iget-object p1, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    .line 8
    iget-object v0, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mBufferedDataString:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v0}, Lmiui/cloud/net/XPlainTextProcessor;->getOutDataLength(Ljava/lang/Object;)I

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
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
    iget-object v0, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiui/cloud/net/XPlainTextProcessor;->processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Lmiui/cloud/net/XUrlencodedProcessor;->decode(Ljava/lang/String;)Ljava/util/Map;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .registers 4

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 3
    invoke-direct {p0, p1}, Lmiui/cloud/net/XUrlencodedProcessor;->bufferData(Ljava/util/Map;)V

    .line 6
    iget-object p1, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    .line 8
    iget-object v0, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mBufferedDataString:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v0, p2}, Lmiui/cloud/net/XPlainTextProcessor;->processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 13
    return-void
.end method
