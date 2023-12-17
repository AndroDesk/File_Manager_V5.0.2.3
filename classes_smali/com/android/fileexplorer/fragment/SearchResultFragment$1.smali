.class Lcom/android/fileexplorer/fragment/SearchResultFragment$1;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/SearchResultFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$000(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_41

    invoke-static {p3}, Lcom/android/fileexplorer/adapter/search/SearchUtils;->getTypeExtra(Landroid/os/Bundle;)Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getResults()Ljava/util/List;

    move-result-object p3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$100(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getTagResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$200(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$200(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getTagResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_38
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchtext()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    invoke-static {v0, p1, p3, p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$300(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Ljava/util/List;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    :cond_41
    return-void
.end method
