.class Lcom/micloud/midrive/session/helper/SyncSessionHelper$1;
.super Ljava/lang/Object;
.source "SyncSessionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/session/helper/SyncSessionHelper;->postNotifySyncOrStartSession(Landroid/content/Context;Landroid/accounts/Account;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$account:Landroid/accounts/Account;

.field public final synthetic val$atOnce:Z

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(ZLandroid/content/Context;Landroid/accounts/Account;)V
    .registers 4

    .line 1
    iput-boolean p1, p0, Lcom/micloud/midrive/session/helper/SyncSessionHelper$1;->val$atOnce:Z

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/session/helper/SyncSessionHelper$1;->val$context:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/micloud/midrive/session/helper/SyncSessionHelper$1;->val$account:Landroid/accounts/Account;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/session/helper/SyncSessionHelper$1;->val$atOnce:Z

    .line 3
    if-eqz v0, :cond_c

    .line 5
    iget-object v0, p0, Lcom/micloud/midrive/session/helper/SyncSessionHelper$1;->val$context:Landroid/content/Context;

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/session/helper/SyncSessionHelper$1;->val$account:Landroid/accounts/Account;

    .line 9
    invoke-static {v0, v1}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionAtOnce(Landroid/content/Context;Landroid/accounts/Account;)Lcom/micloud/midrive/session/SyncSession;

    .line 12
    goto :goto_11

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/micloud/midrive/session/helper/SyncSessionHelper$1;->val$context:Landroid/content/Context;

    .line 15
    invoke-static {v0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionLate(Landroid/content/Context;)V

    .line 18
    :goto_11
    return-void
.end method
