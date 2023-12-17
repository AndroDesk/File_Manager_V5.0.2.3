.class Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$2;
.super Ljava/lang/Object;
.source "BaseCategoryFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/OnModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->setupAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$2;->this$0:Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onModeChanged(II)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment$2;->this$0:Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/category/BaseCategoryFragment;->mStickyHeaderDecoration:Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/decoration/StickyHeaderDecoration;->NotifyStickyChange()V

    .line 10
    :cond_9
    return-void
.end method
