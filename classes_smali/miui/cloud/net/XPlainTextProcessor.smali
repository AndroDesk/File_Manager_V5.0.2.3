.class public Lmiui/cloud/net/XPlainTextProcessor;
.super Ljava/lang/Object;
.source "XPlainTextProcessor.java"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
.implements Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;


# static fields
.field public static final CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

.field private static MIME_TYPE:Ljava/lang/String; = "text/plain"


# instance fields
.field private mBufferedString:Ljava/lang/String;

.field private mBufferedStringByte:[B

.field private mByteArrayProcessor:Lmiui/cloud/net/XByteArrayProcessor;

.field private mEncode:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiui/cloud/net/XPlainTextProcessor$1;

    .line 3
    invoke-direct {v0}, Lmiui/cloud/net/XPlainTextProcessor$1;-><init>()V

    .line 6
    sput-object v0, Lmiui/cloud/net/XPlainTextProcessor;->CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lmiui/cloud/net/XByteArrayProcessor;

    .line 6
    invoke-direct {v0}, Lmiui/cloud/net/XByteArrayProcessor;-><init>()V

    .line 9
    iput-object v0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mByteArrayProcessor:Lmiui/cloud/net/XByteArrayProcessor;

    .line 11
    iput-object p1, p0, Lmiui/cloud/net/XPlainTextProcessor;->mEncode:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lmiui/cloud/net/XPlainTextProcessor;->MIME_TYPE:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method private bufferString(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mBufferedString:Ljava/lang/String;

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-object p1, p0, Lmiui/cloud/net/XPlainTextProcessor;->mBufferedString:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [B

    .line 11
    iput-object v0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mBufferedStringByte:[B

    .line 13
    :try_start_c
    iget-object v0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mEncode:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lmiui/cloud/net/XPlainTextProcessor;->mBufferedStringByte:[B
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_14} :catch_15

    .line 21
    return-void

    .line 22
    :catch_15
    move-exception p1

    .line 23
    new-instance v0, Lmiui/cloud/net/XHttpClient$DataConversionException;

    .line 25
    invoke-direct {v0, p1}, Lmiui/cloud/net/XHttpClient$DataConversionException;-><init>(Ljava/lang/Throwable;)V

    .line 28
    throw v0
.end method


# virtual methods
.method public getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object p1, Lmiui/cloud/net/XPlainTextProcessor;->MIME_TYPE:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public getOutDataLength(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-direct {p0, p1}, Lmiui/cloud/net/XPlainTextProcessor;->bufferString(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lmiui/cloud/net/XPlainTextProcessor;->mBufferedStringByte:[B

    .line 8
    array-length p1, p1

    .line 9
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
    iget-object v0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mByteArrayProcessor:Lmiui/cloud/net/XByteArrayProcessor;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiui/cloud/net/XByteArrayProcessor;->processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, [B

    .line 9
    :try_start_8
    new-instance p2, Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mEncode:Ljava/lang/String;

    .line 13
    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_f} :catch_10

    .line 16
    return-object p2

    .line 17
    :catch_10
    move-exception p1

    .line 18
    new-instance p2, Lmiui/cloud/net/XHttpClient$DataConversionException;

    .line 20
    invoke-direct {p2, p1}, Lmiui/cloud/net/XHttpClient$DataConversionException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    throw p2
.end method

.method public processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lmiui/cloud/net/XPlainTextProcessor;->bufferString(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lmiui/cloud/net/XPlainTextProcessor;->mByteArrayProcessor:Lmiui/cloud/net/XByteArrayProcessor;

    .line 10
    iget-object v0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mBufferedStringByte:[B

    .line 12
    invoke-virtual {p1, v0, p2}, Lmiui/cloud/net/XByteArrayProcessor;->processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 15
    return-void
.end method
