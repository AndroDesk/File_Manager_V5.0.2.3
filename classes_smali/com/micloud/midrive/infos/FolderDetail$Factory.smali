.class public Lcom/micloud/midrive/infos/FolderDetail$Factory;
.super Ljava/lang/Object;
.source "FolderDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/infos/FolderDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "FolderDetail.Factory class"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method public static create(Ljava/lang/String;)Lcom/micloud/midrive/infos/FolderDetail;
    .registers 10

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p0, Lcom/micloud/midrive/infos/FolderDetail;

    .line 8
    const-string v1, "name"

    .line 10
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    const-string v1, "id"

    .line 16
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    const-string v1, "parentId"

    .line 22
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v4

    .line 26
    const-string v1, "modifyTime"

    .line 28
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 31
    move-result-wide v5

    .line 32
    const-string v1, "createTime"

    .line 34
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 37
    move-result-wide v7

    .line 38
    move-object v1, p0

    .line 39
    invoke-direct/range {v1 .. v8}, Lcom/micloud/midrive/infos/FolderDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 42
    return-object p0
.end method
