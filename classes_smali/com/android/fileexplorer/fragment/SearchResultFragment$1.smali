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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchResultFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDataChanged(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$000(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_41

    .line 13
    invoke-static {p3}, Lcom/android/fileexplorer/adapter/search/SearchUtils;->getTypeExtra(Landroid/os/Bundle;)Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getResults()Ljava/util/List;

    .line 20
    move-result-object p3

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 23
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$100(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_38

    .line 29
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getTagResults()Ljava/util/List;

    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_38

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 37
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$200(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/List;

    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 46
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$200(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/util/List;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getTagResults()Ljava/util/List;

    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    :cond_38
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchtext()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 63
    invoke-static {v0, p1, p3, p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$300(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Ljava/util/List;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    .line 66
    :cond_41
    return-void
.end method
