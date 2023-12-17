.class Lcom/android/fileexplorer/adapter/search/SearchView$1;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/search/SearchView;->createItemView(Lcom/android/fileexplorer/adapter/search/SearchTag;Lcom/google/android/flexbox/FlexboxLayout;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

.field public final synthetic val$tag:Lcom/android/fileexplorer/adapter/search/SearchTag;

.field public final synthetic val$tagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/search/SearchView;Lcom/android/fileexplorer/adapter/search/SearchTag;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->val$tag:Lcom/android/fileexplorer/adapter/search/SearchTag;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->val$tagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/search/SearchView;->access$000(Lcom/android/fileexplorer/adapter/search/SearchView;)Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_3e

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->val$tag:Lcom/android/fileexplorer/adapter/search/SearchTag;

    .line 11
    iget-object p1, p1, Lcom/android/fileexplorer/adapter/search/SearchTag;->tagName:Ljava/lang/String;

    .line 13
    if-eqz p1, :cond_2b

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f11003c

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2b

    .line 34
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/android/fileexplorer/util/PageRouter;->routeToRecorder(Landroid/content/Context;)V

    .line 43
    goto :goto_3e

    .line 44
    :cond_2b
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    .line 46
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/search/SearchView;->access$000(Lcom/android/fileexplorer/adapter/search/SearchView;)Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;

    .line 49
    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->val$tag:Lcom/android/fileexplorer/adapter/search/SearchTag;

    .line 52
    iget-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchTag;->keyWord:Ljava/lang/String;

    .line 54
    iget-object v0, v0, Lcom/android/fileexplorer/adapter/search/SearchTag;->packageName:Ljava/lang/String;

    .line 56
    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 58
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->val$tagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 60
    invoke-interface {p1, v1, v0, v2, v3}, Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;->onSearchClick(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V

    .line 63
    :cond_3e
    :goto_3e
    return-void
.end method
