.class public Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;
.super Ljava/lang/Object;
.source "HardwareServerMasterKeyContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HardwareInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo$ResponseCACountNotMatchException;
    }
.end annotation


# instance fields
.field public final isRootAttestationCATrust:Z

.field public final serverCachedAttestationCA:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public final testKey:Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;


# direct methods
.method public constructor <init>(ZLjava/util/Set;Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->isRootAttestationCATrust:Z

    .line 6
    iput-object p2, p0, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->serverCachedAttestationCA:Ljava/util/Set;

    .line 8
    iput-object p3, p0, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->testKey:Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;

    .line 10
    return-void
.end method

.method public static fromServerJSON([Ljava/security/cert/Certificate;Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;
    .registers 9

    .line 1
    const-string v0, "additional"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Ljava/util/HashSet;

    .line 9
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 12
    const-string v1, "ca"

    .line 14
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 21
    move-result v2

    .line 22
    array-length v3, p0

    .line 23
    const/4 v4, 0x1

    .line 24
    add-int/2addr v3, v4

    .line 25
    if-ne v2, v3, :cond_3d

    .line 27
    const/4 v3, 0x0

    .line 28
    move v5, v4

    .line 29
    :goto_1c
    if-ge v5, v2, :cond_33

    .line 31
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getInt(I)I

    .line 34
    move-result v6

    .line 35
    if-lez v6, :cond_30

    .line 37
    add-int/lit8 v6, v2, -0x1

    .line 39
    if-ne v5, v6, :cond_29

    .line 41
    move v3, v4

    .line 42
    :cond_29
    add-int/lit8 v6, v5, -0x1

    .line 44
    aget-object v6, p0, v6

    .line 46
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_30
    add-int/lit8 v5, v5, 0x1

    .line 51
    goto :goto_1c

    .line 52
    :cond_33
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->fromServerJSON(Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;

    .line 55
    move-result-object p0

    .line 56
    new-instance p1, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;

    .line 58
    invoke-direct {p1, v3, v0, p0}, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;-><init>(ZLjava/util/Set;Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;)V

    .line 61
    return-object p1

    .line 62
    :cond_3d
    new-instance p1, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo$ResponseCACountNotMatchException;

    .line 64
    array-length p0, p0

    .line 65
    add-int/2addr p0, v4

    .line 66
    invoke-direct {p1, p0, v2}, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo$ResponseCACountNotMatchException;-><init>(II)V

    .line 69
    throw p1
.end method
