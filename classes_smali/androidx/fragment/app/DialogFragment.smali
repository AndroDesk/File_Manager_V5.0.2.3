.class public Landroidx/fragment/app/DialogFragment;
.super Landroidx/fragment/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_INTERNAL_DIALOG_SHOWING:Ljava/lang/String; = "android:dialogShowing"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field private mBackStackId:I

.field private mCancelable:Z

.field private mCreatingDialog:Z

.field private mDialog:Landroid/app/Dialog;

.field private mDialogCreated:Z

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Landroidx/lifecycle/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/r<",
            "Landroidx/lifecycle/m;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mShownByMe:Z

.field private mShowsDialog:Z

.field private mStyle:I

.field private mTheme:I

.field private mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Landroidx/fragment/app/DialogFragment$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$a;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissRunnable:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Landroidx/fragment/app/DialogFragment$b;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$b;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 4
    new-instance v0, Landroidx/fragment/app/DialogFragment$c;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$c;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    .line 6
    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    .line 8
    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    .line 10
    new-instance v1, Landroidx/fragment/app/DialogFragment$d;

    invoke-direct {v1, p0}, Landroidx/fragment/app/DialogFragment$d;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v1, p0, Landroidx/fragment/app/DialogFragment;->mObserver:Landroidx/lifecycle/r;

    .line 11
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 12
    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 13
    new-instance p1, Landroidx/fragment/app/DialogFragment$a;

    invoke-direct {p1, p0}, Landroidx/fragment/app/DialogFragment$a;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDismissRunnable:Ljava/lang/Runnable;

    .line 14
    new-instance p1, Landroidx/fragment/app/DialogFragment$b;

    invoke-direct {p1, p0}, Landroidx/fragment/app/DialogFragment$b;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object p1, p0, Landroidx/fragment/app/DialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 15
    new-instance p1, Landroidx/fragment/app/DialogFragment$c;

    invoke-direct {p1, p0}, Landroidx/fragment/app/DialogFragment$c;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object p1, p0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    .line 17
    iput p1, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    .line 19
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    .line 21
    new-instance v0, Landroidx/fragment/app/DialogFragment$d;

    invoke-direct {v0, p0}, Landroidx/fragment/app/DialogFragment$d;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mObserver:Landroidx/lifecycle/r;

    .line 22
    iput-boolean p1, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    return-void
.end method

.method public static synthetic access$000(Landroidx/fragment/app/DialogFragment;)Landroid/app/Dialog;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Landroidx/fragment/app/DialogFragment;)Landroid/content/DialogInterface$OnDismissListener;
    .registers 1

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Landroidx/fragment/app/DialogFragment;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 3
    return p0
.end method

.method private dismissInternal(ZZZ)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    .line 12
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_33

    .line 17
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 20
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 22
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 25
    if-nez p2, :cond_33

    .line 27
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 30
    move-result-object p2

    .line 31
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mHandler:Landroid/os/Handler;

    .line 33
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 36
    move-result-object v1

    .line 37
    if-ne p2, v1, :cond_2c

    .line 39
    iget-object p2, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 41
    invoke-virtual {p0, p2}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 44
    goto :goto_33

    .line 45
    :cond_2c
    iget-object p2, p0, Landroidx/fragment/app/DialogFragment;->mHandler:Landroid/os/Handler;

    .line 47
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDismissRunnable:Ljava/lang/Runnable;

    .line 49
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    :cond_33
    :goto_33
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    .line 54
    iget p2, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    .line 56
    if-ltz p2, :cond_63

    .line 58
    if-eqz p3, :cond_56

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 63
    move-result-object p1

    .line 64
    iget p2, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    .line 66
    if-ltz p2, :cond_47

    .line 68
    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/FragmentManager;->V(II)Z

    .line 71
    goto :goto_5f

    .line 72
    :cond_47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 77
    const-string p3, "Bad id: "

    .line 79
    invoke-static {p3, p2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 82
    move-result-object p2

    .line 83
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p1

    .line 87
    :cond_56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 90
    move-result-object p2

    .line 91
    iget p3, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    .line 93
    invoke-virtual {p2, p3, p1}, Landroidx/fragment/app/FragmentManager;->T(IZ)V

    .line 96
    :goto_5f
    const/4 p1, -0x1

    .line 97
    iput p1, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    .line 99
    goto :goto_7f

    .line 100
    :cond_63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 103
    move-result-object p2

    .line 104
    invoke-static {p2, p2}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 107
    move-result-object p2

    .line 108
    iput-boolean v0, p2, Landroidx/fragment/app/b0;->r:Z

    .line 110
    invoke-virtual {p2, p0}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 113
    if-eqz p3, :cond_76

    .line 115
    invoke-virtual {p2}, Landroidx/fragment/app/a;->r()V

    .line 118
    goto :goto_7f

    .line 119
    :cond_76
    if-eqz p1, :cond_7c

    .line 121
    invoke-virtual {p2}, Landroidx/fragment/app/a;->d()I

    .line 124
    goto :goto_7f

    .line 125
    :cond_7c
    invoke-virtual {p2}, Landroidx/fragment/app/a;->p()I

    .line 128
    :goto_7f
    return-void
.end method

.method private prepareDialog(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    .line 8
    if-nez v0, :cond_4d

    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    :try_start_b
    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mCreatingDialog:Z

    .line 14
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 20
    iget-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 22
    if-eqz v2, :cond_43

    .line 24
    iget v2, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    .line 26
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 32
    move-result-object p1

    .line 33
    instance-of v2, p1, Landroid/app/Activity;

    .line 35
    if-eqz v2, :cond_2b

    .line 37
    iget-object v2, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 39
    check-cast p1, Landroid/app/Activity;

    .line 41
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 44
    :cond_2b
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 46
    iget-boolean v2, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    .line 48
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 51
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 53
    iget-object v2, p0, Landroidx/fragment/app/DialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 55
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 58
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 60
    iget-object v2, p0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 62
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 65
    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    .line 67
    goto :goto_46

    .line 68
    :cond_43
    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;
    :try_end_46
    .catchall {:try_start_b .. :try_end_46} :catchall_49

    .line 71
    :goto_46
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCreatingDialog:Z

    .line 73
    goto :goto_4d

    .line 74
    :catchall_49
    move-exception p1

    .line 75
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCreatingDialog:Z

    .line 77
    throw p1

    .line 78
    :cond_4d
    :goto_4d
    return-void
.end method


# virtual methods
.method public createFragmentContainer()Landroidx/fragment/app/n;
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->createFragmentContainer()Landroidx/fragment/app/n;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroidx/fragment/app/DialogFragment$e;

    .line 7
    invoke-direct {v1, p0, v0}, Landroidx/fragment/app/DialogFragment$e;-><init>(Landroidx/fragment/app/DialogFragment;Landroidx/fragment/app/n;)V

    .line 10
    return-object v1
.end method

.method public dismiss()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0, v0}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZZ)V

    .line 5
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1, v1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZZ)V

    .line 6
    return-void
.end method

.method public dismissNow()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v0, v1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZZ)V

    .line 6
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 3
    return-object v0
.end method

.method public getShowsDialog()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 3
    return v0
.end method

.method public getTheme()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 3
    return v0
.end method

.method public isCancelable()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    .line 3
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mObserver:Landroidx/lifecycle/r;

    .line 10
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->f(Landroidx/lifecycle/r;)V

    .line 13
    iget-boolean p1, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    .line 15
    if-nez p1, :cond_13

    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 20
    :cond_13
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/fragment/app/DialogFragment;->mHandler:Landroid/os/Handler;

    .line 11
    iget v0, p0, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v0, :cond_12

    .line 17
    move v0, v1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v0, v2

    .line 20
    :goto_13
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 22
    if-eqz p1, :cond_42

    .line 24
    const-string v0, "android:style"

    .line 26
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 29
    move-result v0

    .line 30
    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    .line 32
    const-string v0, "android:theme"

    .line 34
    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 37
    move-result v0

    .line 38
    iput v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 40
    const-string v0, "android:cancelable"

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 45
    move-result v0

    .line 46
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    .line 48
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 50
    const-string v1, "android:showsDialog"

    .line 52
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 55
    move-result v0

    .line 56
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 58
    const/4 v0, -0x1

    .line 59
    const-string v1, "android:backStackId"

    .line 61
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 64
    move-result p1

    .line 65
    iput p1, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    .line 67
    :cond_42
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result p1

    .line 6
    if-eqz p1, :cond_1d

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v0, "onCreateDialog called for DialogFragment "

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    const-string v0, "FragmentManager"

    .line 27
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_1d
    new-instance p1, Landroidx/activity/g;

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    .line 39
    move-result v1

    .line 40
    invoke-direct {p1, v0, v1}, Landroidx/activity/g;-><init>(Landroid/content/Context;I)V

    .line 43
    return-object p1
.end method

.method public onDestroyView()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 6
    if-eqz v0, :cond_21

    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 15
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 17
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 20
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 22
    if-nez v0, :cond_1c

    .line 24
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 26
    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 29
    :cond_1c
    iput-object v1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    .line 34
    :cond_21
    return-void
.end method

.method public onDetach()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 4
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    .line 6
    if-nez v0, :cond_e

    .line 8
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 10
    if-nez v0, :cond_e

    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 15
    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Landroidx/fragment/app/DialogFragment;->mObserver:Landroidx/lifecycle/r;

    .line 21
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/r;)V

    .line 24
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    .line 3
    if-nez p1, :cond_26

    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-static {p1}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_21

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v0, "onDismiss called for DialogFragment "

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    const-string v0, "FragmentManager"

    .line 31
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_21
    const/4 p1, 0x0

    .line 35
    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, v0, v0, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZZ)V

    .line 39
    :cond_26
    return-void
.end method

.method onFindViewById(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 7
    const/4 v2, 0x2

    .line 8
    const-string v3, "FragmentManager"

    .line 10
    if-eqz v1, :cond_3f

    .line 12
    iget-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mCreatingDialog:Z

    .line 14
    if-eqz v1, :cond_10

    .line 16
    goto :goto_3f

    .line 17
    :cond_10
    invoke-direct {p0, p1}, Landroidx/fragment/app/DialogFragment;->prepareDialog(Landroid/os/Bundle;)V

    .line 20
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_32

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v1, "get layout inflater for DialogFragment "

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, " from dialog context"

    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_32
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 53
    if-eqz p1, :cond_3e

    .line 55
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 62
    move-result-object v0

    .line 63
    :cond_3e
    return-object v0

    .line 64
    :cond_3f
    :goto_3f
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_65

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    const-string v1, "getting layout inflater for DialogFragment "

    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    iget-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 89
    if-nez v1, :cond_60

    .line 91
    const-string v1, "mShowsDialog = false: "

    .line 93
    invoke-static {v1, p1, v3}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    goto :goto_65

    .line 97
    :cond_60
    const-string v1, "mCreatingDialog = true: "

    .line 99
    invoke-static {v1, p1, v3}, La/a;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_65
    :goto_65
    return-object v0
.end method

.method onHasView()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDialogCreated:Z

    .line 3
    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 6
    if-eqz v0, :cond_16

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const-string v2, "android:dialogShowing"

    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    const-string v1, "android:savedDialogState"

    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 23
    :cond_16
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    .line 25
    if-eqz v0, :cond_1f

    .line 27
    const-string v1, "android:style"

    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 32
    :cond_1f
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 34
    if-eqz v0, :cond_28

    .line 36
    const-string v1, "android:theme"

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 41
    :cond_28
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    .line 43
    if-nez v0, :cond_31

    .line 45
    const-string v1, "android:cancelable"

    .line 47
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    :cond_31
    iget-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 52
    if-nez v0, :cond_3a

    .line 54
    const-string v1, "android:showsDialog"

    .line 56
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    :cond_3a
    iget v0, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    .line 61
    const/4 v1, -0x1

    .line 62
    if-eq v0, v1, :cond_44

    .line 64
    const-string v1, "android:backStackId"

    .line 66
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    :cond_44
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 6
    if-eqz v0, :cond_26

    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 14
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    sget v1, Ly0/a;->view_tree_lifecycle_owner:I

    .line 26
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 29
    sget v1, Lz0/d;->view_tree_view_model_store_owner:I

    .line 31
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 34
    sget v1, Lc1/a;->view_tree_saved_state_registry_owner:I

    .line 36
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 39
    :cond_26
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 11
    :cond_a
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 6
    if-eqz v0, :cond_16

    .line 8
    if-eqz p1, :cond_16

    .line 10
    const-string v0, "android:savedDialogState"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_16

    .line 18
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 20
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 23
    :cond_16
    return-void
.end method

.method public performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 4
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 6
    if-nez p1, :cond_1a

    .line 8
    iget-object p1, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 10
    if-eqz p1, :cond_1a

    .line 12
    if-eqz p3, :cond_1a

    .line 14
    const-string p1, "android:savedDialogState"

    .line 16
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1a

    .line 22
    iget-object p2, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 24
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 27
    :cond_1a
    return-void
.end method

.method public final requireDialog()Landroid/app/Dialog;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object v0

    .line 8
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v2, "DialogFragment "

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, " does not have a Dialog."

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0
.end method

.method public setCancelable(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 10
    :cond_9
    return-void
.end method

.method public setShowsDialog(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/DialogFragment;->mShowsDialog:Z

    .line 3
    return-void
.end method

.method public setStyle(II)V
    .registers 6

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_2d

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v2, "Setting style and theme for DialogFragment "

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, " to "

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v2, ", "

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    const-string v2, "FragmentManager"

    .line 43
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_2d
    iput p1, p0, Landroidx/fragment/app/DialogFragment;->mStyle:I

    .line 48
    if-eq p1, v0, :cond_34

    .line 50
    const/4 v0, 0x3

    .line 51
    if-ne p1, v0, :cond_39

    .line 53
    :cond_34
    const p1, 0x1030059

    .line 56
    iput p1, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 58
    :cond_39
    if-eqz p2, :cond_3d

    .line 60
    iput p2, p0, Landroidx/fragment/app/DialogFragment;->mTheme:I

    .line 62
    :cond_3d
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_15

    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p2, v1, :cond_15

    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq p2, v1, :cond_a

    .line 10
    goto :goto_18

    .line 11
    :cond_a
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_15

    .line 17
    const/16 v1, 0x18

    .line 19
    invoke-virtual {p2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 22
    :cond_15
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 25
    :goto_18
    return-void
.end method

.method public show(Landroidx/fragment/app/b0;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    .line 12
    invoke-virtual {p1, v0, p0, p2, v1}, Landroidx/fragment/app/b0;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 13
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mViewDestroyed:Z

    .line 14
    check-cast p1, Landroidx/fragment/app/a;

    .line 15
    invoke-virtual {p1, v0}, Landroidx/fragment/app/a;->q(Z)I

    move-result p1

    .line 16
    iput p1, p0, Landroidx/fragment/app/DialogFragment;->mBackStackId:I

    return p1
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    .line 3
    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    move-result-object p1

    .line 4
    iput-boolean v1, p1, Landroidx/fragment/app/b0;->r:Z

    .line 5
    invoke-virtual {p1, v0, p0, p2, v1}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/a;->p()I

    return-void
.end method

.method public showNow(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    .line 7
    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 10
    move-result-object p1

    .line 11
    iput-boolean v1, p1, Landroidx/fragment/app/b0;->r:Z

    .line 13
    invoke-virtual {p1, v0, p0, p2, v1}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/a;->r()V

    .line 19
    return-void
.end method
