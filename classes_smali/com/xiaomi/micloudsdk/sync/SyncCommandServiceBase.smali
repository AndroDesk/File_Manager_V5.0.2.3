.class public abstract Lcom/xiaomi/micloudsdk/sync/SyncCommandServiceBase;
.super Landroid/app/IntentService;
.source "SyncCommandServiceBase.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_SYNC_COMMAND:Ljava/lang/String; = "com.xiaomi.micloud.action.SYNC_COMMAND"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_COMMAND:Ljava/lang/String; = "key_command"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SyncCommandServiceBase"

.field public static final VALUE_COMMAND_CANCEL_SYNC:Ljava/lang/String; = "value_command_cancel_sync"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "SyncCommandServiceBase"

    .line 3
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public abstract handleCommand(Ljava/lang/String;)V
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_19

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.xiaomi.micloud.action.SYNC_COMMAND"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_19

    .line 16
    :cond_f
    const-string v0, "key_command"

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncCommandServiceBase;->handleCommand(Ljava/lang/String;)V

    .line 25
    return-void

    .line 26
    :cond_19
    :goto_19
    const-string p1, "SyncCommandServiceBase"

    .line 28
    const-string v0, "illegal arguments"

    .line 30
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method
