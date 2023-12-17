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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->isRootAttestationCATrust:Z

    iput-object p2, p0, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->serverCachedAttestationCA:Ljava/util/Set;

    iput-object p3, p0, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->testKey:Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;

    return-void
.end method

.method public static fromServerJSON([Ljava/security/cert/Certificate;Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;
    .registers 9

    const-string v0, "additional"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "ca"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    array-length v3, p0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    if-ne v2, v3, :cond_3d

    const/4 v3, 0x0

    move v5, v4

    :goto_1c
    if-ge v5, v2, :cond_33

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    if-lez v6, :cond_30

    add-int/lit8 v6, v2, -0x1

    if-ne v5, v6, :cond_29

    move v3, v4

    :cond_29
    add-int/lit8 v6, v5, -0x1

    aget-object v6, p0, v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_33
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->fromServerJSON(Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;

    move-result-object p0

    new-instance p1, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;

    invoke-direct {p1, v3, v0, p0}, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;-><init>(ZLjava/util/Set;Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;)V

    return-object p1

    :cond_3d
    new-instance p1, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo$ResponseCACountNotMatchException;

    array-length p0, p0

    add-int/2addr p0, v4

    invoke-direct {p1, p0, v2}, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo$ResponseCACountNotMatchException;-><init>(II)V

    throw p1
.end method
