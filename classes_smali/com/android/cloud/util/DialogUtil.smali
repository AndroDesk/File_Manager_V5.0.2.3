.class public Lcom/android/cloud/util/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/cloud/util/a;

    invoke-direct {v1, p0}, Lcom/android/cloud/util/a;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method private static synthetic lambda$dismissIfAccountInvalid$0(Landroid/app/Dialog;Z)V
    .registers 3

    if-eqz p1, :cond_13

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cloud/CloudDriveManager;->checkAccountIfInvalid(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_13
    return-void
.end method
