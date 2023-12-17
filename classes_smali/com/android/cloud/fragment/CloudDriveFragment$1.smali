.class Lcom/android/cloud/fragment/CloudDriveFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "CloudDriveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/fragment/CloudDriveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/cloud/fragment/CloudDriveFragment;


# direct methods
.method public constructor <init>(Lcom/android/cloud/fragment/CloudDriveFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$1;->this$0:Lcom/android/cloud/fragment/CloudDriveFragment;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1
    const/4 p1, 0x2

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    const/4 v0, 0x0

    .line 5
    const-string v1, "CloudDriveFragment"

    .line 7
    aput-object v1, p1, v0

    .line 9
    const-string v0, "broadcast action =  "

    .line 11
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x1

    .line 27
    aput-object v0, p1, v1

    .line 29
    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    const-string p2, "action_open_cloud_drive"

    .line 38
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_35

    .line 44
    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$1;->this$0:Lcom/android/cloud/fragment/CloudDriveFragment;

    .line 46
    invoke-static {p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->access$000(Lcom/android/cloud/fragment/CloudDriveFragment;)V

    .line 49
    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$1;->this$0:Lcom/android/cloud/fragment/CloudDriveFragment;

    .line 51
    invoke-static {p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->access$100(Lcom/android/cloud/fragment/CloudDriveFragment;)V

    .line 54
    :cond_35
    return-void
.end method
