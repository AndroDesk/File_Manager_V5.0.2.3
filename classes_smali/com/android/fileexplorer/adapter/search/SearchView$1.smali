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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/search/SearchView;Lcom/android/fileexplorer/adapter/search/SearchTag;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->val$tag:Lcom/android/fileexplorer/adapter/search/SearchTag;

    iput-object p3, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->val$tagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/search/SearchView;->access$000(Lcom/android/fileexplorer/adapter/search/SearchView;)Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->val$tag:Lcom/android/fileexplorer/adapter/search/SearchTag;

    iget-object p1, p1, Lcom/android/fileexplorer/adapter/search/SearchTag;->tagName:Ljava/lang/String;

    if-eqz p1, :cond_2f

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f182daa

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/PageRouter;->routeToRecorder(Landroid/content/Context;)V

    goto :goto_42

    :cond_2f
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->this$0:Lcom/android/fileexplorer/adapter/search/SearchView;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/search/SearchView;->access$000(Lcom/android/fileexplorer/adapter/search/SearchView;)Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->val$tag:Lcom/android/fileexplorer/adapter/search/SearchTag;

    iget-object v1, v0, Lcom/android/fileexplorer/adapter/search/SearchTag;->keyWord:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/fileexplorer/adapter/search/SearchTag;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/search/SearchView$1;->val$tagType:Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;

    invoke-interface {p1, v1, v0, v2, v3}, Lcom/android/fileexplorer/adapter/search/SearchView$OnSearchItemClickListener;->onSearchClick(Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/adapter/search/SearchType;Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;)V

    :cond_42
    :goto_42
    return-void
.end method
