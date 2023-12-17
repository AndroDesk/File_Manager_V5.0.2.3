.class public Lcom/android/cloud/util/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Dialog;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/cloud/util/DialogUtil;->lambda$dismissIfAccountInvalid$0(Landroid/app/Dialog;Z)V

    return-void
.end method

.method public static dismissIfAccountInvalid(Landroid/app/Dialog;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/android/cloud/util/a;

    .line 15
    invoke-direct {v1, p0}, Lcom/android/cloud/util/a;-><init>(Landroid/app/Dialog;)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 21
    return-void
.end method

.method private static synthetic lambda$dismissIfAccountInvalid$0(Landroid/app/Dialog;Z)V
    .registers 3

    .line 1
    if-eqz p1, :cond_13

    .line 3
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/android/cloud/CloudDriveManager;->checkAccountIfInvalid(Landroid/content/Context;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_13

    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 20
    :cond_13
    return-void
.end method
