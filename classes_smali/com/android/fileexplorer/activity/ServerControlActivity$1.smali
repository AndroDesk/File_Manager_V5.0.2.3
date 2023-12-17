.class Lcom/android/fileexplorer/activity/ServerControlActivity$1;
.super Ljava/lang/Object;
.source "ServerControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/ServerControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/ServerControlActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$1;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 3
    const-string v0, "android.settings.WIFI_SETTINGS"

    .line 5
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$1;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    .line 10
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 13
    return-void
.end method
