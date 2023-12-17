.class public final Landroidx/activity/ComponentActivity$b;
.super Landroidx/activity/result/e;
.source "ComponentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic i:Landroidx/activity/ComponentActivity;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/activity/ComponentActivity$b;->i:Landroidx/activity/ComponentActivity;

    .line 3
    invoke-direct {p0}, Landroidx/activity/result/e;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final b(ILg/a;Ljava/lang/Object;)V
    .registers 12

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity$b;->i:Landroidx/activity/ComponentActivity;

    .line 3
    invoke-virtual {p2, v0, p3}, Lg/a;->b(Landroidx/activity/ComponentActivity;Ljava/lang/Object;)Lg/a$a;

    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_1a

    .line 9
    new-instance p2, Landroid/os/Handler;

    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    move-result-object p3

    .line 15
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    new-instance p3, Landroidx/activity/e;

    .line 20
    invoke-direct {p3, p0, p1, v1}, Landroidx/activity/e;-><init>(Landroidx/activity/ComponentActivity$b;ILg/a$a;)V

    .line 23
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    return-void

    .line 27
    :cond_1a
    invoke-virtual {p2, v0, p3}, Lg/a;->a(Landroidx/activity/ComponentActivity;Ljava/lang/Object;)Landroid/content/Intent;

    .line 30
    move-result-object p2

    .line 31
    const/4 p3, 0x0

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_36

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_36

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 55
    :cond_36
    const-string v1, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 57
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_45

    .line 63
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 66
    move-result-object p3

    .line 67
    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 70
    :cond_45
    move-object v7, p3

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 74
    move-result-object p3

    .line 75
    const-string v1, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    .line 77
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result p3

    .line 81
    if-eqz p3, :cond_61

    .line 83
    const-string p3, "androidx.activity.result.contract.extra.PERMISSIONS"

    .line 85
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 88
    move-result-object p2

    .line 89
    if-nez p2, :cond_5d

    .line 91
    const/4 p2, 0x0

    .line 92
    new-array p2, p2, [Ljava/lang/String;

    .line 94
    :cond_5d
    invoke-static {v0, p2, p1}, Ld0/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 97
    goto :goto_9d

    .line 98
    :cond_61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 101
    move-result-object p3

    .line 102
    const-string v1, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 104
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result p3

    .line 108
    if-eqz p3, :cond_98

    .line 110
    const-string p3, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    .line 112
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 115
    move-result-object p2

    .line 116
    check-cast p2, Landroidx/activity/result/IntentSenderRequest;

    .line 118
    :try_start_75
    iget-object v1, p2, Landroidx/activity/result/IntentSenderRequest;->a:Landroid/content/IntentSender;

    .line 120
    iget-object v3, p2, Landroidx/activity/result/IntentSenderRequest;->b:Landroid/content/Intent;

    .line 122
    iget v4, p2, Landroidx/activity/result/IntentSenderRequest;->c:I

    .line 124
    iget v5, p2, Landroidx/activity/result/IntentSenderRequest;->d:I

    .line 126
    const/4 v6, 0x0

    .line 127
    sget p2, Ld0/a;->a:I

    .line 129
    move v2, p1

    .line 130
    invoke-static/range {v0 .. v7}, Ld0/a$a;->c(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_84
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_75 .. :try_end_84} :catch_85

    .line 133
    goto :goto_9d

    .line 134
    :catch_85
    move-exception p2

    .line 135
    new-instance p3, Landroid/os/Handler;

    .line 137
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 140
    move-result-object v0

    .line 141
    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 144
    new-instance v0, Landroidx/activity/f;

    .line 146
    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/f;-><init>(Landroidx/activity/ComponentActivity$b;ILandroid/content/IntentSender$SendIntentException;)V

    .line 149
    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    goto :goto_9d

    .line 153
    :cond_98
    sget p3, Ld0/a;->a:I

    .line 155
    invoke-static {v0, p2, p1, v7}, Ld0/a$a;->b(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 158
    :goto_9d
    return-void
.end method
