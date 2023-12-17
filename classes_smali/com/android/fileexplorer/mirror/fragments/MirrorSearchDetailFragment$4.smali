.class Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;
.super Ljava/lang/Object;
.source "MirrorSearchDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->doSearch(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

.field public final synthetic val$force:Z

.field public final synthetic val$text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;Ljava/lang/String;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;->val$text:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;->val$force:Z

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->access$1000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "searchTask run real"

    .line 7
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    .line 13
    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;->val$text:Ljava/lang/String;

    .line 16
    iget-boolean v7, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;->val$force:Z

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    .line 20
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    .line 23
    move-result-object v8

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    .line 26
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->access$1100(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/android/fileexplorer/adapter/search/SearchUtils;->putTypeExtra(Lcom/android/fileexplorer/adapter/search/SearchType;)Landroid/os/Bundle;

    .line 33
    move-result-object v9

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    .line 36
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Lcom/android/fileexplorer/activity/BaseActivity;

    .line 39
    move-result-object v10

    .line 40
    const-string v4, ""

    .line 42
    const-wide/16 v5, 0x1

    .line 44
    invoke-virtual/range {v2 .. v10}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->requestData(Ljava/lang/String;Ljava/lang/String;JZLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 47
    return-void
.end method
