.class public Lcom/android/fileexplorer/util/ToastManager;
.super Ljava/lang/Object;
.source "ToastManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ToastManager"

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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/CharSequence;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static show(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/String;)V

    return-void
.end method

.method private static show(Ljava/lang/CharSequence;I)V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/android/fileexplorer/util/ToastManager;->sLastToast:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/fileexplorer/util/ToastManager;->sLastToast:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_15
    invoke-static {}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->getTopActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_1c

    goto :goto_20

    :cond_1c
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    :goto_20
    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/android/fileexplorer/util/ToastManager;->sLastToast:Ljava/lang/ref/WeakReference;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_46

    :catch_2f
    move-exception p0

    const-string p1, "showToastError: "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ToastManager"

    invoke-static {p1, p0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_46
    return-void
.end method

.method public static show(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/CharSequence;I)V

    goto :goto_13

    :cond_b
    new-instance v0, Lcom/android/fileexplorer/util/ToastManager$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/util/ToastManager$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->doAction(Ljava/lang/Runnable;)V

    :goto_13
    return-void
.end method

.method public static showLong(I)V
    .registers 2

    invoke-static {p0}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showLong(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/fileexplorer/util/ToastManager;->show(Ljava/lang/CharSequence;I)V

    return-void
.end method
