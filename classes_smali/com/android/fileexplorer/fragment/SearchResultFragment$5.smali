.class Lcom/android/fileexplorer/fragment/SearchResultFragment$5;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/SearchResultFragment;->initSearchSuggestView()V
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
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$5;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSearchClick(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V
    .registers 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$5;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 7
    invoke-static {v0, p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$702(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$5;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 12
    invoke-static {p1, p2}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$802(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$5;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 17
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$700(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1, v0, p4}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$900(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V

    .line 24
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$5;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 26
    invoke-static {v1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1000(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    const/4 v5, 0x0

    .line 31
    const-wide/16 v6, 0x1f4

    .line 33
    move-object v3, p2

    .line 34
    move-object v4, p3

    .line 35
    invoke-static/range {v1 .. v7}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1100(Lcom/android/fileexplorer/fragment/SearchResultFragment;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;ZJ)V

    .line 38
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchResultFragment$5;->this$0:Lcom/android/fileexplorer/fragment/SearchResultFragment;

    .line 40
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchResultFragment;->access$1200(Lcom/android/fileexplorer/fragment/SearchResultFragment;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 43
    move-result-object p1

    .line 44
    const/4 p2, 0x0

    .line 45
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 48
    return-void
.end method
