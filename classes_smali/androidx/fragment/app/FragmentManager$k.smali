.class public final Landroidx/fragment/app/FragmentManager$k;
.super Lg/a;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/a<",
        "Landroidx/activity/result/IntentSenderRequest;",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lg/a;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroidx/activity/ComponentActivity;Ljava/lang/Object;)Landroid/content/Intent;
    .registers 7

    .line 1
    check-cast p2, Landroidx/activity/result/IntentSenderRequest;

    .line 3
    new-instance p1, Landroid/content/Intent;

    .line 5
    const-string v0, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 7
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v0, p2, Landroidx/activity/result/IntentSenderRequest;->b:Landroid/content/Intent;

    .line 12
    if-eqz v0, :cond_31

    .line 14
    const-string v1, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_31

    .line 22
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 28
    const/4 v1, 0x0

    .line 29
    const-string v2, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_31

    .line 37
    iget-object v0, p2, Landroidx/activity/result/IntentSenderRequest;->a:Landroid/content/IntentSender;

    .line 39
    const/4 v1, 0x0

    .line 40
    iget v2, p2, Landroidx/activity/result/IntentSenderRequest;->d:I

    .line 42
    iget p2, p2, Landroidx/activity/result/IntentSenderRequest;->c:I

    .line 44
    new-instance v3, Landroidx/activity/result/IntentSenderRequest;

    .line 46
    invoke-direct {v3, v0, v1, p2, v2}, Landroidx/activity/result/IntentSenderRequest;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    .line 49
    move-object p2, v3

    .line 50
    :cond_31
    const-string v0, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    .line 52
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 55
    const/4 p2, 0x2

    .line 56
    invoke-static {p2}, Landroidx/fragment/app/FragmentManager;->M(I)Z

    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_53

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string v0, "CreateIntent created the following intent: "

    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p2

    .line 79
    const-string v0, "FragmentManager"

    .line 81
    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_53
    return-object p1
.end method

.method public final c(ILandroid/content/Intent;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Landroidx/activity/result/ActivityResult;

    .line 3
    invoke-direct {v0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    .line 6
    return-object v0
.end method
