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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment$1;->this$0:Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment$1;->this$0:Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment$1;->this$0:Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;->access$000(Lcom/android/fileexplorer/activity/PermissionPreferenceActivity$PermissionDescriptionFragment;)V

    return-void
.end method
