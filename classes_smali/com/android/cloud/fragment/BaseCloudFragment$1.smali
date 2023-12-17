.class Lcom/android/cloud/fragment/BaseCloudFragment$1;
.super Ljava/lang/Object;
.source "BaseCloudFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/fragment/BaseCloudFragment;->showNoPermissionView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/cloud/fragment/BaseCloudFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/fragment/BaseCloudFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$1;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$1;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/PermissionUtils;->startNewAppPermsManager(Landroid/content/Context;)V

    return-void
.end method
