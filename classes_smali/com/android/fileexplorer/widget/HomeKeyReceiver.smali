.class public Lcom/android/fileexplorer/widget/HomeKeyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeKeyReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeKeyReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2b

    .line 13
    const-string v0, "reason"

    .line 15
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_2b

    .line 21
    const-string v0, "homekey"

    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_26

    .line 29
    instance-of p2, p1, Landroid/app/Activity;

    .line 31
    if-eqz p2, :cond_2b

    .line 33
    check-cast p1, Landroid/app/Activity;

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 38
    goto :goto_2b

    .line 39
    :cond_26
    const-string p1, "recentapps"

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    :cond_2b
    :goto_2b
    return-void
.end method
