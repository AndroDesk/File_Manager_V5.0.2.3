.class Landroid/support/v4/os/ResultReceiver$MyResultReceiver;
.super Landroid/support/v4/os/IResultReceiver$Stub;
.source "ResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyResultReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method public constructor <init>(Landroid/support/v4/os/ResultReceiver;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroid/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/support/v4/os/ResultReceiver;

    .line 3
    invoke-direct {p0}, Landroid/support/v4/os/IResultReceiver$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroid/support/v4/os/ResultReceiver$MyResultReceiver;->this$0:Landroid/support/v4/os/ResultReceiver;

    .line 3
    iget-object v1, v0, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    .line 5
    if-eqz v1, :cond_f

    .line 7
    new-instance v2, Landroid/support/v4/os/ResultReceiver$MyRunnable;

    .line 9
    invoke-direct {v2, v0, p1, p2}, Landroid/support/v4/os/ResultReceiver$MyRunnable;-><init>(Landroid/support/v4/os/ResultReceiver;ILandroid/os/Bundle;)V

    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    goto :goto_12

    .line 16
    :cond_f
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 19
    :goto_12
    return-void
.end method
