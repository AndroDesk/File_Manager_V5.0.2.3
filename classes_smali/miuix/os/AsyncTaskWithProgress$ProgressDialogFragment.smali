.class public Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AsyncTaskWithProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/os/AsyncTaskWithProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressDialogFragment"
.end annotation


# instance fields
.field private mTask:Lmiuix/os/AsyncTaskWithProgress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/os/AsyncTaskWithProgress<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 4
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 3
    invoke-direct {v0}, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;-><init>()V

    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 11
    const-string v2, "task"

    .line 13
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 19
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$300(Lmiuix/os/AsyncTaskWithProgress;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_13

    .line 11
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 13
    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$400(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$Listeners;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lmiuix/os/AsyncTaskWithProgress$Listeners;->onCancel(Landroid/content/DialogInterface;)V

    .line 20
    :cond_13
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 23
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {}, Lmiuix/os/AsyncTaskWithProgress;->access$200()Ljava/util/HashMap;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "task"

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lmiuix/os/AsyncTaskWithProgress;

    .line 24
    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 26
    if-nez p1, :cond_2d

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    new-instance v0, Landroidx/fragment/app/a;

    .line 37
    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 40
    invoke-virtual {v0, p0}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 43
    invoke-virtual {v0}, Landroidx/fragment/app/a;->p()I

    .line 46
    :cond_2d
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 3
    if-nez v0, :cond_9

    .line 5
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_9
    new-instance p1, Lmiuix/appcompat/app/ProgressDialog;

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 18
    invoke-static {v1}, Lmiuix/os/AsyncTaskWithProgress;->access$500(Lmiuix/os/AsyncTaskWithProgress;)I

    .line 21
    move-result v1

    .line 22
    invoke-direct {p1, v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 25
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 27
    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$600(Lmiuix/os/AsyncTaskWithProgress;)I

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2a

    .line 33
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 35
    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$600(Lmiuix/os/AsyncTaskWithProgress;)I

    .line 38
    move-result v0

    .line 39
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/q;->setTitle(I)V

    .line 42
    goto :goto_33

    .line 43
    :cond_2a
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 45
    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$700(Lmiuix/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    :goto_33
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 54
    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$800(Lmiuix/os/AsyncTaskWithProgress;)I

    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_4d

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 66
    invoke-static {v1}, Lmiuix/os/AsyncTaskWithProgress;->access$800(Lmiuix/os/AsyncTaskWithProgress;)I

    .line 69
    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 77
    goto :goto_56

    .line 78
    :cond_4d
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 80
    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$900(Lmiuix/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 87
    :goto_56
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 89
    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$1000(Lmiuix/os/AsyncTaskWithProgress;)I

    .line 92
    move-result v0

    .line 93
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setProgressStyle(I)V

    .line 96
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 98
    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$1100(Lmiuix/os/AsyncTaskWithProgress;)Z

    .line 101
    move-result v0

    .line 102
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminate(Z)V

    .line 105
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 107
    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$1100(Lmiuix/os/AsyncTaskWithProgress;)Z

    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_82

    .line 113
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 115
    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$1200(Lmiuix/os/AsyncTaskWithProgress;)I

    .line 118
    move-result v0

    .line 119
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMax(I)V

    .line 122
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 124
    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$1300(Lmiuix/os/AsyncTaskWithProgress;)I

    .line 127
    move-result v0

    .line 128
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    .line 131
    :cond_82
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 133
    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$300(Lmiuix/os/AsyncTaskWithProgress;)Z

    .line 136
    move-result v0

    .line 137
    const/4 v1, -0x2

    .line 138
    if-eqz v0, :cond_a3

    .line 140
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 143
    move-result-object v0

    .line 144
    const/high16 v2, 0x1040000

    .line 146
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 149
    move-result-object v0

    .line 150
    iget-object v2, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 152
    invoke-static {v2}, Lmiuix/os/AsyncTaskWithProgress;->access$400(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$Listeners;

    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {p1, v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 159
    const/4 v0, 0x1

    .line 160
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 163
    goto :goto_ab

    .line 164
    :cond_a3
    const/4 v0, 0x0

    .line 165
    invoke-virtual {p1, v1, v0, v0}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 168
    const/4 v0, 0x0

    .line 169
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 172
    :goto_ab
    return-object p1
.end method

.method public onStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 4
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-static {v0, p0}, Lmiuix/os/AsyncTaskWithProgress;->access$102(Lmiuix/os/AsyncTaskWithProgress;Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 11
    :cond_a
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->mTask:Lmiuix/os/AsyncTaskWithProgress;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lmiuix/os/AsyncTaskWithProgress;->access$102(Lmiuix/os/AsyncTaskWithProgress;Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 9
    :cond_8
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    .line 12
    return-void
.end method

.method public setProgress(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lmiuix/appcompat/app/ProgressDialog;

    .line 7
    if-eqz v1, :cond_d

    .line 9
    check-cast v0, Lmiuix/appcompat/app/ProgressDialog;

    .line 11
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    .line 14
    :cond_d
    return-void
.end method
