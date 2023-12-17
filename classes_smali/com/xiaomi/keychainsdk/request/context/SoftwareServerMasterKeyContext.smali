.class public Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;
.super Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;
.source "SoftwareServerMasterKeyContext.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;)V

    return-void
.end method

.method public static fromServerJSON(Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;
    .registers 2

    new-instance v0, Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;

    invoke-static {p0}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->fromServerJSON(Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;)V

    return-object v0
.end method
