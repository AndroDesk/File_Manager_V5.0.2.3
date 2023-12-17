.class Lcom/android/fileexplorer/activity/ServerControlActivity$2;
.super Ljava/lang/Object;
.source "ServerControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/ServerControlActivity;->initActionBar()V
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
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$2;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$2;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$2;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    .line 7
    const-class v2, Lcom/android/fileexplorer/activity/ServerControlPreference;

    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 15
    return-void
.end method
