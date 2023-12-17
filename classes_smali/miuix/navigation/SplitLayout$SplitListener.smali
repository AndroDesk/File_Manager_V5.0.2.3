.class public interface abstract Lmiuix/navigation/SplitLayout$SplitListener;
.super Ljava/lang/Object;
.source "SplitLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigation/SplitLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SplitListener"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onSplitClose()V
.end method

.method public abstract onSplitEnd(Ljava/lang/String;)V
.end method

.method public abstract onSplitOpen()V
.end method

.method public abstract onSplitProgress(F)V
.end method

.method public abstract onSplitStart(Ljava/lang/String;)V
.end method
