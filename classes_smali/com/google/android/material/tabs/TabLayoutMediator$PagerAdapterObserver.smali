.class Lcom/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "TabLayoutMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayoutMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/tabs/TabLayoutMediator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayoutMediator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 6
    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .registers 4

    .line 2
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 6
    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 6
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayoutMediator;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 6
    return-void
.end method
