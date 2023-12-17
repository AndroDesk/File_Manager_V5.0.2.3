.class public Lcom/android/fileexplorer/mirror/utils/MirrorToastManager;
.super Ljava/lang/Object;
.source "MirrorToastManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MirrorToastManager"

.field private static sLastToast:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/CharSequence;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/mirror/utils/MirrorToastManager;->lambda$show$0(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private static synthetic lambda$show$0(Landroid/content/Context;Ljava/lang/CharSequence;Z)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, p2}, Lcom/android/fileexplorer/mirror/utils/MirrorToastManager;->show(Landroid/content/Context;Ljava/lang/CharSequence;IZ)V

    .line 5
    return-void
.end method

.method public static show(Landroid/content/Context;IZ)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/mirror/utils/MirrorToastManager;->show(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private static show(Landroid/content/Context;Ljava/lang/CharSequence;IZ)V
    .registers 6

    .line 5
    :try_start_0
    sget-object v0, Lcom/android/fileexplorer/mirror/utils/MirrorToastManager;->sLastToast:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 6
    sget-object v0, Lcom/android/fileexplorer/mirror/utils/MirrorToastManager;->sLastToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 7
    :cond_15
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    const v0, 0x7f0d00ce

    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a0119

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/support/cardview/CardView;

    const v1, 0x7f0a0476

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p3, :cond_38

    const/high16 p3, -0x1000000

    goto :goto_39

    :cond_38
    const/4 p3, -0x1

    .line 11
    :goto_39
    invoke-virtual {v0, p3}, Lr/a;->setCardBackgroundColor(I)V

    .line 12
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p2, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 14
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 15
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/android/fileexplorer/mirror/utils/MirrorToastManager;->sLastToast:Ljava/lang/ref/WeakReference;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_64

    :catch_4d
    move-exception p0

    const-string p1, "showToastError: "

    .line 16
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MirrorToastManager"

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_64
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Z)V
    .registers 4

    .line 2
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0, p2}, Lcom/android/fileexplorer/mirror/utils/MirrorToastManager;->show(Landroid/content/Context;Ljava/lang/CharSequence;IZ)V

    goto :goto_13

    .line 4
    :cond_b
    new-instance v0, Lc2/a;

    invoke-direct {v0, p0, p1, p2}, Lc2/a;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    :goto_13
    return-void
.end method
