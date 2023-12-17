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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/data/AccessToken;->accessToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/data/AccessToken;->clientId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/xiaomi/micloudsdk/data/AccessToken;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/micloudsdk/data/AccessToken;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/xiaomi/micloudsdk/data/AccessToken;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/micloudsdk/data/AccessToken;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/data/AccessToken;
    .registers 3

    new-instance v0, Lcom/xiaomi/micloudsdk/data/AccessToken;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/micloudsdk/data/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/data/AccessToken;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2e

    const/4 v0, 0x0

    aget-object v2, p0, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    const/4 v2, 0x1

    aget-object v3, p0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_2e

    :cond_25
    new-instance v1, Lcom/xiaomi/micloudsdk/data/AccessToken;

    aget-object v0, p0, v0

    aget-object p0, p0, v2

    invoke-direct {v1, v0, p0}, Lcom/xiaomi/micloudsdk/data/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    return-object v1
.end method


# virtual methods
.method public getBuilderForCloudRequest()Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;
    .registers 2

    new-instance v0, Lcom/xiaomi/micloudsdk/data/AccessToken$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/micloudsdk/data/AccessToken$1;-><init>(Lcom/xiaomi/micloudsdk/data/AccessToken;)V

    return-object v0
.end method

.method public toPlain()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/data/AccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/data/AccessToken;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
