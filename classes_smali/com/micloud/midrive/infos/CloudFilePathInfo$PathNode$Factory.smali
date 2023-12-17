.class public Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode$Factory;
.super Ljava/lang/Object;
.source "CloudFilePathInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode;
    .registers 5

    .line 1
    new-instance v0, Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode;

    .line 3
    const-string v1, "name"

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "id"

    .line 11
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    const-string v3, "privacyStatus"

    .line 17
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, v1, v2, p0}, Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-object v0
.end method
