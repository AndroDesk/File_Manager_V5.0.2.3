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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lmiui/cloud/net/XAutoAdaptProcessor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedData:Ljava/lang/Object;

    iput-object v0, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    iput-object p1, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mEncode:Ljava/lang/String;

    return-void
.end method

.method private bufferData(Ljava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedData:Ljava/lang/Object;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedData:Ljava/lang/Object;

    sget-object v0, Lmiui/cloud/net/XAutoAdaptProcessor;->AVALIABLE_PROCESSOR_CREATORS:[Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    iget-object v4, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mEncode:Ljava/lang/String;

    invoke-interface {v3, p1, v4}, Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;->getInstanceIfAbleToProcessOutData(Ljava/lang/Object;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    move-result-object v3

    if-eqz v3, :cond_1a

    iput-object v3, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    return-void

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    new-instance p1, Lmiui/cloud/net/XPlainTextProcessor;

    iget-object v0, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mEncode:Ljava/lang/String;

    invoke-direct {p1, v0}, Lmiui/cloud/net/XPlainTextProcessor;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    return-void
.end method


# virtual methods
.method public getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->bufferData(Ljava/lang/Object;)V

    iget-object p1, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    iget-object v0, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedData:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOutDataLength(Ljava/lang/Object;)I
    .registers 3

    invoke-direct {p0, p1}, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->bufferData(Ljava/lang/Object;)V

    iget-object p1, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    iget-object v0, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedData:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->getOutDataLength(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .registers 4

    invoke-direct {p0, p1}, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->bufferData(Ljava/lang/Object;)V

    iget-object p1, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedProcessor:Lmiui/cloud/net/XHttpClient$ISendDataProcessor;

    iget-object v0, p0, Lmiui/cloud/net/XSendDataAutoAdaptProcessor;->mBufferedData:Ljava/lang/Object;

    invoke-interface {p1, v0, p2}, Lmiui/cloud/net/XHttpClient$ISendDataProcessor;->processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V

    return-void
.end method
