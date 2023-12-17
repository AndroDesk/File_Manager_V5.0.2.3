.class Lcom/android/fileexplorer/fragment/SearchResultFragment$12;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/SearchResultFragment;->doTagSearch(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

.field public final synthetic val$force:Z

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$text:Ljava/lang/String;

.field public final synthetic val$type:Lcom/android/fileexplorer/adapter/search/SearchType;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$text:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$packageName:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$type:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 9
    iput-boolean p5, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$force:Z

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 1
    const-string v0, "SearchResultFragment"

    .line 3
    const-string v1, "search tag Task run real"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$text:Ljava/lang/String;

    .line 12
    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$packageName:Ljava/lang/String;

    .line 14
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$type:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 16
    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$3200(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 21
    sget-object v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$State;->SHOW_SEARCH_LOADING:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    .line 23
    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2200(Lcom/android/fileexplorer/fragment/SearchResultFragment;Lcom/android/fileexplorer/fragment/SearchResultFragment$State;)V

    .line 26
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 29
    move-result-object v2

    .line 30
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$text:Ljava/lang/String;

    .line 32
    iget-object v4, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$packageName:Ljava/lang/String;

    .line 34
    iget-boolean v7, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$force:Z

    .line 36
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 38
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$000(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 41
    move-result-object v8

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 44
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$3300(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$type:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 50
    invoke-static {v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchUtils;->putTagAndTypeExtra(Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;Lcom/android/fileexplorer/adapter/search/SearchType;)Landroid/os/Bundle;

    .line 53
    move-result-object v9

    .line 54
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 56
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$600(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 63
    move-result-object v10

    .line 64
    const-wide/16 v5, 0x1

    .line 66
    invoke-virtual/range {v2 .. v10}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->requestTagData(Ljava/lang/String;Ljava/lang/String;JZLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 69
    return-void
.end method
