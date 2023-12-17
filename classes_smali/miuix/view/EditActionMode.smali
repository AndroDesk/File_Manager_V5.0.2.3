.class public interface abstract Lmiuix/view/EditActionMode;
.super Ljava/lang/Object;
.source "EditActionMode.java"


# static fields
.field public static final BUTTON1:I

.field public static final BUTTON2:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x10b2d8f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/view/EditActionMode;->BUTTON1:I

    const v0, 0x10b2d8c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/view/EditActionMode;->BUTTON2:I

    return-void
.end method


# virtual methods
.method public abstract addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V
.end method

.method public abstract removeAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V
.end method

.method public abstract setButton(II)V
.end method

.method public abstract setButton(III)V
.end method

.method public abstract setButton(ILjava/lang/CharSequence;)V
.end method

.method public abstract setButton(ILjava/lang/CharSequence;I)V
.end method

.method public abstract setButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;I)V
.end method
