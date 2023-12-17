.class public Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;
.super Ljava/lang/Object;
.source "ServerMasterKeyContext.java"


# instance fields
.field public final serverMasterKeyContextCommon:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContext;->serverMasterKeyContextCommon:Lcom/xiaomi/keychainsdk/request/context/ServerMasterKeyContextCommon;

    return-void
.end method
