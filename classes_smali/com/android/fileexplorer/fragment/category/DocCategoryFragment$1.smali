.class Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$1;
.super Ljava/lang/Object;
.source "DocCategoryFragment.java"

# interfaces
.implements Landroidx/lifecycle/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/r<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$1;->this$0:Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment;->tabLayout:Lmiuix/miuixbasewidget/widget/FilterSortView2;

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lmiuix/miuixbasewidget/widget/FilterSortView2;->setEnabled(Z)V

    :cond_f
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/category/DocCategoryFragment$1;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
