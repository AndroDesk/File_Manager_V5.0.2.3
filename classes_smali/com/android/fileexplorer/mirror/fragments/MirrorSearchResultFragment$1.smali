.class Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$1;
.super Ljava/lang/Object;
.source "MirrorSearchResultFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDataChanged(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_31

    .line 13
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 15
    invoke-static {p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_31

    .line 25
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchtext()Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 31
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_31

    .line 41
    invoke-static {p3}, Lcom/android/fileexplorer/adapter/search/SearchUtils;->getTypeExtra(Landroid/os/Bundle;)Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 44
    move-result-object p2

    .line 45
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 47
    invoke-static {p3, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    .line 50
    :cond_31
    return-void
.end method
