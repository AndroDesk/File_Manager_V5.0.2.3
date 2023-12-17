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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;Ljava/lang/String;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;->val$text:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    invoke-static {}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "searchTask run real"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->getInstance()Lcom/android/fileexplorer/adapter/search/SearchDataContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;->val$text:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;->val$force:Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Lcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;

    move-result-object v8

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->access$1100(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/search/SearchUtils;->putTypeExtra(Lcom/android/fileexplorer/adapter/search/SearchType;)Landroid/os/Bundle;

    move-result-object v9

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;->access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchDetailFragment;)Lcom/android/fileexplorer/activity/BaseActivity;

    move-result-object v10

    const-string v4, ""

    const-wide/16 v5, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/android/fileexplorer/adapter/search/SearchDataContainer;->requestData(Ljava/lang/String;Ljava/lang/String;JZLcom/android/fileexplorer/adapter/search/SearchDataContainer$PostSearchModuleDefinition;Landroid/os/Bundle;Landroid/app/Activity;)V

    return-void
.end method
