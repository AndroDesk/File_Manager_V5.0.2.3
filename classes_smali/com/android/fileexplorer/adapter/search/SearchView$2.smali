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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/search/SearchView;Lcom/android/fileexplorer/adapter/search/SearchSuggestItemView;Lcom/google/android/flexbox/FlexboxLayout;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$2;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/search/SearchView$2;->val$expandView:Lcom/android/fileexplorer/adapter/search/SearchSuggestItemView;

    iput-object p3, p0, Lcom/android/fileexplorer/adapter/search/SearchView$2;->val$layout:Lcom/google/android/flexbox/FlexboxLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$2;->val$expandView:Lcom/android/fileexplorer/adapter/search/SearchSuggestItemView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView$2;->val$expandView:Lcom/android/fileexplorer/adapter/search/SearchSuggestItemView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$2;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/search/SearchView;->access$100(Lcom/android/fileexplorer/adapter/search/SearchView;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/adapter/search/SearchListTag;

    iget-object v0, p1, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    if-eqz v0, :cond_3d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_27

    return-void

    :cond_27
    :goto_27
    if-ge v1, v0, :cond_3d

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/search/SearchView$2;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    iget-object v3, p1, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/adapter/search/SearchTag;

    iget-object v4, p0, Lcom/android/fileexplorer/adapter/search/SearchView$2;->val$layout:Lcom/google/android/flexbox/FlexboxLayout;

    sget-object v5, Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;->AppTag:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    invoke-static {v2, v3, v4, v5}, Lcom/android/fileexplorer/adapter/search/SearchView;->access$200(Lcom/android/fileexplorer/adapter/search/SearchView;Lcom/android/fileexplorer/adapter/search/SearchTag;Lcom/google/android/flexbox/FlexboxLayout;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_3d
    return-void
.end method
