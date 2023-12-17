.class Lmiui/cloud/common/SwitchFileLogSender$2;
.super Landroid/os/FileObserver;
.source "SwitchFileLogSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cloud/common/SwitchFileLogSender;->prepareLogFileLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiui/cloud/common/SwitchFileLogSender;


# direct methods
.method public constructor <init>(Lmiui/cloud/common/SwitchFileLogSender;Ljava/lang/String;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender$2;->this$0:Lmiui/cloud/common/SwitchFileLogSender;

    .line 3
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 6
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender$2;->this$0:Lmiui/cloud/common/SwitchFileLogSender;

    .line 3
    invoke-static {p1}, Lmiui/cloud/common/SwitchFileLogSender;->access$000(Lmiui/cloud/common/SwitchFileLogSender;)V

    .line 6
    return-void
.end method
