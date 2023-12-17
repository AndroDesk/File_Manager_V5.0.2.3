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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ZLandroid/content/Context;Landroid/accounts/Account;)V
    .registers 4

    iput-boolean p1, p0, Lcom/micloud/midrive/session/helper/SyncSessionHelper$1;->val$atOnce:Z

    iput-object p2, p0, Lcom/micloud/midrive/session/helper/SyncSessionHelper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/micloud/midrive/session/helper/SyncSessionHelper$1;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-boolean v0, p0, Lcom/micloud/midrive/session/helper/SyncSessionHelper$1;->val$atOnce:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/micloud/midrive/session/helper/SyncSessionHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/micloud/midrive/session/helper/SyncSessionHelper$1;->val$account:Landroid/accounts/Account;

    invoke-static {v0, v1}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionAtOnce(Landroid/content/Context;Landroid/accounts/Account;)Lcom/micloud/midrive/session/SyncSession;

    goto :goto_11

    :cond_c
    iget-object v0, p0, Lcom/micloud/midrive/session/helper/SyncSessionHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionLate(Landroid/content/Context;)V

    :goto_11
    return-void
.end method
