.class public abstract Lmiuix/os/AsyncTaskWithProgress;
.super Landroid/os/AsyncTask;
.source "AsyncTaskWithProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;,
        Lmiuix/os/AsyncTaskWithProgress$Listeners;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;",
        "Ljava/lang/Integer;",
        "TResult;>;"
    }
.end annotation


# static fields
.field private static final sAllTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCancelable:Z

.field private mCurrentProgress:I

.field private volatile mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mIndeterminate:Z

.field private final mListeners:Lmiuix/os/AsyncTaskWithProgress$Listeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>.",
            "Listeners;"
        }
    .end annotation
.end field

.field private mMaxProgress:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageId:I

.field private mProgressStyle:I

.field private mTheme:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lmiuix/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTheme:I

    .line 7
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitleId:I

    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    .line 12
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessageId:I

    .line 14
    iput-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    .line 16
    iput-boolean v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mCancelable:Z

    .line 18
    iput-boolean v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mIndeterminate:Z

    .line 20
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMaxProgress:I

    .line 22
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mProgressStyle:I

    .line 24
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mCurrentProgress:I

    .line 26
    iput-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 28
    new-instance v0, Lmiuix/os/AsyncTaskWithProgress$Listeners;

    .line 30
    invoke-direct {v0, p0, v1}, Lmiuix/os/AsyncTaskWithProgress$Listeners;-><init>(Lmiuix/os/AsyncTaskWithProgress;Lmiuix/os/AsyncTaskWithProgress$1;)V

    .line 33
    iput-object v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mListeners:Lmiuix/os/AsyncTaskWithProgress$Listeners;

    .line 35
    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 37
    return-void
.end method

.method public static synthetic access$100(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lmiuix/os/AsyncTaskWithProgress;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mProgressStyle:I

    .line 3
    return p0
.end method

.method public static synthetic access$102(Lmiuix/os/AsyncTaskWithProgress;Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 3
    return-object p1
.end method

.method public static synthetic access$1100(Lmiuix/os/AsyncTaskWithProgress;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mIndeterminate:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1200(Lmiuix/os/AsyncTaskWithProgress;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMaxProgress:I

    .line 3
    return p0
.end method

.method public static synthetic access$1300(Lmiuix/os/AsyncTaskWithProgress;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mCurrentProgress:I

    .line 3
    return p0
.end method

.method public static synthetic access$200()Ljava/util/HashMap;
    .registers 1

    .line 1
    sget-object v0, Lmiuix/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    .line 3
    return-object v0
.end method

.method public static synthetic access$300(Lmiuix/os/AsyncTaskWithProgress;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mCancelable:Z

    .line 3
    return p0
.end method

.method public static synthetic access$400(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$Listeners;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mListeners:Lmiuix/os/AsyncTaskWithProgress$Listeners;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/os/AsyncTaskWithProgress;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTheme:I

    .line 3
    return p0
.end method

.method public static synthetic access$600(Lmiuix/os/AsyncTaskWithProgress;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitleId:I

    .line 3
    return p0
.end method

.method public static synthetic access$700(Lmiuix/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/os/AsyncTaskWithProgress;)I
    .registers 1

    .line 1
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessageId:I

    .line 3
    return p0
.end method

.method public static synthetic access$900(Lmiuix/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    .line 3
    return-object p0
.end method

.method private dismissDialog()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 3
    const-string v1, "AsyncTaskWithProgress@"

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 26
    if-eqz v0, :cond_1e

    .line 28
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 31
    :cond_1e
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public onCancelled()V
    .registers 4

    .line 1
    sget-object v0, Lmiuix/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    .line 3
    const-string v1, "AsyncTaskWithProgress@"

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-direct {p0}, Lmiuix/os/AsyncTaskWithProgress;->dismissDialog()V

    .line 26
    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 1
    sget-object p1, Lmiuix/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    .line 3
    const-string v0, "AsyncTaskWithProgress@"

    .line 5
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-direct {p0}, Lmiuix/os/AsyncTaskWithProgress;->dismissDialog()V

    .line 26
    return-void
.end method

.method public onPreExecute()V
    .registers 4

    .line 1
    const-string v0, "AsyncTaskWithProgress@"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lmiuix/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    .line 20
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 25
    if-eqz v1, :cond_2e

    .line 27
    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->newInstance(Ljava/lang/String;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 33
    iget-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 35
    iget-boolean v2, p0, Lmiuix/os/AsyncTaskWithProgress;->mCancelable:Z

    .line 37
    invoke-virtual {v1, v2}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 40
    iget-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 42
    iget-object v2, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 44
    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 47
    :cond_2e
    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 3

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mCurrentProgress:I

    .line 4
    iget-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    if-eqz p1, :cond_17

    .line 5
    iget-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mCurrentProgress:I

    invoke-virtual {p1, v0}, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->setProgress(I)V

    :cond_17
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lmiuix/os/AsyncTaskWithProgress;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setCancelable(Z)Lmiuix/os/AsyncTaskWithProgress;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mCancelable:Z

    .line 3
    return-object p0
.end method

.method public setIndeterminate(Z)Lmiuix/os/AsyncTaskWithProgress;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mIndeterminate:Z

    .line 3
    return-object p0
.end method

.method public setMaxProgress(I)Lmiuix/os/AsyncTaskWithProgress;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mMaxProgress:I

    .line 3
    return-object p0
.end method

.method public setMessage(I)Lmiuix/os/AsyncTaskWithProgress;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessageId:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lmiuix/os/AsyncTaskWithProgress;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessageId:I

    .line 4
    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setProgressStyle(I)Lmiuix/os/AsyncTaskWithProgress;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mProgressStyle:I

    .line 3
    return-object p0
.end method

.method public setTheme(I)Lmiuix/os/AsyncTaskWithProgress;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mTheme:I

    .line 3
    return-object p0
.end method

.method public setTitle(I)Lmiuix/os/AsyncTaskWithProgress;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitleId:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lmiuix/os/AsyncTaskWithProgress;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitleId:I

    .line 4
    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
