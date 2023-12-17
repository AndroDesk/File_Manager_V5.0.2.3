.class public Lcom/micloud/midrive/infos/OperateGroupInfo$Factory;
.super Ljava/lang/Object;
.source "OperateGroupInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/OperateGroupInfo;
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

.method public static create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/OperateGroupInfo;
    .registers 12

    .line 1
    const-string v0, "records"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 6
    move-result-object v0

    .line 7
    new-instance v8, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_c
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_22

    .line 19
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lorg/json/JSONObject;

    .line 25
    invoke-static {v2}, Lcom/micloud/midrive/infos/OperateRecord$Factory;->create(Lorg/json/JSONObject;)Lcom/micloud/midrive/infos/OperateRecord;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_c

    .line 35
    :cond_22
    new-instance v0, Lcom/micloud/midrive/infos/OperateGroupInfo;

    .line 37
    const-string v1, "count"

    .line 39
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 42
    move-result v1

    .line 43
    int-to-long v2, v1

    .line 44
    const-string v1, "operateType"

    .line 46
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 50
    const-string v1, "channel"

    .line 52
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v5

    .line 56
    const-string v1, "operateTime"

    .line 58
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 61
    move-result-wide v6

    .line 62
    const-string v1, "groupId"

    .line 64
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v9

    .line 68
    const-string v1, "type"

    .line 70
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v10

    .line 74
    move-object v1, v0

    .line 75
    invoke-direct/range {v1 .. v10}, Lcom/micloud/midrive/infos/OperateGroupInfo;-><init>(JLjava/lang/String;Ljava/lang/String;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-object v0
.end method
