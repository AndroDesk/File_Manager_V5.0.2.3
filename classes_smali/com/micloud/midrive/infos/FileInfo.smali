.class public Lcom/micloud/midrive/infos/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/FileInfo$Factory;
    }
.end annotation


# static fields
.field public static final FILE_NORMAL:Ljava/lang/String; = "NORMAL"

.field public static final FILE_PRIVACY:Ljava/lang/String; = "PRIVACY"

.field public static final FILE_TYPE_FOLDER:Ljava/lang/String; = "folder"

.field private static final JSON_LONG_CREATE_TIME:Ljava/lang/String; = "createTime"

.field private static final JSON_LONG_LOCAL_CREATE_TIME:Ljava/lang/String; = "localCreateTime"

.field private static final JSON_LONG_LOCAL_MODIFY_TIME:Ljava/lang/String; = "localModifyTime"

.field private static final JSON_LONG_MODIFY_TIME:Ljava/lang/String; = "modifyTime"

.field private static final JSON_LONG_SIZE:Ljava/lang/String; = "size"

.field public static final JSON_STR_COVER_URL:Ljava/lang/String; = "coverUrl"

.field private static final JSON_STR_FILE_ID:Ljava/lang/String; = "id"

.field private static final JSON_STR_FILE_NAME:Ljava/lang/String; = "name"

.field private static final JSON_STR_LABEL:Ljava/lang/String; = "label"

.field private static final JSON_STR_PARENT_ID:Ljava/lang/String; = "parentId"

.field public static final JSON_STR_PRIVACY_STATUS:Ljava/lang/String; = "privacyStatus"

.field private static final JSON_STR_REVISION:Ljava/lang/String; = "revision"

.field private static final JSON_STR_SHA1:Ljava/lang/String; = "sha1"

.field private static final JSON_STR_STATUS:Ljava/lang/String; = "status"

.field private static final JSON_STR_TYPE:Ljava/lang/String; = "type"

.field public static final NOT_SHOW_SIZE:I = -0x1


# instance fields
.field public final createTime:J

.field public final id:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final localCreateTime:J

.field public final localModifyTime:J

.field private mCoverUrl:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field public final modifyTime:J

.field public final parentId:Ljava/lang/String;

.field public final privacyStatus:Ljava/lang/String;

.field public final revision:Ljava/lang/String;

.field public final sha1:Ljava/lang/String;

.field public final size:J

.field public final status:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->id:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->mName:Ljava/lang/String;

    move-wide v1, p3

    .line 4
    iput-wide v1, v0, Lcom/micloud/midrive/infos/FileInfo;->modifyTime:J

    move-wide v1, p5

    .line 5
    iput-wide v1, v0, Lcom/micloud/midrive/infos/FileInfo;->createTime:J

    move-wide v1, p7

    .line 6
    iput-wide v1, v0, Lcom/micloud/midrive/infos/FileInfo;->localModifyTime:J

    move-wide v1, p9

    .line 7
    iput-wide v1, v0, Lcom/micloud/midrive/infos/FileInfo;->localCreateTime:J

    move-object v1, p11

    .line 8
    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->type:Ljava/lang/String;

    move-object v1, p12

    .line 9
    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->parentId:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 10
    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->revision:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 11
    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->status:Ljava/lang/String;

    move-wide/from16 v1, p15

    .line 12
    iput-wide v1, v0, Lcom/micloud/midrive/infos/FileInfo;->size:J

    move-object/from16 v1, p17

    .line 13
    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->label:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 14
    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->sha1:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 15
    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->mCoverUrl:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 16
    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->privacyStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCoverUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileInfo;->mCoverUrl:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileInfo;->mName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public isPrivacy()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/FileInfo;->privacyStatus:Ljava/lang/String;

    .line 3
    const-string v1, "PRIVACY"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/infos/FileInfo;->mCoverUrl:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/infos/FileInfo;->mName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->id:Ljava/lang/String;

    .line 8
    const-string v2, "id"

    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->mName:Ljava/lang/String;

    .line 15
    const-string v2, "name"

    .line 17
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    iget-wide v1, p0, Lcom/micloud/midrive/infos/FileInfo;->modifyTime:J

    .line 22
    const-string v3, "modifyTime"

    .line 24
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 27
    iget-wide v1, p0, Lcom/micloud/midrive/infos/FileInfo;->createTime:J

    .line 29
    const-string v3, "createTime"

    .line 31
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 34
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->type:Ljava/lang/String;

    .line 36
    const-string v2, "type"

    .line 38
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->parentId:Ljava/lang/String;

    .line 43
    const-string v2, "parentId"

    .line 45
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->revision:Ljava/lang/String;

    .line 50
    const-string v2, "revision"

    .line 52
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->status:Ljava/lang/String;

    .line 57
    const-string v2, "status"

    .line 59
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->mCoverUrl:Ljava/lang/String;

    .line 64
    const-string v2, "coverUrl"

    .line 66
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->type:Ljava/lang/String;

    .line 71
    const-string v2, "folder"

    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_63

    .line 79
    iget-wide v1, p0, Lcom/micloud/midrive/infos/FileInfo;->size:J

    .line 81
    const-string v3, "size"

    .line 83
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 86
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->label:Ljava/lang/String;

    .line 88
    const-string v2, "label"

    .line 90
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->sha1:Ljava/lang/String;

    .line 95
    const-string v2, "sha1"

    .line 97
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    :cond_63
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->privacyStatus:Ljava/lang/String;

    .line 102
    const-string v2, "privacyStatus"

    .line 104
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    return-object v0
.end method
