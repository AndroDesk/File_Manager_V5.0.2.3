.class Lcom/android/fileexplorer/activity/ServerControlActivity$7;
.super Ljava/lang/Object;
.source "ServerControlActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/ServerControlActivity;->startFTPService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

.field public final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/ServerControlActivity;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$7;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$7;->val$list:Ljava/util/ArrayList;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$7;->this$0:Lcom/android/fileexplorer/activity/ServerControlActivity;

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/activity/ServerControlActivity$7;->val$list:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lcom/android/fileexplorer/model/StorageInfo;

    .line 11
    invoke-static {p1, p2}, Lcom/android/fileexplorer/activity/ServerControlActivity;->access$300(Lcom/android/fileexplorer/activity/ServerControlActivity;Lcom/android/fileexplorer/model/StorageInfo;)V

    .line 14
    return-void
.end method
