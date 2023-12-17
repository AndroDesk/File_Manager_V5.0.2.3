.class public Lcom/android/cloud/util/ToastOnceUtils;
.super Ljava/lang/Object;
.source "ToastOnceUtils.java"


# static fields
.field private static volatile sToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static setToastTextAndDuration(Ljava/lang/CharSequence;I)V
    .registers 3

    .line 1
    sget-object v0, Lcom/android/cloud/util/ToastOnceUtils;->sToast:Landroid/widget/Toast;

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 6
    sget-object p0, Lcom/android/cloud/util/ToastOnceUtils;->sToast:Landroid/widget/Toast;

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 11
    return-void
.end method

.method private static showInner(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/cloud/util/ToastOnceUtils;->sToast:Landroid/widget/Toast;

    .line 3
    if-nez v0, :cond_1e

    .line 5
    const-class v0, Lcom/android/cloud/util/ToastOnceUtils;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/android/cloud/util/ToastOnceUtils;->sToast:Landroid/widget/Toast;

    .line 10
    if-nez v1, :cond_16

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 19
    move-result-object p0

    .line 20
    sput-object p0, Lcom/android/cloud/util/ToastOnceUtils;->sToast:Landroid/widget/Toast;

    .line 22
    goto :goto_19

    .line 23
    :cond_16
    invoke-static {p1, p2}, Lcom/android/cloud/util/ToastOnceUtils;->setToastTextAndDuration(Ljava/lang/CharSequence;I)V

    .line 26
    :goto_19
    monitor-exit v0

    .line 27
    goto :goto_21

    .line 28
    :catchall_1b
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    .line 30
    throw p0

    .line 31
    :cond_1e
    invoke-static {p1, p2}, Lcom/android/cloud/util/ToastOnceUtils;->setToastTextAndDuration(Ljava/lang/CharSequence;I)V

    .line 34
    :goto_21
    sget-object p0, Lcom/android/cloud/util/ToastOnceUtils;->sToast:Landroid/widget/Toast;

    .line 36
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 39
    return-void
.end method

.method public static showLong(Landroid/content/Context;I)V
    .registers 3

    .line 1
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

    .line 2
    invoke-static {p0, p1, v0}, Lcom/android/cloud/util/ToastOnceUtils;->showInner(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showShort(Landroid/content/Context;I)V
    .registers 3

    .line 1
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

    .line 2
    invoke-static {p0, p1, v0}, Lcom/android/cloud/util/ToastOnceUtils;->showInner(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method
