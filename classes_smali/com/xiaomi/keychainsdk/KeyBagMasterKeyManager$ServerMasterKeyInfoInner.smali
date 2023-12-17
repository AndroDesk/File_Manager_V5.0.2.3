.class Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;
.super Ljava/lang/Object;
.source "KeyBagMasterKeyManager.java"

# interfaces
.implements Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerMasterKeyInfoInner"
.end annotation


# instance fields
.field private final mCanInstallToDevice:Z

.field public final serverMasterKeyContext:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;->serverMasterKeyContext:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;

    iput-boolean p2, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;->mCanInstallToDevice:Z

    return-void
.end method


# virtual methods
.method public canInstallToDevice()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;->mCanInstallToDevice:Z

    return v0
.end method

.method public getRemoteKeyVersion()J
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;->serverMasterKeyContext:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;

    iget-object v0, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;->serverMasterKeyContextCommon:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;

    iget-wide v0, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->masterKeyVersion:J

    return-wide v0
.end method

.method public hasRemoteKey()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/keychainsdk/KeyBagMasterKeyManager$ServerMasterKeyInfoInner;->serverMasterKeyContext:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;

    iget-object v0, v0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;->serverMasterKeyContextCommon:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;

    invoke-virtual {v0}, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;->hasRemoteKey()Z

    move-result v0

    return v0
.end method
