.class Lcom/android/fileexplorer/adapter/search/SearchView$2;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/search/SearchView;->createExpandView(Lcom/google/android/flexbox/FlexboxLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

.field public final synthetic val$expandView:Lcom/android/fileexplorer/adapter/search/SearchSuggestItemView;

.field public final synthetic val$layout:Lcom/google/android/flexbox/FlexboxLayout;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/search/SearchView;Lcom/android/fileexplorer/adapter/search/SearchSuggestItemView;Lcom/google/android/flexbox/FlexboxLayout;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$2;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/search/SearchView$2;->val$expandView:Lcom/android/fileexplorer/adapter/search/SearchSuggestItemView;

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/adapter/search/SearchView$2;->val$layout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$2;->val$expandView:Lcom/android/fileexplorer/adapter/search/SearchSuggestItemView;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/ViewGroup;

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView$2;->val$expandView:Lcom/android/fileexplorer/adapter/search/SearchSuggestItemView;

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$2;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    .line 16
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/search/SearchView;->access$100(Lcom/android/fileexplorer/adapter/search/SearchView;)Ljava/util/List;

    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/android/fileexplorer/adapter/search/SearchListTag;

    .line 27
    iget-object v0, p1, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    .line 29
    if-eqz v0, :cond_3d

    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 34
    move-result v0

    .line 35
    const/16 v1, 0x8

    .line 37
    if-gt v0, v1, :cond_27

    .line 39
    return-void

    .line 40
    :cond_27
    :goto_27
    if-ge v1, v0, :cond_3d

    .line 42
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/search/SearchView$2;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    .line 44
    iget-object v3, p1, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    .line 46
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lcom/android/fileexplorer/adapter/search/SearchTag;

    .line 52
    iget-object v4, p0, Lcom/android/fileexplorer/adapter/search/SearchView$2;->val$layout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 54
    sget-object v5, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->AppTag:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    .line 56
    invoke-static {v2, v3, v4, v5}, Lcom/android/fileexplorer/adapter/search/SearchView;->access$200(Lcom/android/fileexplorer/adapter/search/SearchView;Lcom/android/fileexplorer/adapter/search/SearchTag;Lcom/google/android/flexbox/FlexboxLayout;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_27

    .line 62
    :cond_3d
    return-void
.end method
