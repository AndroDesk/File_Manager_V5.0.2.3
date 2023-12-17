.class Lmiui/cloud/net/XByteArrayProcessor$1;
.super Ljava/lang/Object;
.source "XByteArrayProcessor.java"

# interfaces
.implements Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/net/XByteArrayProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstanceIfAbleToProcessInData(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;
    .registers 3

    .line 1
    invoke-static {}, Lmiui/cloud/net/XByteArrayProcessor;->access$000()Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_10

    .line 11
    new-instance p1, Lmiui/cloud/net/XByteArrayProcessor;

    .line 13
    invoke-direct {p1}, Lmiui/cloud/net/XByteArrayProcessor;-><init>()V

    .line 16
    return-object p1

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method

.method public getInstanceIfAbleToProcessOutData(Ljava/lang/Object;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
    .registers 3

    .line 1
    instance-of p1, p1, [B

    .line 3
    if-eqz p1, :cond_a

    .line 5
    new-instance p1, Lmiui/cloud/net/XByteArrayProcessor;

    .line 7
    invoke-direct {p1}, Lmiui/cloud/net/XByteArrayProcessor;-><init>()V

    .line 10
    return-object p1

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    return-object p1
.end method
