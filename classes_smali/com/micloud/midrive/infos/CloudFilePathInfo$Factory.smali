.class public Lcom/micloud/midrive/infos/CloudFilePathInfo$Factory;
.super Ljava/lang/Object;
.source "CloudFilePathInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/CloudFilePathInfo;
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

.method public static create(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/CloudFilePathInfo;
    .registers 7

    .line 1
    const-string p0, "records"

    .line 3
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "path"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_12
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 22
    move-result v2

    .line 23
    if-ge v1, v2, :cond_44

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lorg/json/JSONObject;

    .line 31
    invoke-static {v2}, Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    if-nez v1, :cond_41

    .line 40
    iget-object v3, v2, Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode;->privacyStatus:Ljava/lang/String;

    .line 42
    const-string v4, "PRIVACY"

    .line 44
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_41

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    iget-object v2, v2, Lcom/micloud/midrive/infos/CloudFilePathInfo$PathNode;->name:Ljava/lang/String;

    .line 56
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    const-string v3, "私密空间"

    .line 62
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    :cond_41
    add-int/lit8 v1, v1, 0x1

    .line 68
    goto :goto_12

    .line 69
    :cond_44
    new-instance p0, Lcom/micloud/midrive/infos/CloudFilePathInfo;

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/micloud/midrive/infos/CloudFilePathInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 74
    return-object p0
.end method
