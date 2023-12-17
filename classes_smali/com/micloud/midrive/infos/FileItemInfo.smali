.class public Lcom/micloud/midrive/infos/FileItemInfo;
.super Ljava/lang/Object;
.source "FileItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/FileItemInfo$Factory;
    }
.end annotation


# static fields
.field public static final JSON_LONG_CREATE_TIME:Ljava/lang/String; = "localCreateTime"

.field public static final JSON_LONG_LAST_MODIFY_TIME:Ljava/lang/String; = "localModifyTime"

.field public static final JSON_STR_MD5:Ljava/lang/String; = "md5"

.field public static final JSON_STR_SHA1:Ljava/lang/String; = "sha1"


# instance fields
.field public final createTime:J

.field public final lastModifyTime:J

.field public final md5:Ljava/lang/String;

.field public final sha1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/infos/FileItemInfo;->md5:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/infos/FileItemInfo;->sha1:Ljava/lang/String;

    .line 8
    iput-wide p3, p0, Lcom/micloud/midrive/infos/FileItemInfo;->lastModifyTime:J

    .line 10
    iput-wide p5, p0, Lcom/micloud/midrive/infos/FileItemInfo;->createTime:J

    .line 12
    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileItemInfo;->md5:Ljava/lang/String;

    .line 8
    const-string v2, "md5"

    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileItemInfo;->sha1:Ljava/lang/String;

    .line 15
    const-string v2, "sha1"

    .line 17
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    iget-wide v1, p0, Lcom/micloud/midrive/infos/FileItemInfo;->lastModifyTime:J

    .line 22
    const-string v3, "localModifyTime"

    .line 24
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 27
    iget-wide v1, p0, Lcom/micloud/midrive/infos/FileItemInfo;->createTime:J

    .line 29
    const-string v3, "localCreateTime"

    .line 31
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 34
    return-object v0
.end method
