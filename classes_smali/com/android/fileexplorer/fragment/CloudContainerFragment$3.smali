.class Lcom/android/fileexplorer/fragment/CloudContainerFragment$3;
.super Ljava/lang/Object;
.source "CloudContainerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/CloudContainerFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$3;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$3;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/CloudContainerFragment;->access$200(Lcom/android/fileexplorer/fragment/CloudContainerFragment;)Z

    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$3;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p1

    .line 16
    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {p1, v0}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionAtOnce(Landroid/content/Context;Landroid/accounts/Account;)Lcom/micloud/midrive/session/SyncSession;

    .line 27
    return-void
.end method
