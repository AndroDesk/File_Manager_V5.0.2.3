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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    move-wide v1, p3

    .line 4
    iput-wide v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->modifyTime:J

    move-wide v1, p5

    .line 5
    iput-wide v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->createTime:J

    move-wide v1, p7

    .line 6
    iput-wide v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->localModifyTime:J

    move-wide v1, p9

    .line 7
    iput-wide v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->localCreateTime:J

    move-object v1, p11

    .line 8
    iput-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    move-object v1, p12

    .line 9
    iput-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 10
    iput-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->revision:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 11
    iput-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->status:Ljava/lang/String;

    move-wide/from16 v1, p15

    .line 12
    iput-wide v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    move-object/from16 v1, p17

    .line 13
    iput-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->label:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 14
    iput-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 15
    iput-object v1, v0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->privacyStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isPrivacy()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->privacyStatus:Ljava/lang/String;

    .line 3
    const-string v1, "PRIVACY"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, "SyncCloudFileInfo{id=\'"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 9
    const/16 v2, 0x27

    .line 11
    const-string v3, ", modifyTime="

    .line 13
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 16
    iget-wide v3, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->modifyTime:J

    .line 18
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", createTime="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-wide v3, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->createTime:J

    .line 28
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", localModifyTime="

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-wide v3, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->localModifyTime:J

    .line 38
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", localCreateTime="

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-wide v3, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->localCreateTime:J

    .line 48
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", type=\'"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    .line 58
    const-string v3, ", parentId=\'"

    .line 60
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    .line 65
    const-string v3, ", revision=\'"

    .line 67
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->revision:Ljava/lang/String;

    .line 72
    const-string v3, ", status=\'"

    .line 74
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->status:Ljava/lang/String;

    .line 79
    const-string v3, ", size="

    .line 81
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 84
    iget-wide v3, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->size:J

    .line 86
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ", label=\'"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->label:Ljava/lang/String;

    .line 96
    const-string v3, ", sha1=\'"

    .line 98
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->sha1:Ljava/lang/String;

    .line 103
    const-string v3, ", name=\'"

    .line 105
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    const/16 v1, 0x7d

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method
