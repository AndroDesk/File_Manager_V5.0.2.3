.class public Lmiuix/appcompat/app/AlertDialog;
.super Landroidx/appcompat/app/q;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;,
        Lmiuix/appcompat/app/AlertDialog$OnDialogLayoutReloadListener;,
        Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;,
        Lmiuix/appcompat/app/AlertDialog$Builder;
    }
.end annotation


# instance fields
.field public final mAlert:Lmiuix/appcompat/app/AlertController;

.field private mOnDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

.field private mOriginalExecutor:Ljava/lang/Object;

.field private mSpecialUiExecutor:Ln/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 2
    invoke-static {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/q;-><init>(Landroid/content/Context;I)V

    .line 3
    new-instance p2, Lmiuix/appcompat/app/d;

    invoke-direct {p2, p0}, Lmiuix/appcompat/app/d;-><init>(Lmiuix/appcompat/app/AlertDialog;)V

    iput-object p2, p0, Lmiuix/appcompat/app/AlertDialog;->mOnDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    .line 4
    new-instance p2, Lmiuix/appcompat/app/AlertController;

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->parseContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p2, p1, p0, v0}, Lmiuix/appcompat/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/q;Landroid/view/Window;)V

    iput-object p2, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 5

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 6
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 7
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public static synthetic b(Lmiuix/appcompat/app/AlertDialog;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertDialog;->lambda$new$0()V

    return-void
.end method

.method public static synthetic c(Lmiuix/appcompat/app/AlertDialog;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertDialog;->lambda$dismissWithAnimationExistDecorView$1()V

    return-void
.end method

.method private createSpecialUiTaskExecutor()Ln/c;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$1;

    .line 3
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$1;-><init>(Lmiuix/appcompat/app/AlertDialog;)V

    .line 6
    return-object v0
.end method

.method private isSystemSpecialUiThread()Z
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "android.ui"

    .line 11
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_33

    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    const-string v1, "android.imms"

    .line 27
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_33

    .line 33
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    const-string v1, "system_server"

    .line 43
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_31

    .line 49
    goto :goto_33

    .line 50
    :cond_31
    const/4 v0, 0x0

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    :goto_33
    const/4 v0, 0x1

    .line 53
    :goto_34
    return v0
.end method

.method private synthetic lambda$dismissWithAnimationExistDecorView$1()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mOnDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    .line 5
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertController;->dismiss(Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    .line 8
    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_19

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_19

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_19

    .line 23
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->realDismiss()V

    .line 26
    :cond_19
    return-void
.end method

.method private parseContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 4

    .line 1
    if-nez p1, :cond_7

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v0

    .line 12
    const-class v1, Landroid/view/ContextThemeWrapper;

    .line 14
    if-ne v0, v1, :cond_10

    .line 16
    goto :goto_14

    .line 17
    :cond_10
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 21
    :goto_14
    return-object p1
.end method

.method private processSpecialUiOnCreate()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    const-string v0, "MiuixDialog"

    .line 3
    :try_start_2
    const-class v1, Ln/a;

    .line 5
    invoke-static {}, Ln/a;->a()Ln/a;

    .line 8
    move-result-object v2

    .line 9
    const-string v3, "mDelegate"

    .line 11
    invoke-static {v1, v2, v3}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_12

    .line 17
    iput-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mOriginalExecutor:Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_12} :catch_50
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_12} :catch_3a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_12} :catch_24
    .catchall {:try_start_2 .. :try_end_12} :catchall_22

    .line 19
    :cond_12
    :goto_12
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertDialog;->createSpecialUiTaskExecutor()Ln/c;

    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mSpecialUiExecutor:Ln/c;

    .line 25
    invoke-static {}, Ln/a;->a()Ln/a;

    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mSpecialUiExecutor:Ln/c;

    .line 31
    invoke-virtual {v0, v1}, Ln/a;->b(Ln/c;)V

    .line 34
    goto :goto_66

    .line 35
    :catchall_22
    move-exception v0

    .line 36
    goto :goto_67

    .line 37
    :catch_24
    move-exception v1

    .line 38
    :try_start_25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v3, "onCreate() taskExecutor get failed InvocationTargetException "

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    goto :goto_12

    .line 59
    :catch_3a
    move-exception v1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const-string v3, "onCreate() taskExecutor get failed NoSuchMethodException "

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    goto :goto_12

    .line 81
    :catch_50
    move-exception v1

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v3, "onCreate() taskExecutor get failed IllegalAccessException "

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_25 .. :try_end_65} :catchall_22

    .line 102
    goto :goto_12

    .line 103
    :goto_66
    return-void

    .line 104
    :goto_67
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertDialog;->createSpecialUiTaskExecutor()Ln/c;

    .line 107
    move-result-object v1

    .line 108
    iput-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mSpecialUiExecutor:Ln/c;

    .line 110
    invoke-static {}, Ln/a;->a()Ln/a;

    .line 113
    move-result-object v1

    .line 114
    iget-object v2, p0, Lmiuix/appcompat/app/AlertDialog;->mSpecialUiExecutor:Ln/c;

    .line 116
    invoke-virtual {v1, v2}, Ln/a;->b(Ln/c;)V

    .line 119
    throw v0
.end method

.method private processSpecialUiOnStopAfterSuper()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mOriginalExecutor:Ljava/lang/Object;

    .line 3
    instance-of v0, v0, Ln/c;

    .line 5
    if-eqz v0, :cond_11

    .line 7
    invoke-static {}, Ln/a;->a()Ln/a;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mOriginalExecutor:Ljava/lang/Object;

    .line 13
    check-cast v1, Ln/c;

    .line 15
    invoke-virtual {v0, v1}, Ln/a;->b(Ln/c;)V

    .line 18
    :cond_11
    return-void
.end method

.method private processSpecialUiOnStopBeforeSuper()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    const-string v0, "MiuixDialog"

    .line 3
    :try_start_2
    const-class v1, Ln/a;

    .line 5
    invoke-static {}, Ln/a;->a()Ln/a;

    .line 8
    move-result-object v2

    .line 9
    const-string v3, "mDelegate"

    .line 11
    invoke-static {v1, v2, v3}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_e} :catch_78
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_e} :catch_54
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_e} :catch_30
    .catchall {:try_start_2 .. :try_end_e} :catchall_2e

    .line 15
    if-eqz v0, :cond_16

    .line 17
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mOriginalExecutor:Ljava/lang/Object;

    .line 19
    if-eq v0, v1, :cond_16

    .line 21
    iput-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mOriginalExecutor:Ljava/lang/Object;

    .line 23
    :cond_16
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mSpecialUiExecutor:Ln/c;

    .line 25
    if-ne v0, v1, :cond_24

    .line 27
    invoke-static {}, Ln/a;->a()Ln/a;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ln/a;->isMainThread()Z

    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_9c

    .line 37
    :cond_24
    :goto_24
    invoke-static {}, Ln/a;->a()Ln/a;

    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mSpecialUiExecutor:Ln/c;

    .line 43
    invoke-virtual {v0, v1}, Ln/a;->b(Ln/c;)V

    .line 46
    goto :goto_9c

    .line 47
    :catchall_2e
    move-exception v0

    .line 48
    goto :goto_9d

    .line 49
    :catch_30
    move-exception v1

    .line 50
    :try_start_31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    const-string v3, "onStop() taskExecutor get failed InvocationTargetException "

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_31 .. :try_end_45} :catchall_2e

    .line 70
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mSpecialUiExecutor:Ln/c;

    .line 72
    if-nez v0, :cond_24

    .line 74
    invoke-static {}, Ln/a;->a()Ln/a;

    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ln/a;->isMainThread()Z

    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_9c

    .line 84
    goto :goto_24

    .line 85
    :catch_54
    move-exception v1

    .line 86
    :try_start_55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    const-string v3, "onStop() taskExecutor get failed NoSuchMethodException "

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_55 .. :try_end_69} :catchall_2e

    .line 106
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mSpecialUiExecutor:Ln/c;

    .line 108
    if-nez v0, :cond_24

    .line 110
    invoke-static {}, Ln/a;->a()Ln/a;

    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ln/a;->isMainThread()Z

    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_9c

    .line 120
    goto :goto_24

    .line 121
    :catch_78
    move-exception v1

    .line 122
    :try_start_79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const-string v3, "onStop() taskExecutor get failed IllegalAccessException "

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v1

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_79 .. :try_end_8d} :catchall_2e

    .line 142
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mSpecialUiExecutor:Ln/c;

    .line 144
    if-nez v0, :cond_24

    .line 146
    invoke-static {}, Ln/a;->a()Ln/a;

    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ln/a;->isMainThread()Z

    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_9c

    .line 156
    goto :goto_24

    .line 157
    :cond_9c
    :goto_9c
    return-void

    .line 158
    :goto_9d
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mSpecialUiExecutor:Ln/c;

    .line 160
    if-nez v1, :cond_ab

    .line 162
    invoke-static {}, Ln/a;->a()Ln/a;

    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v1}, Ln/a;->isMainThread()Z

    .line 169
    move-result v1

    .line 170
    if-nez v1, :cond_b4

    .line 172
    :cond_ab
    invoke-static {}, Ln/a;->a()Ln/a;

    .line 175
    move-result-object v1

    .line 176
    iget-object v2, p0, Lmiuix/appcompat/app/AlertDialog;->mSpecialUiExecutor:Ln/c;

    .line 178
    invoke-virtual {v1, v2}, Ln/a;->b(Ln/c;)V

    .line 181
    :cond_b4
    throw v0
.end method

.method public static resolveDialogTheme(Landroid/content/Context;I)I
    .registers 4

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_8

    .line 8
    return p1

    .line 9
    :cond_8
    new-instance p1, Landroid/util/TypedValue;

    .line 11
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 17
    move-result-object p0

    .line 18
    sget v0, Lmiuix/appcompat/R$attr;->miuiAlertDialogTheme:I

    .line 20
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 23
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    .line 25
    return p0
.end method


# virtual methods
.method public addExtraButton(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;I)V
    .registers 7

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    new-instance v1, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Lmiuix/appcompat/app/AlertController$ButtonInfo;-><init>(Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;I)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertController;->addExtraButton(Lmiuix/appcompat/app/AlertController$ButtonInfo;)V

    return-void
.end method

.method public addExtraButton(Ljava/lang/CharSequence;ILandroid/os/Message;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    new-instance v1, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    invoke-direct {v1, p1, p2, p3}, Lmiuix/appcompat/app/AlertController$ButtonInfo;-><init>(Ljava/lang/CharSequence;ILandroid/os/Message;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertController;->addExtraButton(Lmiuix/appcompat/app/AlertController$ButtonInfo;)V

    return-void
.end method

.method public clearExtraButton()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->clearExtraButton()V

    .line 6
    return-void
.end method

.method public dismiss()V
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
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 11
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_24

    .line 17
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_20

    .line 23
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_20

    .line 29
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->dismissIfAttachedToWindow(Landroid/view/View;)V

    .line 32
    goto :goto_27

    .line 33
    :cond_20
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->dismissWithAnimationOrNot(Landroid/view/View;)V

    .line 36
    goto :goto_27

    .line 37
    :cond_24
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->dismissIfAttachedToWindow(Landroid/view/View;)V

    .line 40
    :goto_27
    return-void
.end method

.method public dismissIfAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 1
    if-eqz p1, :cond_9

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-super {p0}, Landroidx/appcompat/app/q;->dismiss()V

    .line 13
    return-void
.end method

.method public dismissWithAnimationExistDecorView(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 16
    move-result-object v1

    .line 17
    if-ne v0, v1, :cond_1a

    .line 19
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 21
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mOnDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    .line 23
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->dismiss(Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    .line 26
    goto :goto_23

    .line 27
    :cond_1a
    new-instance v0, Lmiuix/appcompat/app/a;

    .line 29
    const/4 v1, 0x3

    .line 30
    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/a;-><init>(Ljava/lang/Object;I)V

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    :goto_23
    return-void
.end method

.method public dismissWithAnimationOrNot(Landroid/view/View;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_10

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_c

    .line 9
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithAnimationExistDecorView(Landroid/view/View;)V

    .line 12
    goto :goto_13

    .line 13
    :cond_c
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->dismissIfAttachedToWindow(Landroid/view/View;)V

    .line 16
    goto :goto_13

    .line 17
    :cond_10
    invoke-super {p0}, Landroidx/appcompat/app/q;->dismiss()V

    .line 20
    :goto_13
    return-void
.end method

.method public dismissWithoutAnimation()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->realDismiss()V

    .line 19
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_a
    invoke-super {p0, p1}, Landroidx/appcompat/app/q;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public getAssociatedActivity()Landroid/app/Activity;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    :goto_8
    if-nez v0, :cond_21

    .line 11
    if-eqz v1, :cond_21

    .line 13
    instance-of v2, v1, Landroid/app/Activity;

    .line 15
    if-eqz v2, :cond_14

    .line 17
    move-object v0, v1

    .line 18
    check-cast v0, Landroid/app/Activity;

    .line 20
    goto :goto_8

    .line 21
    :cond_14
    instance-of v2, v1, Landroid/content/ContextWrapper;

    .line 23
    if-eqz v2, :cond_1f

    .line 25
    check-cast v1, Landroid/content/ContextWrapper;

    .line 27
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 30
    move-result-object v1

    .line 31
    goto :goto_8

    .line 32
    :cond_1f
    const/4 v1, 0x0

    .line 33
    goto :goto_8

    .line 34
    :cond_21
    return-object v0
.end method

.method public getButton(I)Landroid/widget/Button;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->getButton(I)Landroid/widget/Button;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->getListView()Landroid/widget/ListView;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->getMessageView()Landroid/widget/TextView;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->isChecked()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onAttachedToWindow()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1a

    .line 14
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 16
    iget-boolean v1, v1, Lmiuix/appcompat/app/AlertController;->mHapticFeedbackEnabled:Z

    .line 18
    if-eqz v1, :cond_1a

    .line 20
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ALERT:I

    .line 22
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    .line 24
    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;II)V

    .line 27
    :cond_1a
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 29
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->onAttachedToWindow()V

    .line 32
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertDialog;->isSystemSpecialUiThread()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertDialog;->processSpecialUiOnCreate()V

    .line 10
    :cond_9
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 12
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_17

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 20
    iget-boolean v0, v0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    .line 22
    if-nez v0, :cond_1f

    .line 24
    :cond_17
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 32
    :cond_1f
    invoke-super {p0, p1}, Landroidx/appcompat/app/q;->onCreate(Landroid/os/Bundle;)V

    .line 35
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 37
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->installContent(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 6
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->onDetachedFromWindow()V

    .line 9
    return-void
.end method

.method public onLayoutReload()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/activity/g;->onStart()V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 6
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->onStart()V

    .line 9
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertDialog;->isSystemSpecialUiThread()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertDialog;->processSpecialUiOnStopBeforeSuper()V

    .line 10
    :cond_9
    invoke-super {p0}, Landroidx/appcompat/app/q;->onStop()V

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 15
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->onStop()V

    .line 18
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertDialog;->isSystemSpecialUiThread()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertDialog;->processSpecialUiOnStopAfterSuper()V

    .line 27
    :cond_1a
    return-void
.end method

.method public realDismiss()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/q;->dismiss()V

    .line 4
    return-void
.end method

.method public replaceView(I)V
    .registers 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog;->replaceView(IZ)V

    return-void
.end method

.method public replaceView(IZ)V
    .registers 4

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AlertController;->replaceView(IZ)V

    return-void
.end method

.method public replaceView(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog;->replaceView(Landroid/view/View;Z)V

    return-void
.end method

.method public replaceView(Landroid/view/View;Z)V
    .registers 4

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AlertController;->replaceView(Landroid/view/View;Z)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lmiuix/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lmiuix/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setCancelable(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setCancelable(Z)V

    .line 9
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setCanceledOnTouchOutside(Z)V

    .line 9
    return-void
.end method

.method public setCustomPanelSize(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setCustomPanelSize(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public setEnableEnterAnim(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setEnableEnterAnim(Z)V

    .line 6
    return-void
.end method

.method public setEnableImmersive(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setEnableImmersive(Z)V

    .line 6
    return-void
.end method

.method public setHapticFeedbackEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController;->mHapticFeedbackEnabled:Z

    .line 5
    return-void
.end method

.method public setIcon(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconAttribute(I)V
    .registers 5

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 18
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 20
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 22
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setIcon(I)V

    .line 25
    return-void
.end method

.method public setIconSize(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/AlertController;->setIconSize(II)V

    .line 6
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public setNonImmersiveDialogHeight(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setNonImmersiveDialogHeight(I)V

    .line 6
    return-void
.end method

.method public setOnLayoutReloadListener(Lmiuix/appcompat/app/AlertDialog$OnDialogLayoutReloadListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setLayoutReloadListener(Lmiuix/appcompat/app/AlertDialog$OnDialogLayoutReloadListener;)V

    .line 6
    return-void
.end method

.method public setOnShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    .line 6
    return-void
.end method

.method public setPreferLandscape(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setPreferLandscape(Z)V

    .line 6
    return-void
.end method

.method public setRelayoutWhenSwitchToLandscape(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setPreferLandscape(Z)V

    .line 6
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/q;->setTitle(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 9
    return-void
.end method

.method public setUseSmallIcon(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setUseSmallIcon(Z)V

    .line 6
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertController;->setView(Landroid/view/View;)V

    .line 6
    return-void
.end method
