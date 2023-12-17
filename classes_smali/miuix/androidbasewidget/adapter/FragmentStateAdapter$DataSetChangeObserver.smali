.class abstract Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$DataSetChangeObserver;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "FragmentStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/adapter/FragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DataSetChangeObserver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$1;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$DataSetChangeObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onChanged()V
.end method

.method public final onItemRangeChanged(II)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$DataSetChangeObserver;->onChanged()V

    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$DataSetChangeObserver;->onChanged()V

    return-void
.end method

.method public final onItemRangeInserted(II)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$DataSetChangeObserver;->onChanged()V

    .line 4
    return-void
.end method

.method public final onItemRangeMoved(III)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$DataSetChangeObserver;->onChanged()V

    .line 4
    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/androidbasewidget/adapter/FragmentStateAdapter$DataSetChangeObserver;->onChanged()V

    .line 4
    return-void
.end method
