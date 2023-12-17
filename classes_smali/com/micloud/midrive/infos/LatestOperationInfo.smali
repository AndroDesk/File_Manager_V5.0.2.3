.class public Lcom/micloud/midrive/infos/LatestOperationInfo;
.super Ljava/lang/Object;
.source "LatestOperationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/infos/LatestOperationInfo$Factory;
    }
.end annotation


# static fields
.field public static final JSON_INT_COUNT:Ljava/lang/String; = "count"

.field public static final JSON_OBJECT_RECORD:Ljava/lang/String; = "record"


# instance fields
.field public count:I

.field public operation:Lcom/micloud/midrive/infos/OperationInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ILcom/micloud/midrive/infos/OperationInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/micloud/midrive/infos/LatestOperationInfo;->count:I

    iput-object p2, p0, Lcom/micloud/midrive/infos/LatestOperationInfo;->operation:Lcom/micloud/midrive/infos/OperationInfo;

    return-void
.end method
