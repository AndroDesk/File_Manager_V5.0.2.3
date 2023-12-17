.class Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment$1;
.super Ljava/lang/Object;
.source "PadDocCategoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment$1;->this$0:Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment$1;->this$0:Lcom/android/fileexplorer/pad/fragment/PadDocCategoryFragment;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->onBack()Z

    .line 6
    return-void
.end method
