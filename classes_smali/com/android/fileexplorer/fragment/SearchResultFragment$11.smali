.class Lcom/android/fileexplorer/fragment/SearchResultFragment$11;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/SearchResultFragment;->doSearch(Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

.field public final synthetic val$force:Z

.field public final synthetic val$text:Ljava/lang/String;

.field public final synthetic val$type:Lcom/android/fileexplorer/adapter/search/SearchType;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$11;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$11;->val$text:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$11;->val$type:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 7
    iput-boolean p4, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$11;->val$force:Z

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 1
    const-string v0, "SearchResultFragment"

    .line 3
    const-string v1, "searchTask run real"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$11;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$11;->val$text:Ljava/lang/String;

    .line 12
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$11;->val$type:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 14
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2600(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$11;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 19
    sget-object v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$State;->SHOW_SEARCH_LOADING:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    .line 21
    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2200(Lcom/android/fileexplorer/fragment/SearchResultFragment;Lcom/android/fileexplorer/fragment/SearchResultFragment$State;)V

    .line 24
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$11;->val$text:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$11;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 32
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$700(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_30

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$11;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 44
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$800(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    goto :goto_32

    .line 49
    :cond_30
    const-string v0, ""

    .line 51
    :goto_32
    move-object v4, v0

    .line 52
    const-wide/16 v5, 0x1

    .line 54
    iget-boolean v7, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$11;->val$force:Z

    .line 56
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$11;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 58
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$000(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 61
    move-result-object v8

    .line 62
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$11;->val$type:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 64
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/search/SearchUtils;->putTypeExtra(Lcom/android/fileexplorer/adapter/search/SearchType;)Landroid/os/Bundle;

    .line 67
    move-result-object v9

    .line 68
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$11;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 70
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$600(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 77
    move-result-object v10

    .line 78
    invoke-virtual/range {v2 .. v10}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->requestData(Ljava/lang/String;Ljava/lang/String;JZLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 81
    return-void
.end method
