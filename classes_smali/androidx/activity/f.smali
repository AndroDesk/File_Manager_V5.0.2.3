.class public final Landroidx/activity/f;
.super Ljava/lang/Object;
.source "ComponentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/IntentSender$SendIntentException;

.field public final synthetic c:Landroidx/activity/ComponentActivity$b;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity$b;ILandroid/content/IntentSender$SendIntentException;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/activity/f;->c:Landroidx/activity/ComponentActivity$b;

    .line 3
    iput p2, p0, Landroidx/activity/f;->a:I

    .line 5
    iput-object p3, p0, Landroidx/activity/f;->b:Landroid/content/IntentSender$SendIntentException;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/activity/f;->c:Landroidx/activity/ComponentActivity$b;

    .line 3
    iget v1, p0, Landroidx/activity/f;->a:I

    .line 5
    new-instance v2, Landroid/content/Intent;

    .line 7
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 10
    const-string v3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 12
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Landroidx/activity/f;->b:Landroid/content/IntentSender$SendIntentException;

    .line 18
    const-string v4, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    .line 20
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v0, v1, v3, v2}, Landroidx/activity/result/e;->a(IILandroid/content/Intent;)Z

    .line 28
    return-void
.end method
