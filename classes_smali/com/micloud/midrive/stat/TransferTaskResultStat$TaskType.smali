.class public Lcom/micloud/midrive/stat/TransferTaskResultStat$TaskType;
.super Ljava/lang/Object;
.source "TransferTaskResultStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/stat/TransferTaskResultStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskType"
.end annotation


# static fields
.field public static final DOWNLOAD_TASK:Ljava/lang/String; = "downloadTask"

.field public static final UPLOAD_TASK:Ljava/lang/String; = "uploadTask"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
