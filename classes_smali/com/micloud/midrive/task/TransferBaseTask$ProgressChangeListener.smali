.class public interface abstract Lcom/micloud/midrive/task/TransferBaseTask$ProgressChangeListener;
.super Ljava/lang/Object;
.source "TransferBaseTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/task/TransferBaseTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressChangeListener"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onProgressUpdate(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)V
.end method
