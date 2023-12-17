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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$2;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$2;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/activity/PrivateFolderActivity;->access$000(Lcom/android/fileexplorer/activity/PrivateFolderActivity;)Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    move-result-object p1

    const v0, 0x7f0a02dc

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->onOptionsItemSelected(I)Z

    return-void
.end method
