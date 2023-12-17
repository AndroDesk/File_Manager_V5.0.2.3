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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment$1;->this$0:Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;

    iget-object v0, p1, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;->access$000(Lcom/android/fileexplorer/fragment/CategoryChoiceFragment;Lcom/android/fileexplorer/activity/BaseActivity;)V

    return-void
.end method
