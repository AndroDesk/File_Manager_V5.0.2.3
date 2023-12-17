.class Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$2;
.super Ljava/lang/Object;
.source "CategoryChoiceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$2;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$2;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$100(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_11

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$2;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$100(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->toggleCheckedAll()V

    .line 18
    :cond_11
    return-void
.end method
