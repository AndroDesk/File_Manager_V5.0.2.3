.class Lcom/android/fileexplorer/activity/PrivateFolderActivity$7$1;
.super Ljava/lang/Object;
.source "PrivateFolderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7$1;->this$1:Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7$1;->this$1:Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;

    iget-object v0, v0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$7;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    invoke-virtual {v0}, Lcom/android/fileexplorer/activity/BaseActivity;->dismissProgress()V

    return-void
.end method
