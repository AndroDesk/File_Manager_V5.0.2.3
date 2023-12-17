.class public Lmiui/cloud/net/XSendDataAutoAdaptProcessor;
.super Lmiui/cloud/net/XAutoAdaptProcessor;
.source "XSendDataAutoAdaptProcessor.java"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$ISendDataProcessor;


# instance fields
.field private mBufferedData:Ljava/lang/Object;

.field private mBufferedProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

.field private mEncode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiui/cloud/net/XAutoAdaptProcessor;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedData:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    .line 9
    iput-object p1, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mEncode:Ljava/lang/String;

    .line 11
    return-void
.end method

.method private bufferData(Ljava/lang/Object;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedData:Ljava/lang/Object;

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-object p1, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedData:Ljava/lang/Object;

    .line 8
    sget-object v0, Lmiui/cloud/net/XAutoAdaptProcessor;->AVALIABLE_PROCESSOR_CREATORS:[Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 14
    aget-object v3, v0, v2

    .line 16
    iget-object v4, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mEncode:Ljava/lang/String;

    .line 18
    invoke-interface {v3, p1, v4}, Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;->getInstanceIfAbleToProcessOutData(Ljava/lang/Object;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_1a

    .line 24
    iput-object v3, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    .line 26
    return-void

    .line 27
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_b

    .line 30
    :cond_1d
    new-instance p1, Lmiui/cloud/net/XPlainTextProcessor;

    .line 32
    iget-object v0, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mEncode:Ljava/lang/String;

    .line 34
    invoke-direct {p1, v0}, Lmiui/cloud/net/XPlainTextProcessor;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    .line 39
    return-void
.end method


# virtual methods
.method public getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->bufferData(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    .line 6
    iget-object v0, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedData:Ljava/lang/Object;

    .line 8
    invoke-interface {p1, v0}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public getOutDataLength(Ljava/lang/Object;)I
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->bufferData(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    .line 6
    iget-object v0, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedData:Ljava/lang/Object;

    .line 8
    invoke-interface {p1, v0}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->getOutDataLength(Ljava/lang/Object;)I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->bufferData(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    .line 6
    iget-object v0, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedData:Ljava/lang/Object;

    .line 8
    invoke-interface {p1, v0, p2}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 11
    return-void
.end method
