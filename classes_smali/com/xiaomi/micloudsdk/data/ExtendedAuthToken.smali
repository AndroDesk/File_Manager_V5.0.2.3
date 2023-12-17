.class public final Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;
.super Ljava/lang/Object;
.source "ExtendedAuthToken.java"

# interfaces
.implements Lcom/xiaomi/micloudsdk/data/IAuthToken;


# static fields
.field private static final SP:Ljava/lang/String; = ","


# instance fields
.field public final authToken:Ljava/lang/String;

.field public final security:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;
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
    new-instance v1, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 40
    aget-object v0, p0, v0

    .line 42
    aget-object p0, p0, v2

    .line 44
    invoke-direct {v1, v0, p0}, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_2e
    :goto_2e
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_29

    .line 8
    const-class v2, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_10

    .line 16
    goto :goto_29

    .line 17
    :cond_10
    check-cast p1, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 19
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    .line 21
    iget-object v3, p1, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    .line 23
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1d

    .line 29
    return v1

    .line 30
    :cond_1d
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    .line 32
    iget-object p1, p1, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    .line 34
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_28

    .line 40
    return v1

    .line 41
    :cond_28
    return v0

    .line 42
    :cond_29
    :goto_29
    return v1
.end method

.method public getBuilderForCloudRequest()Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;
    .registers 2

    .line 1
    new-instance v0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken$1;-><init>(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V

    .line 6
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    move-result v0

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v0, v1

    .line 12
    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    .line 16
    if-eqz v2, :cond_15

    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 21
    move-result v1

    .line 22
    :cond_15
    add-int/2addr v0, v1

    .line 23
    return v0
.end method

.method public toPlain()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ","

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
