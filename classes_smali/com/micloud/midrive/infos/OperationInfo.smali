.class public Lcom/micloud/midrive/infos/OperationInfo;
.super Ljava/lang/Object;
.source "OperationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/OperationInfo$Factory;,
        Lcom/micloud/midrive/infos/OperationInfo$OperateType;
    }
.end annotation


# static fields
.field public static final JSON_LONG_OPERATION_TIME:Ljava/lang/String; = "operateTime"

.field public static final JSON_STR_CHANNEL:Ljava/lang/String; = "channel"

.field public static final JSON_STR_FILE_LABEL:Ljava/lang/String; = "label"

.field public static final JSON_STR_FILE_TYPE:Ljava/lang/String; = "type"

.field public static final JSON_STR_ID:Ljava/lang/String; = "id"

.field public static final JSON_STR_NAME:Ljava/lang/String; = "name"

.field public static final JSON_STR_OPERATION_TYPE:Ljava/lang/String; = "operateType"

.field public static final JSON_STR_PARENT_ID:Ljava/lang/String; = "parentId"


# instance fields
.field public final channel:Ljava/lang/String;

.field public final fileType:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final operateTime:J

.field public final operateType:Lcom/micloud/midrive/infos/OperationInfo$OperateType;

.field public final parentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/infos/OperationInfo;->id:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/infos/OperationInfo;->name:Ljava/lang/String;

    .line 8
    invoke-static {p5}, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->getOperateType(Ljava/lang/String;)Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/micloud/midrive/infos/OperationInfo;->operateType:Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    .line 14
    iput-wide p3, p0, Lcom/micloud/midrive/infos/OperationInfo;->operateTime:J

    .line 16
    iput-object p6, p0, Lcom/micloud/midrive/infos/OperationInfo;->parentId:Ljava/lang/String;

    .line 18
    iput-object p7, p0, Lcom/micloud/midrive/infos/OperationInfo;->channel:Ljava/lang/String;

    .line 20
    iput-object p8, p0, Lcom/micloud/midrive/infos/OperationInfo;->fileType:Ljava/lang/String;

    .line 22
    iput-object p9, p0, Lcom/micloud/midrive/infos/OperationInfo;->label:Ljava/lang/String;

    .line 24
    return-void
.end method
