.class public Lcom/micloud/midrive/infos/SyncCloudFileInfo;
.super Ljava/lang/Object;
.source "SyncCloudFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/SyncCloudFileInfo$Factory;
    }
.end annotation


# static fields
.field public static final FILE_NORMAL:Ljava/lang/String; = "NORMAL"

.field public static final FILE_PRIVACY:Ljava/lang/String; = "PRIVACY"

.field private static final JSON_LONG_CREATE_TIME:Ljava/lang/String; = "createTime"

.field private static final JSON_LONG_LOCAL_CREATE_TIME:Ljava/lang/String; = "localCreateTime"

.field private static final JSON_LONG_LOCAL_MODIFY_TIME:Ljava/lang/String; = "localModifyTime"

.field private static final JSON_LONG_MODIFY_TIME:Ljava/lang/String; = "modifyTime"

.field private static final JSON_LONG_SIZE:Ljava/lang/String; = "size"

.field private static final JSON_STR_FILE_ID:Ljava/lang/String; = "id"

.field private static final JSON_STR_FILE_NAME:Ljava/lang/String; = "name"

.field private static final JSON_STR_LABEL:Ljava/lang/String; = "label"

.field private static final JSON_STR_PARENT_ID:Ljava/lang/String; = "parentId"

.field public static final JSON_STR_PRIVACY_STATUS:Ljava/lang/String; = "privacyStatus"

.field private static final JSON_STR_REVISION:Ljava/lang/String; = "revision"

.field private static final JSON_STR_SHA1:Ljava/lang/String; = "sha1"

.field private static final JSON_STR_STATUS:Ljava/lang/String; = "status"

.field private static final JSON_STR_TYPE:Ljava/lang/String; = "type"

.field public static final STATUS_DELETED:Ljava/lang/String; = "deleted"

.field public static final STATUS_PURGED:Ljava/lang/String; = "purged"


# instance fields
.field public final createTime:J

.field public final id:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final localCreateTime:J

.field public final localModifyTime:J

.field public final modifyTime:J

.field public final name:Ljava/lang/String;

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

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    move-wide v1, p3

    iput-wide v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->modifyTime:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->createTime:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->localModifyTime:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->localCreateTime:J

    move-object v1, p11

    iput-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->revision:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->status:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->label:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->privacyStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isPrivacy()Z
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->privacyStatus:Ljava/lang/String;

    const-string v1, "PRIVACY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, "SyncCloudFileInfo{id=\'"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", modifyTime="

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-wide v3, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->modifyTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->createTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", localModifyTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->localModifyTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", localCreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->localCreateTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    const-string v3, ", parentId=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    const-string v3, ", revision=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->revision:Ljava/lang/String;

    const-string v3, ", status=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->status:Ljava/lang/String;

    const-string v3, ", size="

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-wide v3, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->label:Ljava/lang/String;

    const-string v3, ", sha1=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    const-string v3, ", name=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
