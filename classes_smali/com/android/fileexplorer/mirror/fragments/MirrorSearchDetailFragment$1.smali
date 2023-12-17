.class Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$1;
.super Ljava/lang/Object;
.source "MirrorSearchDetailFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDataChanged(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    .line 3
    invoke-static {p3}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_2d

    .line 13
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    .line 15
    invoke-static {p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_2d

    .line 25
    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchtext()Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    .line 31
    invoke-static {p3}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Ljava/lang/String;

    .line 34
    move-result-object p3

    .line 35
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_2d

    .line 41
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    .line 43
    invoke-static {p2, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;Lcom/android/fileexplorer/search/SearchResultContent;)V

    .line 46
    :cond_2d
    return-void
.end method
