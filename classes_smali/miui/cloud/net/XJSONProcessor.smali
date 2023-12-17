.class public Lmiui/cloud/net/XJSONProcessor;
.super Ljava/lang/Object;
.source "XJSONProcessor.java"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
.implements Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;


# static fields
.field public static final CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

.field private static MIME_TYPE:Ljava/lang/String; = "application/json"


# instance fields
.field private mBufferedData:Ljava/lang/Object;

.field private mBufferedDataString:Ljava/lang/String;

.field private mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiui/cloud/net/XJSONProcessor$1;

    .line 3
    invoke-direct {v0}, Lmiui/cloud/net/XJSONProcessor$1;-><init>()V

    .line 6
    sput-object v0, Lmiui/cloud/net/XJSONProcessor;->CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

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
    iput-object v0, p0, Lmiui/cloud/net/XJSONProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    .line 11
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lmiui/cloud/net/XJSONProcessor;->MIME_TYPE:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method private bufferData(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiui/cloud/net/XJSONProcessor;->mBufferedData:Ljava/lang/Object;

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-object p1, p0, Lmiui/cloud/net/XJSONProcessor;->mBufferedData:Ljava/lang/Object;

    .line 8
    invoke-direct {p0, p1}, Lmiui/cloud/net/XJSONProcessor;->encode(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lmiui/cloud/net/XJSONProcessor;->mBufferedDataString:Ljava/lang/String;

    .line 14
    return-void
.end method

.method private decode(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 6
    return-object v0

    .line 7
    :catch_6
    move-exception v0

    .line 8
    new-instance v1, Lmiui/cloud/net/XHttpClient$DataConversionException;

    .line 10
    const-string v2, "Bad JSON: "

    .line 12
    invoke-static {v2, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v1, p1, v0}, Lmiui/cloud/net/XHttpClient$DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    throw v1
.end method

.method private encode(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method


# virtual methods
.method public getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object p1, Lmiui/cloud/net/XJSONProcessor;->MIME_TYPE:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public getOutDataLength(Ljava/lang/Object;)I
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiui/cloud/net/XJSONProcessor;->bufferData(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmiui/cloud/net/XJSONProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    .line 6
    iget-object v0, p0, Lmiui/cloud/net/XJSONProcessor;->mBufferedDataString:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0}, Lmiui/cloud/net/XPlainTextProcessor;->getOutDataLength(Ljava/lang/Object;)I

    .line 11
    move-result p1

    .line 12
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
    iget-object v0, p0, Lmiui/cloud/net/XJSONProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiui/cloud/net/XPlainTextProcessor;->processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Lmiui/cloud/net/XJSONProcessor;->decode(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lmiui/cloud/net/XJSONProcessor;->bufferData(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmiui/cloud/net/XJSONProcessor;->mPlainTextProcessor:Lmiui/cloud/net/XPlainTextProcessor;

    .line 6
    iget-object v0, p0, Lmiui/cloud/net/XJSONProcessor;->mBufferedDataString:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0, p2}, Lmiui/cloud/net/XPlainTextProcessor;->processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 11
    return-void
.end method
