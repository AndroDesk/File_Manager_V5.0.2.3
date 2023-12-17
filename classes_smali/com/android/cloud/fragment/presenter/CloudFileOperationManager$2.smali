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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iput-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;->val$localFileInfos:Ljava/util/List;

    iput-object p3, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;->val$cloudFiles:Ljava/util/List;

    iput-object p4, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;->val$pageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;->val$localFileInfos:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;->val$cloudFiles:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;->val$pageName:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/android/fileexplorer/statistics/StatHelper;->fileDelete(Ljava/lang/String;Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;->this$0:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-object p2, p0, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager$2;->val$pageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->startDeleteThread(Ljava/lang/String;)V

    return-void
.end method
