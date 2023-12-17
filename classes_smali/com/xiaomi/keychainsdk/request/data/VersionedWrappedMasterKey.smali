.class public Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;
.super Ljava/lang/Object;
.source "VersionedWrappedMasterKey.java"


# instance fields
.field public final tag:S

.field public final version:J

.field public final wrappedMasterKey:Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;


# direct methods
.method public constructor <init>(Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;JS)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;->wrappedMasterKey:Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;

    .line 6
    iput-wide p2, p0, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;->version:J

    .line 8
    iput-short p4, p0, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;->tag:S

    .line 10
    return-void
.end method

.method public static fromServerJSON(Lorg/json/JSONObject;S)Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;->fromServerJSON(Lorg/json/JSONObject;)Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "masterKeyVersion"

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 10
    move-result-wide v1

    .line 11
    new-instance p0, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;

    .line 13
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;-><init>(Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;JS)V

    .line 16
    return-object p0
.end method
