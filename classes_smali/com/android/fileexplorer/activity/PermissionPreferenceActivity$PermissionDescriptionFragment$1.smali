.class Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment$1;
.super Ljava/lang/Object;
.source "PermissionPreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment$1;->this$0:Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment$1;->this$0:Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment$1;->this$0:Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;

    .line 12
    invoke-static {v0}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->access$000(Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;)V

    .line 15
    return-void
.end method
