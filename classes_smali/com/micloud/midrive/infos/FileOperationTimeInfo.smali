.class public Lcom/micloud/midrive/infos/FileOperationTimeInfo;
.super Ljava/lang/Object;
.source "FileOperationTimeInfo.java"


# instance fields
.field public final fileOperationTime:J

.field public final operationQueryTime:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/micloud/midrive/infos/FileOperationTimeInfo;->fileOperationTime:J

    .line 6
    iput-wide p3, p0, Lcom/micloud/midrive/infos/FileOperationTimeInfo;->operationQueryTime:J

    .line 8
    return-void
.end method
