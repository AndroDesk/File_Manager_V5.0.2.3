.class public Lcom/micloud/midrive/infos/FileOperationTimeInfo;
.super Ljava/lang/Object;
.source "FileOperationTimeInfo.java"


# instance fields
.field public final fileOperationTime:J

.field public final operationQueryTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/micloud/midrive/infos/FileOperationTimeInfo;->fileOperationTime:J

    iput-wide p3, p0, Lcom/micloud/midrive/infos/FileOperationTimeInfo;->operationQueryTime:J

    return-void
.end method
