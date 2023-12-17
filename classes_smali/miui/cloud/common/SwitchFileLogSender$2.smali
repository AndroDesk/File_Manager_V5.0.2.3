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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiui/cloud/common/SwitchFileLogSender;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender$2;->this$0:Lmiui/cloud/common/SwitchFileLogSender;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender$2;->this$0:Lmiui/cloud/common/SwitchFileLogSender;

    invoke-static {p1}, Lmiui/cloud/common/SwitchFileLogSender;->access$000(Lmiui/cloud/common/SwitchFileLogSender;)V

    return-void
.end method
