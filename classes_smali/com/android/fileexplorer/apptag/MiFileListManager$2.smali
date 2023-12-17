.class Lcom/android/fileexplorer/apptag/MiFileListManager$2;
.super Ljava/lang/Object;
.source "MiFileListManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/apptag/MiFileListManager;->getAllFilesList(Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

.field public final synthetic val$newFileCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/apptag/MiFileListManager;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$2;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    iput p2, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$2;->val$newFileCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAllFileGroups()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/dao/file/FileGroup;

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_19

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_30
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    return-void

    :cond_37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "MiFileListManagerstart scanInvaildFileItems"

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->scanInvaildFileItems(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    const-string v3, "MiFileListManagerfinish scanInvaildFileItems"

    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/fileexplorer/apptag/AppTagHelper;->init()V

    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/apptag/AppTagHelper;->calcAppTagList(Ljava/util/List;)V

    iget-object v3, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$2;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    invoke-static {v3}, Lcom/android/fileexplorer/apptag/MiFileListManager;->access$400(Lcom/android/fileexplorer/apptag/MiFileListManager;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/fileexplorer/apptag/MiFileListManager$2$1;

    invoke-direct {v4, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager$2$1;-><init>(Lcom/android/fileexplorer/apptag/MiFileListManager$2;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/ContentTagHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->init()V

    invoke-static {}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/ContentTagHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->updateContentTag(Ljava/util/List;)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/android/fileexplorer/util/SettingsUtils;->setApptagListInited(Ljava/lang/Boolean;)V

    const-string v2, "MiFileListManagerfinish calcAppTagList"

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    if-nez v1, :cond_89

    iget v1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$2;->val$newFileCount:I

    if-gtz v1, :cond_89

    return-void

    :cond_89
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$2;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    invoke-static {v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->access$400(Lcom/android/fileexplorer/apptag/MiFileListManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/fileexplorer/apptag/MiFileListManager$2$2;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager$2$2;-><init>(Lcom/android/fileexplorer/apptag/MiFileListManager$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v1, "MiFileListManagerfinish scan deleted files"

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    return-void
.end method
