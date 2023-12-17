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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$2;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$2;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$100(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$2;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$100(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/adapter/FileListRecycleAdapter;->toggleCheckedAll()V

    :cond_11
    return-void
.end method
