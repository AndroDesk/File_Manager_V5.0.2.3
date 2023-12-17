.class public Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;
.super Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;
.source "SoftwareServerMasterKeyContext.java"


# direct methods
.method public constructor <init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;)V

    .line 4
    return-void
.end method

.method public static fromServerJSON(Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;
    .registers 2

    .line 1
    new-instance v0, Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;

    .line 3
    invoke-static {p0}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->fromServerJSON(Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;

    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lcom/xiaomi/keychainsdk/request/context/SoftwareServerMasterKeyContext;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;)V

    .line 10
    return-object v0
.end method
