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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;)V

    iput-object p2, p0, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;->hardwareInfo:Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;

    return-void
.end method

.method public static fromServerJSON([Ljava/security/cert/Certificate;Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;
    .registers 4

    new-instance v0, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->fromServerJSON(Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;->fromServerJSON([Ljava/security/cert/Certificate;Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext;-><init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;Lcom/xiaomi/keychainsdk/request/context/HardwareServerMasterKeyContext$HardwareInfo;)V

    return-object v0
.end method
