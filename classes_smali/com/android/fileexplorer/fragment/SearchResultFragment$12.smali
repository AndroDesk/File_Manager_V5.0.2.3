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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Z)V
    .registers 6

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$type:Lcom/android/fileexplorer/adapter/search/SearchType;

    iput-boolean p5, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const-string v0, "SearchResultFragment"

    const-string v1, "search tag Task run real"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$text:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$type:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-static {v0, v1, v2, v3}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$3200(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    sget-object v1, Lcom/android/fileexplorer/fragment/SearchResultFragment$State;->SHOW_SEARCH_LOADING:Lcom/android/fileexplorer/fragment/SearchResultFragment$State;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$2200(Lcom/android/fileexplorer/fragment/SearchResultFragment;Lcom/android/fileexplorer/fragment/SearchResultFragment$State;)V

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$text:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$packageName:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$force:Z

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$000(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    move-result-object v8

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$3300(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->val$type:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/adapter/search/SearchUtils;->putTagAndTypeExtra(Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;Lcom/android/fileexplorer/adapter/search/SearchType;)Landroid/os/Bundle;

    move-result-object v9

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$12;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$600(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v10

    const-wide/16 v5, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->requestTagData(Ljava/lang/String;Ljava/lang/String;JZLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;Landroid/app/Activity;)V

    return-void
.end method
