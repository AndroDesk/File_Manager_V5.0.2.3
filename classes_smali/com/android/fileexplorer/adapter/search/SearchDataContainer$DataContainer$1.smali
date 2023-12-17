.class Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;
.super Lcom/android/fileexplorer/controller/Task$SimpleTask;
.source "SearchDataContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->runSearchTask(Ljava/lang/String;Ljava/lang/String;JLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/controller/Task$SimpleTask<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/android/fileexplorer/search/SearchResultContent;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;

.field public final synthetic val$localdata:Landroid/os/Bundle;

.field public final synthetic val$magic:J

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$text:Ljava/lang/String;

.field public final synthetic val$type:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;JLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->this$1:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$localdata:Landroid/os/Bundle;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$packageName:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$text:Ljava/lang/String;

    .line 9
    iput-wide p5, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$magic:J

    .line 11
    iput-object p7, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$type:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 13
    invoke-direct {p0}, Lcom/android/fileexplorer/controller/Task$SimpleTask;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->doInBackground()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public doInBackground()Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/search/SearchResultContent;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$localdata:Landroid/os/Bundle;

    const/4 v1, -0x1

    const-string v2, "search_tag"

    if-eqz v0, :cond_17

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 3
    :goto_18
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$packageName:Ljava/lang/String;

    const-string v4, "folder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/search/SearchManager;->getInstance()Lcom/android/fileexplorer/search/SearchManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/search/SearchManager;->searchFolder(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_a6

    :cond_2e
    if-eqz v0, :cond_64

    .line 5
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$localdata:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->AppTag:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_4d

    .line 6
    invoke-static {}, Lcom/android/fileexplorer/search/SearchManager;->getInstance()Lcom/android/fileexplorer/search/SearchManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$text:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$packageName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$magic:J

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/android/fileexplorer/search/SearchManager;->searchAppTag(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v1

    goto :goto_a6

    .line 7
    :cond_4d
    invoke-static {}, Lcom/android/fileexplorer/search/SearchManager;->getInstance()Lcom/android/fileexplorer/search/SearchManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$text:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/fileexplorer/util/CategoryUtil;->getFileCategoyByIndex(Ljava/lang/String;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-wide v5, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$magic:J

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/android/fileexplorer/search/SearchManager;->searchCategory(Ljava/lang/String;IJ)Ljava/util/List;

    move-result-object v1

    goto :goto_a6

    .line 8
    :cond_64
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$text:Ljava/lang/String;

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110453

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "com.android.providers.downloads.ui"

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.xlredapple.bluetooth"

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.miui.mishare.connectivity"

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {}, Lcom/android/fileexplorer/search/SearchManager;->getInstance()Lcom/android/fileexplorer/search/SearchManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$text:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$magic:J

    invoke-virtual {v2, v3, v1, v5, v6}, Lcom/android/fileexplorer/search/SearchManager;->search(Ljava/lang/String;Ljava/util/List;J)Ljava/util/List;

    move-result-object v1

    goto :goto_a6

    .line 14
    :cond_98
    invoke-static {}, Lcom/android/fileexplorer/search/SearchManager;->getInstance()Lcom/android/fileexplorer/search/SearchManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$text:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$packageName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$magic:J

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/android/fileexplorer/search/SearchManager;->search(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v1

    .line 15
    :goto_a6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_bb

    .line 16
    new-instance v3, Lcom/android/fileexplorer/search/SearchResultContent;

    iget-object v7, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$text:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$packageName:Ljava/lang/String;

    iget-wide v9, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$magic:J

    move-object v5, v3

    move-object v6, v1

    invoke-direct/range {v5 .. v10}, Lcom/android/fileexplorer/search/SearchResultContent;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_c4

    .line 17
    :cond_bb
    new-instance v3, Lcom/android/fileexplorer/search/SearchResultContent;

    iget-object v5, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$text:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$magic:J

    invoke-direct {v3, v1, v5, v6, v7}, Lcom/android/fileexplorer/search/SearchResultContent;-><init>(Ljava/util/List;Ljava/lang/String;J)V

    :goto_c4
    const-string v5, "raw"

    .line 18
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v5, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->this$1:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;

    invoke-static {v5}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->access$100(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$type:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;

    if-nez v5, :cond_e3

    .line 20
    new-instance v5, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DefaultPostOperation;

    iget-object v6, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->this$1:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;

    iget-object v6, v6, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->this$0:Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DefaultPostOperation;-><init>(Lcom/android/fileexplorer/adapter/search/SearchDataContainer;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$1;)V

    :cond_e3
    if-eqz v0, :cond_ea

    .line 21
    invoke-interface {v5, v3}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;->postProcessTagSearch(Lcom/android/fileexplorer/search/SearchResultContent;)Lcom/android/fileexplorer/search/SearchResultContent;

    move-result-object v3

    goto :goto_ee

    :cond_ea
    invoke-interface {v5, v3}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IPostOperation;->postProcessNormalSearch(Lcom/android/fileexplorer/search/SearchResultContent;)Lcom/android/fileexplorer/search/SearchResultContent;

    move-result-object v3

    :goto_ee
    if-eqz v3, :cond_f5

    const-string v5, "processed"

    .line 22
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_f5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_135

    .line 24
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/fileexplorer/util/CategoryUtil;->getCategoryNameByIndex(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_125

    .line 26
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 27
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f1103a9

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_125

    .line 28
    :cond_11f
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/fileexplorer/util/CategoryUtil;->getAppNameByPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    :cond_125
    :goto_125
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12d

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$packageName:Ljava/lang/String;

    :cond_12d
    if-eqz v0, :cond_130

    goto :goto_132

    :cond_130
    const-string v1, ""

    .line 30
    :goto_132
    invoke-static {v0, v1}, Lcom/android/fileexplorer/statistics/StatHelper;->search(ZLjava/lang/String;)V

    :cond_135
    return-object v2
.end method

.method public onCancel()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/controller/Task$SimpleTask;->onCancel()V

    .line 4
    return-void
.end method

.method public onFail(Ljava/lang/Exception;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/controller/Task$SimpleTask;->onFail(Ljava/lang/Exception;)V

    .line 4
    const-string p1, "onFail: search failed text = "

    .line 6
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$text:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const-string v0, "SearchDataContainer"

    .line 21
    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->this$1:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$text:Ljava/lang/String;

    .line 28
    iget-wide v1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$magic:J

    .line 30
    invoke-static {p1, v0, v1, v2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->access$600(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;Ljava/lang/String;J)Lcom/android/fileexplorer/search/SearchResultContent;

    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$type:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 36
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$localdata:Landroid/os/Bundle;

    .line 38
    invoke-static {p1, v0, v1, v2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->access$500(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->onSuccess(Ljava/util/HashMap;)V

    return-void
.end method

.method public onSuccess(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/search/SearchResultContent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "raw"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/search/SearchResultContent;

    if-eqz v0, :cond_14

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->this$1:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->access$302(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :cond_14
    const-string v0, "processed"

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/search/SearchResultContent;

    if-eqz p1, :cond_37

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->this$1:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->access$400(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$type:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->this$1:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$type:Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer$1;->val$localdata:Landroid/os/Bundle;

    invoke-static {v0, p1, v1, v2}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;->access$500(Lcom/android/fileexplorer/adapter/search/SearchDataContainer$DataContainer;Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V

    :cond_37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "SearchDataContainer_search"

    return-object v0
.end method
