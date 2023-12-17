.class public Lmiuix/appcompat/widget/DialogAnimHelper;
.super Ljava/lang/Object;
.source "DialogAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;
    }
.end annotation


# static fields
.field private static sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAnimator()V
    .registers 1

    .line 1
    sget-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lmiuix/appcompat/widget/dialoganim/IDialogAnim;->cancelAnimator()V

    .line 8
    :cond_7
    return-void
.end method

.method public static executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
    .registers 4

    .line 1
    sget-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 3
    if-nez v0, :cond_17

    .line 5
    sget-boolean v0, Lmiuix/os/Build;->IS_TABLET:Z

    .line 7
    if-eqz v0, :cond_10

    .line 9
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;

    .line 11
    invoke-direct {v0}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;-><init>()V

    .line 14
    sput-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 16
    goto :goto_17

    .line 17
    :cond_10
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 19
    invoke-direct {v0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;-><init>()V

    .line 22
    sput-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 24
    :cond_17
    :goto_17
    sget-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 26
    invoke-interface {v0, p0, p1, p2}, Lmiuix/appcompat/widget/dialoganim/IDialogAnim;->executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    .line 29
    const/4 p0, 0x0

    .line 30
    sput-object p0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 32
    return-void
.end method

.method public static executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .registers 5

    .line 1
    sget-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 3
    if-nez v0, :cond_17

    .line 5
    sget-boolean v0, Lmiuix/os/Build;->IS_TABLET:Z

    .line 7
    if-eqz v0, :cond_10

    .line 9
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;

    .line 11
    invoke-direct {v0}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;-><init>()V

    .line 14
    sput-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 16
    goto :goto_17

    .line 17
    :cond_10
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 19
    invoke-direct {v0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;-><init>()V

    .line 22
    sput-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 24
    :cond_17
    :goto_17
    sget-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 26
    invoke-interface {v0, p0, p1, p2, p3}, Lmiuix/appcompat/widget/dialoganim/IDialogAnim;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    .line 29
    return-void
.end method
