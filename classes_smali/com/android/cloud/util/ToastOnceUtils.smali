.class public Lcom/android/cloud/util/ToastOnceUtils;
.super Ljava/lang/Object;
.source "ToastOnceUtils.java"


# static fields
.field private static volatile sToast:Landroid/widget/Toast;


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

.method private static setToastTextAndDuration(Ljava/lang/CharSequence;I)V
    .registers 3

    sget-object v0, Lcom/android/cloud/util/ToastOnceUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/android/cloud/util/ToastOnceUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setDuration(I)V

    return-void
.end method

.method private static showInner(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .registers 5

    sget-object v0, Lcom/android/cloud/util/ToastOnceUtils;->sToast:Landroid/widget/Toast;

    if-nez v0, :cond_1e

    const-class v0, Lcom/android/cloud/util/ToastOnceUtils;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/cloud/util/ToastOnceUtils;->sToast:Landroid/widget/Toast;

    if-nez v1, :cond_16

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/android/cloud/util/ToastOnceUtils;->sToast:Landroid/widget/Toast;

    goto :goto_19

    :cond_16
    invoke-static {p1, p2}, Lcom/android/cloud/util/ToastOnceUtils;->setToastTextAndDuration(Ljava/lang/CharSequence;I)V

    :goto_19
    monitor-exit v0

    goto :goto_21

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw p0

    :cond_1e
    invoke-static {p1, p2}, Lcom/android/cloud/util/ToastOnceUtils;->setToastTextAndDuration(Ljava/lang/CharSequence;I)V

    :goto_21
    sget-object p0, Lcom/android/cloud/util/ToastOnceUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showLong(Landroid/content/Context;I)V
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/cloud/util/ToastOnceUtils;->showInner(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showLong(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/cloud/util/ToastOnceUtils;->showInner(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showShort(Landroid/content/Context;I)V
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/cloud/util/ToastOnceUtils;->showInner(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/cloud/util/ToastOnceUtils;->showInner(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method
