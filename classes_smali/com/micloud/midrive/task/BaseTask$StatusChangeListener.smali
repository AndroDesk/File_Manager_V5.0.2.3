.class public interface abstract Lcom/micloud/midrive/task/BaseTask$StatusChangeListener;
.super Ljava/lang/Object;
.source "BaseTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/task/BaseTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatusChangeListener"
.end annotation


# virtual methods
.method public abstract onRunningStepChanged(Lcom/micloud/midrive/task/BaseTask;)V
.end method

.method public abstract onStateChanged(Lcom/micloud/midrive/task/BaseTask;)V
.end method
