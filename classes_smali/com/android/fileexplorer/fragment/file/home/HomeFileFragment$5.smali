.class Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$5;
.super Ljava/lang/Object;
.source "HomeFileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initOtherEntryView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_5a

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lcom/android/fileexplorer/model/FileEntryEntity;

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_5a

    .line 16
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/android/fileexplorer/model/FileEntryEntity;

    .line 22
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isMiDrive()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2a

    .line 28
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 30
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/android/fileexplorer/util/MiDriveUtils;->startMiDrive(Landroid/content/Context;)V

    .line 37
    const-string p1, "click_midrive_card"

    .line 39
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/Statistics;->onEvent(Ljava/lang/String;)V

    .line 42
    goto :goto_5a

    .line 43
    :cond_2a
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->isPrimary()Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3a

    .line 49
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 51
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->enterStorage(Landroid/app/Activity;)V

    .line 58
    goto :goto_5a

    .line 59
    :cond_3a
    new-instance v0, Landroid/os/Bundle;

    .line 61
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    const-string v1, "current_directory"

    .line 70
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$5;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 75
    invoke-static {p1}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 78
    move-result-object p1

    .line 79
    new-instance v1, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;

    .line 81
    const/16 v2, 0xfa0

    .line 83
    const-class v3, Lcom/android/fileexplorer/pad/fragment/PadFileDetailFragment;

    .line 85
    invoke-direct {v1, v2, v3, v0}, Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p1, v1}, Lmiuix/navigator/Navigator;->navigate(Lmiuix/navigator/navigatorinfo/NavigatorInfo;)V

    .line 91
    :cond_5a
    :goto_5a
    return-void
.end method
