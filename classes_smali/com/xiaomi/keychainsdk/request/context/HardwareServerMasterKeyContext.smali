.class public Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;
.super Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;
.source "HardwareServerMasterKeyContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;
    }
.end annotation


# instance fields
.field public final hardwareInfo:Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;


# direct methods
.method public constructor <init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;)V

    .line 4
    iput-object p2, p0, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;->hardwareInfo:Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;

    .line 6
    return-void
.end method

.method public static fromServerJSON([Ljava/security/cert/Certificate;Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;
    .registers 4

    .line 1
    new-instance v0, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    .line 3
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->fromServerJSON(Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {p0, p1}, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->fromServerJSON([Ljava/security/cert/Certificate;Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;

    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, v1, p0}, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;)V

    .line 14
    return-object v0
.end method
