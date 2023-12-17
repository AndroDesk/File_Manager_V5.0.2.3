.class public interface abstract Lmiuix/navigator/EditDialogFragment$EditDialogListener;
.super Ljava/lang/Object;
.source "EditDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/EditDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EditDialogListener"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract isPositiveBtnEnable(Ljava/lang/CharSequence;)Z
.end method

.method public abstract onNegativeClick()V
.end method

.method public abstract onPositiveClick(Ljava/lang/CharSequence;)V
.end method

.method public abstract onPositiveDisable()V
.end method
