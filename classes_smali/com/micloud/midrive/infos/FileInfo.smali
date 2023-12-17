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

.field public static final NOT_SHOW_SIZE:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/infos/FileInfo;->NOT_SHOW_SIZE:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->id:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->mName:Ljava/lang/String;

    move-wide v1, p3

    iput-wide v1, v0, Lcom/micloud/midrive/infos/FileInfo;->modifyTime:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/micloud/midrive/infos/FileInfo;->createTime:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/micloud/midrive/infos/FileInfo;->localModifyTime:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/micloud/midrive/infos/FileInfo;->localCreateTime:J

    move-object v1, p11

    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->type:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->parentId:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->revision:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->status:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/micloud/midrive/infos/FileInfo;->size:J

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->label:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->sha1:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->mCoverUrl:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/micloud/midrive/infos/FileInfo;->privacyStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCoverUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileInfo;->mCoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isPrivacy()Z
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/infos/FileInfo;->privacyStatus:Ljava/lang/String;

    const-string v1, "PRIVACY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/infos/FileInfo;->mCoverUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/infos/FileInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->mName:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v1, p0, Lcom/micloud/midrive/infos/FileInfo;->modifyTime:J

    const-string v3, "modifyTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-wide v1, p0, Lcom/micloud/midrive/infos/FileInfo;->createTime:J

    const-string v3, "createTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->type:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->parentId:Ljava/lang/String;

    const-string v2, "parentId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->revision:Ljava/lang/String;

    const-string v2, "revision"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->status:Ljava/lang/String;

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->mCoverUrl:Ljava/lang/String;

    const-string v2, "coverUrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->type:Ljava/lang/String;

    const-string v2, "folder"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    iget-wide v1, p0, Lcom/micloud/midrive/infos/FileInfo;->size:J

    const-string v3, "size"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->label:Ljava/lang/String;

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->sha1:Ljava/lang/String;

    const-string v2, "sha1"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_63
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileInfo;->privacyStatus:Ljava/lang/String;

    const-string v2, "privacyStatus"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
