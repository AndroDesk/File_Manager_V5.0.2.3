.class Lmiui/cloud/net/XJSONProcessor$1;
.super Ljava/lang/Object;
.source "XJSONProcessor.java"

# interfaces
.implements Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/net/XJSONProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstanceIfAbleToProcessInData(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;
    .registers 4

    invoke-static {}, Lmiui/cloud/net/XJSONProcessor;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    new-instance p1, Lmiui/cloud/net/XJSONProcessor;

    invoke-direct {p1, p2}, Lmiui/cloud/net/XJSONProcessor;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInstanceIfAbleToProcessOutData(Ljava/lang/Object;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
    .registers 4

    instance-of v0, p1, Lorg/json/JSONObject;

    if-nez v0, :cond_b

    instance-of p1, p1, Lorg/json/JSONArray;

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return-object p1

    :cond_b
    :goto_b
    new-instance p1, Lmiui/cloud/net/XJSONProcessor;

    invoke-direct {p1, p2}, Lmiui/cloud/net/XJSONProcessor;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
