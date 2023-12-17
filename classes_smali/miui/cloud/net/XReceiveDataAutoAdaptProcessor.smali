.class public Lmiui/cloud/net/XReceiveDataAutoAdaptProcessor;
.super Lmiui/cloud/net/XAutoAdaptProcessor;
.source "XReceiveDataAutoAdaptProcessor.java"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiui/cloud/net/XAutoAdaptProcessor;-><init>()V

    .line 4
    return-void
.end method

.method private getContentTypeAndEncodeFromHeader(Ljava/util/Map;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "Content-Type"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/List;

    .line 9
    const-string v0, "utf-8"

    .line 11
    if-eqz p1, :cond_3b

    .line 13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_3b

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/String;

    .line 26
    const-string v2, ";"

    .line 28
    invoke-static {p1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    aget-object v1, p1, v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    array-length v2, p1

    .line 39
    const/4 v3, 0x1

    .line 40
    if-le v2, v3, :cond_3d

    .line 42
    aget-object p1, p1, v3

    .line 44
    const-string v2, "="

    .line 46
    invoke-static {p1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    array-length v2, p1

    .line 51
    if-le v2, v3, :cond_3d

    .line 53
    aget-object p1, p1, v3

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    goto :goto_3d

    .line 60
    :cond_3b
    const-string v1, "text/plain"

    .line 62
    :cond_3d
    :goto_3d
    new-instance p1, Landroid/util/Pair;

    .line 64
    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    return-object p1
.end method


# virtual methods
.method public processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 10
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
    invoke-direct {p0, p1}, Lmiui/cloud/net/XReceiveDataAutoAdaptProcessor;->getContentTypeAndEncodeFromHeader(Ljava/util/Map;)Landroid/util/Pair;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lmiui/cloud/net/XAutoAdaptProcessor;->AVALIABLE_PROCESSOR_CREATORS:[Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;

    .line 7
    array-length v2, v1

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_8
    if-ge v3, v2, :cond_22

    .line 11
    aget-object v4, v1, v3

    .line 13
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 15
    check-cast v5, Ljava/lang/String;

    .line 17
    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 19
    check-cast v6, Ljava/lang/String;

    .line 21
    invoke-interface {v4, v5, v6}, Lmiui/cloud/net/XAutoAdaptProcessor$DataProcessorCreator;->getInstanceIfAbleToProcessInData(Ljava/lang/String;Ljava/lang/String;)Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;

    .line 24
    move-result-object v4

    .line 25
    if-eqz v4, :cond_1f

    .line 27
    invoke-interface {v4, p1, p2}, Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;->processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    .line 34
    goto :goto_8

    .line 35
    :cond_22
    new-instance v1, Lmiui/cloud/net/XPlainTextProcessor;

    .line 37
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 39
    check-cast v0, Ljava/lang/String;

    .line 41
    invoke-direct {v1, v0}, Lmiui/cloud/net/XPlainTextProcessor;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, p1, p2}, Lmiui/cloud/net/XPlainTextProcessor;->processInData(Ljava/util/Map;Ljava/io/InputStream;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method
