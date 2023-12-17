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
.method public constructor <init>(Lcom/android/fileexplorer/apptag/MiFileListManager;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$2;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$2;->val$newFileCount:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/TimeCost;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/util/TimeCost;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/TimeCost;->init()V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->loadAllFileGroups()Ljava/util/List;

    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v2

    .line 26
    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_30

    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 38
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileGroup;->getGroupType()I

    .line 41
    move-result v4

    .line 42
    const/4 v5, 0x1

    .line 43
    if-ne v4, v5, :cond_19

    .line 45
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    goto :goto_19

    .line 49
    :cond_30
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_37

    .line 55
    return-void

    .line 56
    :cond_37
    new-instance v2, Ljava/util/ArrayList;

    .line 58
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    const-string v3, "MiFileListManagerstart scanInvaildFileItems"

    .line 63
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->getInstance()Lcom/android/fileexplorer/apptag/FileGroupDbManager;

    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3, v1, v2}, Lcom/android/fileexplorer/apptag/FileGroupDbManager;->scanInvaildFileItems(Ljava/util/List;Ljava/util/List;)Z

    .line 73
    move-result v1

    .line 74
    const-string v3, "MiFileListManagerfinish scanInvaildFileItems"

    .line 76
    invoke-virtual {v0, v3}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lcom/android/fileexplorer/apptag/AppTagHelper;->init()V

    .line 86
    invoke-static {}, Lcom/android/fileexplorer/apptag/AppTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/AppTagHelper;

    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/apptag/AppTagHelper;->calcAppTagList(Ljava/util/List;)V

    .line 93
    iget-object v3, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$2;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 95
    invoke-static {v3}, Lcom/android/fileexplorer/apptag/MiFileListManager;->access$400(Lcom/android/fileexplorer/apptag/MiFileListManager;)Landroid/os/Handler;

    .line 98
    move-result-object v3

    .line 99
    new-instance v4, Lcom/android/fileexplorer/apptag/MiFileListManager$2$1;

    .line 101
    invoke-direct {v4, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager$2$1;-><init>(Lcom/android/fileexplorer/apptag/MiFileListManager$2;)V

    .line 104
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    invoke-static {}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/ContentTagHelper;

    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->init()V

    .line 114
    invoke-static {}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->getInstance()Lcom/android/fileexplorer/apptag/ContentTagHelper;

    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3, v2}, Lcom/android/fileexplorer/apptag/ContentTagHelper;->updateContentTag(Ljava/util/List;)V

    .line 121
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 123
    invoke-static {v2}, Lcom/android/fileexplorer/util/SettingsUtils;->setApptagListInited(Ljava/lang/Boolean;)V

    .line 126
    const-string v2, "MiFileListManagerfinish calcAppTagList"

    .line 128
    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 131
    if-nez v1, :cond_89

    .line 133
    iget v1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$2;->val$newFileCount:I

    .line 135
    if-gtz v1, :cond_89

    .line 137
    return-void

    .line 138
    :cond_89
    iget-object v1, p0, Lcom/android/fileexplorer/apptag/MiFileListManager$2;->this$0:Lcom/android/fileexplorer/apptag/MiFileListManager;

    .line 140
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/MiFileListManager;->access$400(Lcom/android/fileexplorer/apptag/MiFileListManager;)Landroid/os/Handler;

    .line 143
    move-result-object v1

    .line 144
    new-instance v2, Lcom/android/fileexplorer/apptag/MiFileListManager$2$2;

    .line 146
    invoke-direct {v2, p0}, Lcom/android/fileexplorer/apptag/MiFileListManager$2$2;-><init>(Lcom/android/fileexplorer/apptag/MiFileListManager$2;)V

    .line 149
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    const-string v1, "MiFileListManagerfinish scan deleted files"

    .line 154
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/util/TimeCost;->checkTimeCost(Ljava/lang/String;)V

    .line 157
    return-void
.end method
