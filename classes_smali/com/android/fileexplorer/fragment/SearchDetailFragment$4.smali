.class Lcom/android/fileexplorer/fragment/SearchDetailFragment$4;
.super Ljava/lang/Object;
.source "SearchDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/SearchDetailFragment;->doSearch(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

.field public final synthetic val$force:Z

.field public final synthetic val$text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchDetailFragment;Ljava/lang/String;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$4;->val$text:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$4;->val$force:Z

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 1
    const-string v0, "SearchDetailFragment"

    .line 3
    const-string v1, "searchTask run real"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$4;->val$text:Ljava/lang/String;

    .line 14
    iget-boolean v7, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$4;->val$force:Z

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 18
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->access$000(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 21
    move-result-object v8

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 24
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->access$1000(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/search/SearchUtils;->putTypeExtra(Lcom/android/fileexplorer/adapter/search/SearchType;)Landroid/os/Bundle;

    .line 31
    move-result-object v9

    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$4;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 34
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->access$300(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 41
    move-result-object v10

    .line 42
    const-string v4, ""

    .line 44
    const-wide/16 v5, 0x1

    .line 46
    invoke-virtual/range {v2 .. v10}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->requestData(Ljava/lang/String;Ljava/lang/String;JZLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 49
    return-void
.end method
