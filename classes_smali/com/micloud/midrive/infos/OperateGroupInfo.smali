.class public Lcom/micloud/midrive/infos/OperateGroupInfo;
.super Ljava/lang/Object;
.source "OperateGroupInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/OperateGroupInfo$Factory;
    }
.end annotation


# static fields
.field private static final JSON_ARRAY_RECORDS:Ljava/lang/String; = "records"

.field private static final JSON_INT_COUNT:Ljava/lang/String; = "count"

.field private static final JSON_LONG_OPERATE_TIME:Ljava/lang/String; = "operateTime"

.field private static final JSON_STR_CHANNEL:Ljava/lang/String; = "channel"

.field private static final JSON_STR_GROUP_ID:Ljava/lang/String; = "groupId"

.field private static final JSON_STR_OPERATE_TYPE:Ljava/lang/String; = "operateType"

.field private static final JSON_STR_TYPE:Ljava/lang/String; = "type"


# instance fields
.field public final channel:Ljava/lang/String;

.field public final count:J

.field public final groupId:Ljava/lang/String;

.field public final operateTime:J

.field public final operateType:Ljava/lang/String;

.field public final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/OperateRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/OperateRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/micloud/midrive/infos/OperateGroupInfo;->count:J

    iput-object p3, p0, Lcom/micloud/midrive/infos/OperateGroupInfo;->operateType:Ljava/lang/String;

    iput-object p4, p0, Lcom/micloud/midrive/infos/OperateGroupInfo;->channel:Ljava/lang/String;

    iput-wide p5, p0, Lcom/micloud/midrive/infos/OperateGroupInfo;->operateTime:J

    iput-object p7, p0, Lcom/micloud/midrive/infos/OperateGroupInfo;->records:Ljava/util/List;

    iput-object p8, p0, Lcom/micloud/midrive/infos/OperateGroupInfo;->groupId:Ljava/lang/String;

    iput-object p9, p0, Lcom/micloud/midrive/infos/OperateGroupInfo;->type:Ljava/lang/String;

    return-void
.end method
