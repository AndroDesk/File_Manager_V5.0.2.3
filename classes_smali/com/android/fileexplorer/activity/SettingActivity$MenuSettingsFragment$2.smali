.class Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$2;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment$2;->this$0:Lcom/android/fileexplorer/activity/SettingActivity$MenuSettingsFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.intent.action.MAIN"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "android.intent.category.HOME"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const/high16 v1, 0x10000000

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 18
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 25
    invoke-static {}, Lcom/android/fileexplorer/util/FileExplorerActivityManager;->releaseAll()V

    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 32
    return-void
.end method
