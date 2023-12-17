.class public final Landroidx/preference/PreferenceFragmentCompat$h;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "PreferenceFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:Landroidx/preference/Preference;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/preference/Preference;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$h;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    iput-object p2, p0, Landroidx/preference/PreferenceFragmentCompat$h;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    iput-object p3, p0, Landroidx/preference/PreferenceFragmentCompat$h;->c:Landroidx/preference/Preference;

    .line 10
    iput-object p4, p0, Landroidx/preference/PreferenceFragmentCompat$h;->d:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$h;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 6
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$h;->c:Landroidx/preference/Preference;

    .line 8
    if-eqz v0, :cond_12

    .line 10
    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat$h;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 12
    check-cast v1, Landroidx/preference/PreferenceGroup$c;

    .line 14
    invoke-interface {v1, v0}, Landroidx/preference/PreferenceGroup$c;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    .line 17
    move-result v0

    .line 18
    goto :goto_1c

    .line 19
    :cond_12
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$h;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 21
    check-cast v0, Landroidx/preference/PreferenceGroup$c;

    .line 23
    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat$h;->d:Ljava/lang/String;

    .line 25
    invoke-interface {v0, v1}, Landroidx/preference/PreferenceGroup$c;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    .line 28
    move-result v0

    .line 29
    :goto_1c
    const/4 v1, -0x1

    .line 30
    if-eq v0, v1, :cond_24

    .line 32
    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat$h;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 37
    :cond_24
    return-void
.end method

.method public final onChanged()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat$h;->a()V

    .line 4
    return-void
.end method

.method public final onItemRangeChanged(II)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat$h;->a()V

    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .registers 4

    .line 2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat$h;->a()V

    return-void
.end method

.method public final onItemRangeInserted(II)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat$h;->a()V

    .line 4
    return-void
.end method

.method public final onItemRangeMoved(III)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat$h;->a()V

    .line 4
    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat$h;->a()V

    .line 4
    return-void
.end method
