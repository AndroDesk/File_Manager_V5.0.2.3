.class Lcom/android/fileexplorer/fragment/CloudContainerFragment$2;
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
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$2;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$2;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

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
    new-instance p1, Landroid/content/Intent;

    .line 12
    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    .line 14
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v0, "android.intent.category.OPENABLE"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const-string v0, "*/*"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v0, "android.intent.extra.ALLOW_MULTIPLE"

    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/CloudContainerFragment$2;->this$0:Lcom/android/fileexplorer/fragment/CloudContainerFragment;

    .line 35
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 38
    return-void
.end method
