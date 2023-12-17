.class Lcom/android/fileexplorer/fragment/SearchDetailFragment$1;
.super Ljava/lang/Object;
.source "SearchDetailFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/search/SearchDataContainer$IDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/SearchDetailFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged(Lcom/android/fileexplorer/search/SearchResultContent;Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;)V
    .registers 4

    iget-object p3, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    invoke-static {p3}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->access$000(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    invoke-static {p2}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->access$100(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2d

    invoke-virtual {p1}, Lcom/android/fileexplorer/search/SearchResultContent;->getSearchtext()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    invoke-static {p3}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->access$100(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$1;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    invoke-static {p2, p1}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->access$200(Lcom/android/fileexplorer/fragment/SearchDetailFragment;Lcom/android/fileexplorer/search/SearchResultContent;)V

    :cond_2d
    return-void
.end method
