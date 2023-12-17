.class Lmiuix/os/AsyncTaskWithProgress$Listeners;
.super Ljava/lang/Object;
.source "AsyncTaskWithProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/os/AsyncTaskWithProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Listeners"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/os/AsyncTaskWithProgress;


# direct methods
.method private constructor <init>(Lmiuix/os/AsyncTaskWithProgress;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress$Listeners;->this$0:Lmiuix/os/AsyncTaskWithProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/os/AsyncTaskWithProgress;Lmiuix/os/AsyncTaskWithProgress$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/os/AsyncTaskWithProgress$Listeners;-><init>(Lmiuix/os/AsyncTaskWithProgress;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    const/4 v0, -0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lmiuix/os/AsyncTaskWithProgress$Listeners;->onClick(Landroid/content/DialogInterface;I)V

    .line 5
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$Listeners;->this$0:Lmiuix/os/AsyncTaskWithProgress;

    .line 3
    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$100(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1f

    .line 9
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress$Listeners;->this$0:Lmiuix/os/AsyncTaskWithProgress;

    .line 11
    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress;->access$100(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1f

    .line 21
    if-ne p1, v0, :cond_1f

    .line 23
    const/4 p1, -0x2

    .line 24
    if-ne p2, p1, :cond_1f

    .line 26
    iget-object p1, p0, Lmiuix/os/AsyncTaskWithProgress$Listeners;->this$0:Lmiuix/os/AsyncTaskWithProgress;

    .line 28
    const/4 p2, 0x1

    .line 29
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 32
    :cond_1f
    return-void
.end method
