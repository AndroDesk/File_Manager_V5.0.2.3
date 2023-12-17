.class public interface abstract Lcom/micloud/midrive/session/action/SyncFileOperateHelper$FileOperationProxy;
.super Ljava/lang/Object;
.source "SyncFileOperateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/action/SyncFileOperateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileOperationProxy"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getOperateRecords(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getOperateType()Lcom/micloud/midrive/task/operation/OperationInfo$FileOperationType;
.end method
