.class Lmiui/cloud/common/SwitchFileLogSender$3;
.super Landroid/content/BroadcastReceiver;
.source "SwitchFileLogSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cloud/common/SwitchFileLogSender;->registerShutdownListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiui/cloud/common/SwitchFileLogSender;


# direct methods
.method public constructor <init>(Lmiui/cloud/common/SwitchFileLogSender;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender$3;->this$0:Lmiui/cloud/common/SwitchFileLogSender;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender$3;->this$0:Lmiui/cloud/common/SwitchFileLogSender;

    .line 3
    invoke-static {p1}, Lmiui/cloud/common/SwitchFileLogSender;->access$100(Lmiui/cloud/common/SwitchFileLogSender;)V

    .line 6
    return-void
.end method
