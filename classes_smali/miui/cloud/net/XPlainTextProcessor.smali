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

    new-instance v0, Lmiui/cloud/net/XPlainTextProcessor$1;

    invoke-direct {v0}, Lmiui/cloud/net/XPlainTextProcessor$1;-><init>()V

    sput-object v0, Lmiui/cloud/net/XPlainTextProcessor;->CREATOR:Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/cloud/net/XByteArrayProcessor;

    invoke-direct {v0}, Lmiui/cloud/net/XByteArrayProcessor;-><init>()V

    iput-object v0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mByteArrayProcessor:Lmiui/cloud/net/XByteArrayProcessor;

    iput-object p1, p0, Lmiui/cloud/net/XPlainTextProcessor;->mEncode:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/cloud/net/XPlainTextProcessor;->MIME_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method private bufferString(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mBufferedString:Ljava/lang/String;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lmiui/cloud/net/XPlainTextProcessor;->mBufferedString:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mBufferedStringByte:[B

    :try_start_c
    iget-object v0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mEncode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lmiui/cloud/net/XPlainTextProcessor;->mBufferedStringByte:[B
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p1

    new-instance v0, Lmiui/cloud/net/XHttpClient$DataConversionException;

    invoke-direct {v0, p1}, Lmiui/cloud/net/XHttpClient$DataConversionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    sget-object p1, Lmiui/cloud/net/XPlainTextProcessor;->MIME_TYPE:Ljava/lang/String;

    return-object p1
.end method

.method public getOutDataLength(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lmiui/cloud/net/XPlainTextProcessor;->bufferString(Ljava/lang/String;)V

    iget-object p1, p0, Lmiui/cloud/net/XPlainTextProcessor;->mBufferedStringByte:[B

    array-length p1, p1

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

    iget-object v0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mByteArrayProcessor:Lmiui/cloud/net/XByteArrayProcessor;

    invoke-virtual {v0, p1, p2}, Lmiui/cloud/net/XByteArrayProcessor;->processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :try_start_8
    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mEncode:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_f} :catch_10

    return-object p2

    :catch_10
    move-exception p1

    new-instance p2, Lmiui/cloud/net/XHttpClient$DataConversionException;

    invoke-direct {p2, p1}, Lmiui/cloud/net/XHttpClient$DataConversionException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiui/cloud/net/XPlainTextProcessor;->bufferString(Ljava/lang/String;)V

    iget-object p1, p0, Lmiui/cloud/net/XPlainTextProcessor;->mByteArrayProcessor:Lmiui/cloud/net/XByteArrayProcessor;

    iget-object v0, p0, Lmiui/cloud/net/XPlainTextProcessor;->mBufferedStringByte:[B

    invoke-virtual {p1, v0, p2}, Lmiui/cloud/net/XByteArrayProcessor;->processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V

    return-void
.end method
