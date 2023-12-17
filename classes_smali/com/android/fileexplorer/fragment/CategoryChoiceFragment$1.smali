.class Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$1;
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
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    .line 3
    iget-object v0, p1, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 5
    invoke-static {p1, v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$000(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;Lcom/android/fileexplorer/activity/BaseActivity;)V

    .line 8
    return-void
.end method
