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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_31

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    invoke-static {p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_31

    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchtext()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_31

    invoke-static {p3}, Lcom/android/fileexplorer/adapter/search/SearchUtils;->getTypeExtra(Landroid/os/Bundle;)Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object p2

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    invoke-static {p3, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchType;)V

    :cond_31
    return-void
.end method
