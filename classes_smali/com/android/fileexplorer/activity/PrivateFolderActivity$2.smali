.class Lcom/android/fileexplorer/activity/PrivateFolderActivity$2;
.super Ljava/lang/Object;
.source "PrivateFolderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/PrivateFolderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$2;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$2;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$000(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 6
    move-result-object p1

    .line 7
    const v0, 0x7f0a02dc

    .line 10
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onOptionsItemSelected(I)Z

    .line 13
    return-void
.end method
