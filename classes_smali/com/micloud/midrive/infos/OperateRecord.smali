.class public Lcom/micloud/midrive/infos/OperateRecord;
.super Ljava/lang/Object;
.source "OperateRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/OperateRecord$Factory;
    }
.end annotation


# static fields
.field public static final JSON_LONG_OPERATE_TIME:Ljava/lang/String; = "operateTime"

.field public static final JSON_LONG_SIZE:Ljava/lang/String; = "size"

.field public static final JSON_STR_CHANNEL:Ljava/lang/String; = "channel"

.field public static final JSON_STR_COVER_URL:Ljava/lang/String; = "coverUrl"

.field public static final JSON_STR_FILE_ID:Ljava/lang/String; = "fileId"

.field public static final JSON_STR_GROUP_ID:Ljava/lang/String; = "groupId"

.field public static final JSON_STR_ID:Ljava/lang/String; = "id"

.field public static final JSON_STR_LABEL:Ljava/lang/String; = "label"

.field public static final JSON_STR_NAME:Ljava/lang/String; = "name"

.field public static final JSON_STR_OPERATE_TYPE:Ljava/lang/String; = "operateType"

.field public static final JSON_STR_PARENT_ID:Ljava/lang/String; = "parentId"

.field public static final JSON_STR_SHA1:Ljava/lang/String; = "sha1"

.field public static final JSON_STR_TYPE:Ljava/lang/String; = "type"


# instance fields
.field public final channel:Ljava/lang/String;

.field public coverUrl:Ljava/lang/String;

.field public final fileId:Ljava/lang/String;

.field public final groupId:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final operateTime:J

.field public final operateType:Ljava/lang/String;

.field public final parentId:Ljava/lang/String;

.field public final sha1:Ljava/lang/String;

.field public final size:J

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/OperateRecord;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/micloud/midrive/infos/OperateRecord;->groupId:Ljava/lang/String;

    iput-object p3, p0, Lcom/micloud/midrive/infos/OperateRecord;->fileId:Ljava/lang/String;

    iput-object p4, p0, Lcom/micloud/midrive/infos/OperateRecord;->name:Ljava/lang/String;

    iput-wide p5, p0, Lcom/micloud/midrive/infos/OperateRecord;->operateTime:J

    iput-object p7, p0, Lcom/micloud/midrive/infos/OperateRecord;->operateType:Ljava/lang/String;

    iput-object p8, p0, Lcom/micloud/midrive/infos/OperateRecord;->parentId:Ljava/lang/String;

    iput-object p9, p0, Lcom/micloud/midrive/infos/OperateRecord;->channel:Ljava/lang/String;

    iput-object p10, p0, Lcom/micloud/midrive/infos/OperateRecord;->type:Ljava/lang/String;

    iput-object p11, p0, Lcom/micloud/midrive/infos/OperateRecord;->label:Ljava/lang/String;

    iput-object p12, p0, Lcom/micloud/midrive/infos/OperateRecord;->sha1:Ljava/lang/String;

    iput-wide p13, p0, Lcom/micloud/midrive/infos/OperateRecord;->size:J

    iput-object p15, p0, Lcom/micloud/midrive/infos/OperateRecord;->coverUrl:Ljava/lang/String;

    return-void
.end method
