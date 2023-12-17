.class public abstract Lmiuix/navigation/SplitLayout$SplitListenerAdapter;
.super Ljava/lang/Object;
.source "SplitLayout.java"

# interfaces
.implements Lmiuix/navigation/SplitLayout$SplitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigation/SplitLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SplitListenerAdapter"
.end annotation


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


# virtual methods
.method public onSplitClose()V
    .registers 1

    return-void
.end method

.method public onSplitEnd(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onSplitOpen()V
    .registers 1

    return-void
.end method

.method public onSplitProgress(F)V
    .registers 2

    return-void
.end method

.method public onSplitStart(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
