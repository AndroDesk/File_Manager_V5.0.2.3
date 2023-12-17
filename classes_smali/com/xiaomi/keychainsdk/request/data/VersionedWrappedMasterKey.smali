.class public Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;
.super Ljava/lang/Object;
.source "VersionedWrappedMasterKey.java"


# instance fields
.field public final tag:S

.field public final version:J

.field public final wrappedMasterKey:Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;JS)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;->wrappedMasterKey:Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;

    iput-wide p2, p0, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;->version:J

    iput-short p4, p0, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;->tag:S

    return-void
.end method

.method public static fromServerJSON(Lorg/json/JSONObject;S)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;
    .registers 5

    invoke-static {p0}, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->fromServerJSON(Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;

    move-result-object v0

    const-string v1, "masterKeyVersion"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    new-instance p0, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;-><init>(Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;JS)V

    return-object p0
.end method
