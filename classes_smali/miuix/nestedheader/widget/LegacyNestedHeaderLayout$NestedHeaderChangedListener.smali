.class public interface abstract Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout$NestedHeaderChangedListener;
.super Ljava/lang/Object;
.source "LegacyNestedHeaderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/nestedheader/widget/LegacyNestedHeaderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NestedHeaderChangedListener"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onHeaderClosed(Landroid/view/View;)V
.end method

.method public abstract onHeaderOpened(Landroid/view/View;)V
.end method

.method public abstract onTriggerClosed(Landroid/view/View;)V
.end method

.method public abstract onTriggerOpened(Landroid/view/View;)V
.end method
