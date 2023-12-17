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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/ServerControlActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$2;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$2;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$2;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    const-class v2, Lcom/android/fileexplorer/activity/ServerControlPreference;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
