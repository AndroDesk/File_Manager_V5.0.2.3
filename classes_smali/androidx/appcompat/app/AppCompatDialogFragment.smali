.class public Landroidx/appcompat/app/AppCompatDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AppCompatDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Landroidx/fragment/app/DialogFragment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    .line 1
    new-instance p1, Landroidx/appcompat/app/q;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    .line 10
    move-result v1

    .line 11
    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/q;-><init>(Landroid/content/Context;I)V

    .line 14
    return-object p1
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .registers 6

    .line 1
    instance-of v0, p1, Landroidx/appcompat/app/q;

    .line 3
    if-eqz v0, :cond_1e

    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/appcompat/app/q;

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p2, v1, :cond_1a

    .line 11
    const/4 v2, 0x2

    .line 12
    if-eq p2, v2, :cond_1a

    .line 14
    const/4 v2, 0x3

    .line 15
    if-eq p2, v2, :cond_11

    .line 17
    goto :goto_21

    .line 18
    :cond_11
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 21
    move-result-object p1

    .line 22
    const/16 p2, 0x18

    .line 24
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 27
    :cond_1a
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/q;->supportRequestWindowFeature(I)Z

    .line 30
    goto :goto_21

    .line 31
    :cond_1e
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    .line 34
    :goto_21
    return-void
.end method
