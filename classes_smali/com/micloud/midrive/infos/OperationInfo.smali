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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/OperationInfo;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/micloud/midrive/infos/OperationInfo;->name:Ljava/lang/String;

    invoke-static {p5}, Lcom/micloud/midrive/infos/OperationInfo$OperateType;->getOperateType(Ljava/lang/String;)Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/infos/OperationInfo;->operateType:Lcom/micloud/midrive/infos/OperationInfo$OperateType;

    iput-wide p3, p0, Lcom/micloud/midrive/infos/OperationInfo;->operateTime:J

    iput-object p6, p0, Lcom/micloud/midrive/infos/OperationInfo;->parentId:Ljava/lang/String;

    iput-object p7, p0, Lcom/micloud/midrive/infos/OperationInfo;->channel:Ljava/lang/String;

    iput-object p8, p0, Lcom/micloud/midrive/infos/OperationInfo;->fileType:Ljava/lang/String;

    iput-object p9, p0, Lcom/micloud/midrive/infos/OperationInfo;->label:Ljava/lang/String;

    return-void
.end method
