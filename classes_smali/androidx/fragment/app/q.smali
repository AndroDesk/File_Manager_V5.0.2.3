.class public abstract Landroidx/fragment/app/q;
.super Landroidx/fragment/app/n;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/n;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;

.field public final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mWindowAnimations:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 6

    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/n;-><init>()V

    .line 4
    new-instance v0, Landroidx/fragment/app/u;

    invoke-direct {v0}, Landroidx/fragment/app/u;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5
    iput-object p1, p0, Landroidx/fragment/app/q;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_1f

    .line 6
    iput-object p2, p0, Landroidx/fragment/app/q;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_17

    .line 7
    iput-object p3, p0, Landroidx/fragment/app/q;->mHandler:Landroid/os/Handler;

    .line 8
    iput p4, p0, Landroidx/fragment/app/q;->mWindowAnimations:I

    return-void

    .line 9
    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "handler == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 5

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/fragment/app/q;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .registers 4

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroidx/fragment/app/q;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/q;->mActivity:Landroid/app/Activity;

    .line 3
    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/q;->mContext:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/q;->mHandler:Landroid/os/Handler;

    .line 3
    return-object v0
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/q;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public onGetWindowAnimations()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/q;->mWindowAnimations:I

    .line 3
    return v0
.end method

.method public onHasView()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onRequestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onShouldSaveFragmentState(Landroidx/fragment/app/Fragment;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .registers 5
    .param p2  # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/q;->onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onStartActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5
    .param p2  # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 p1, -0x1

    if-ne p3, p1, :cond_9

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/q;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p4}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    .line 3
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onStartIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 18
    .param p2  # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    move v3, p3

    .line 3
    if-ne v3, v0, :cond_16

    .line 5
    move-object v0, p0

    .line 6
    iget-object v1, v0, Landroidx/fragment/app/q;->mActivity:Landroid/app/Activity;

    .line 8
    sget v2, Ld0/a;->a:I

    .line 10
    move-object v2, p2

    .line 11
    move v3, p3

    .line 12
    move-object v4, p4

    .line 13
    move v5, p5

    .line 14
    move v6, p6

    .line 15
    move/from16 v7, p7

    .line 17
    move-object/from16 v8, p8

    .line 19
    invoke-static/range {v1 .. v8}, Ld0/a$a;->c(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 22
    return-void

    .line 23
    :cond_16
    move-object v0, p0

    .line 24
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 26
    const-string v2, "Starting intent sender with a requestCode requires a FragmentActivity host"

    .line 28
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    throw v1
.end method

.method public onSupportInvalidateOptionsMenu()V
    .registers 1

    return-void
.end method
