.class public Lcom/xiaomi/micloudsdk/data/AccessToken;
.super Ljava/lang/Object;
.source "AccessToken.java"

# interfaces
.implements Lcom/xiaomi/micloudsdk/data/IAuthToken;


# static fields
.field private static final SP:Ljava/lang/String; = ","


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final clientId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/data/AccessToken;->accessToken:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/data/AccessToken;->clientId:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/micloudsdk/data/AccessToken;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/micloudsdk/data/AccessToken;->clientId:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/xiaomi/micloudsdk/data/AccessToken;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/micloudsdk/data/AccessToken;->accessToken:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/data/AccessToken;
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/micloudsdk/data/AccessToken;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/xiaomi/micloudsdk/data/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/data/AccessToken;
    .registers 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    const-string v0, ","

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    array-length v0, p0

    .line 16
    const/4 v2, 0x2

    .line 17
    if-ne v0, v2, :cond_2e

    .line 19
    const/4 v0, 0x0

    .line 20
    aget-object v2, p0, v0

    .line 22
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_2e

    .line 28
    const/4 v2, 0x1

    .line 29
    aget-object v3, p0, v2

    .line 31
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_25

    .line 37
    goto :goto_2e

    .line 38
    :cond_25
    new-instance v1, Lcom/xiaomi/micloudsdk/data/AccessToken;

    .line 40
    aget-object v0, p0, v0

    .line 42
    aget-object p0, p0, v2

    .line 44
    invoke-direct {v1, v0, p0}, Lcom/xiaomi/micloudsdk/data/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_2e
    :goto_2e
    return-object v1
.end method


# virtual methods
.method public getBuilderForCloudRequest()Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;
    .registers 2

    .line 1
    new-instance v0, Lcom/xiaomi/micloudsdk/data/AccessToken$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/xiaomi/micloudsdk/data/AccessToken$1;-><init>(Lcom/xiaomi/micloudsdk/data/AccessToken;)V

    .line 6
    return-object v0
.end method

.method public toPlain()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/data/AccessToken;->accessToken:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ","

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/data/AccessToken;->clientId:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
