.class Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;
.super Ljava/lang/Object;
.source "CloudFileOperationManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->deleteFiles(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

.field public final synthetic val$cloudFiles:Ljava/util/List;

.field public final synthetic val$localFileInfos:Ljava/util/List;

.field public final synthetic val$pageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 3
    iput-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;->val$localFileInfos:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;->val$cloudFiles:Ljava/util/List;

    .line 7
    iput-object p4, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;->val$pageName:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;->val$localFileInfos:Ljava/util/List;

    .line 8
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    iget-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;->val$cloudFiles:Ljava/util/List;

    .line 13
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    iget-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;->val$pageName:Ljava/lang/String;

    .line 18
    invoke-static {p2, p1}, Lcom/android/fileexplorer/statistics/StatHelper;->fileDelete(Ljava/lang/String;Ljava/util/List;)V

    .line 21
    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 23
    iget-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;->val$pageName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->startDeleteThread(Ljava/lang/String;)V

    .line 28
    return-void
.end method
