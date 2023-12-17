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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/fragment/CloudDriveFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$1;->this$0:Lcom/android/cloud/fragment/CloudDriveFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "CloudDriveFragment"

    aput-object v1, p1, v0

    const-string v0, "broadcast action =  "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->logd([Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "action_open_cloud_drive"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$1;->this$0:Lcom/android/cloud/fragment/CloudDriveFragment;

    invoke-static {p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->access$000(Lcom/android/cloud/fragment/CloudDriveFragment;)V

    iget-object p1, p0, Lcom/android/cloud/fragment/CloudDriveFragment$1;->this$0:Lcom/android/cloud/fragment/CloudDriveFragment;

    invoke-static {p1}, Lcom/android/cloud/fragment/CloudDriveFragment;->access$100(Lcom/android/cloud/fragment/CloudDriveFragment;)V

    :cond_35
    return-void
.end method
