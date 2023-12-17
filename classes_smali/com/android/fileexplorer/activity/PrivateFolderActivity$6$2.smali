.class Lcom/android/fileexplorer/activity/PrivateFolderActivity$6$2;
.super Ljava/lang/Object;
.source "PrivateFolderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6$2;->this$1:Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6$2;->this$1:Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/activity/PrivateFolderActivity$6;->this$0:Lcom/android/fileexplorer/activity/PrivateFolderActivity;

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->showSpaceNotEnoughDialog(Landroid/app/Activity;)V

    .line 8
    return-void
.end method
