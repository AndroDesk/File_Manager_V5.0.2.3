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

    new-instance v0, Lmiui/cloud/net/XUrlencodedProcessor$1;

    invoke-direct {v0}, Lmiui/cloud/net/XUrlencodedProcessor$1;-><init>()V

    sput-object v0, Lmiui/cloud/net/XUrlencodedProcessor;->CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/cloud/net/XPlainTextProcessor;

    invoke-direct {v0, p1}, Lmiui/cloud/net/XPlainTextProcessor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    iput-object p1, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mEncode:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/cloud/net/XUrlencodedProcessor;->MIME_TYPE:Ljava/lang/String;

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

    iget-object v0, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mBufferedData:Ljava/util/Map;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mBufferedData:Ljava/util/Map;

    invoke-direct {p0, p1}, Lmiui/cloud/net/XUrlencodedProcessor;->encode(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mBufferedDataString:Ljava/lang/String;

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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "&"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    array-length v4, v1

    if-ge v3, v4, :cond_58

    aget-object v4, v1, v3

    const-string v5, "="

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_41

    :try_start_1c
    aget-object v5, v4, v2

    iget-object v6, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mEncode:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    iget-object v6, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mEncode:Ljava/lang/String;

    invoke-static {v4, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_30} :catch_31

    goto :goto_3e

    :catch_31
    const-string v4, "Encode not supported: "

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mEncode:Ljava/lang/String;

    const-string v6, "XUrlencodedProcessor"

    invoke-static {v4, v5, v6}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_41
    new-instance v0, Lmiui/cloud/net/XHttpClient$DataConversionException;

    const-string v2, "Bad input data: "

    const-string v4, ", wrong format near: "

    invoke-static {v2, p1, v4}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lmiui/cloud/net/XHttpClient$DataConversionException;-><init>(Ljava/lang/String;)V

    throw v0

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_19
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_23

    const-string v3, "null"

    :cond_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mEncode:Ljava/lang/String;

    invoke-static {v2, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mEncode:Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_46} :catch_47

    goto :goto_d

    :catch_47
    move-exception p1

    new-instance v0, Lmiui/cloud/net/XHttpClient$DataConversionException;

    invoke-direct {v0, p1}, Lmiui/cloud/net/XHttpClient$DataConversionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_4e
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "&"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    sget-object p1, Lmiui/cloud/net/XUrlencodedProcessor;->MIME_TYPE:Ljava/lang/String;

    return-object p1
.end method

.method public getOutDataLength(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lmiui/cloud/net/XUrlencodedProcessor;->bufferData(Ljava/util/Map;)V

    iget-object p1, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    iget-object v0, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mBufferedDataString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmiui/cloud/net/XPlainTextProcessor;->getOutDataLength(Ljava/lang/Object;)I

    move-result p1

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

    iget-object v0, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    invoke-virtual {v0, p1, p2}, Lmiui/cloud/net/XPlainTextProcessor;->processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lmiui/cloud/net/XUrlencodedProcessor;->decode(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .registers 4

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lmiui/cloud/net/XUrlencodedProcessor;->bufferData(Ljava/util/Map;)V

    iget-object p1, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    iget-object v0, p0, Lmiui/cloud/net/XUrlencodedProcessor;->mBufferedDataString:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lmiui/cloud/net/XPlainTextProcessor;->processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V

    return-void
.end method
