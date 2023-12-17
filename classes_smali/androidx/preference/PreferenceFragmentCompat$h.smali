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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$h;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iput-object p2, p0, Landroidx/preference/PreferenceFragmentCompat$h;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Landroidx/preference/PreferenceFragmentCompat$h;->c:Landroidx/preference/Preference;

    iput-object p4, p0, Landroidx/preference/PreferenceFragmentCompat$h;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$h;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$h;->c:Landroidx/preference/Preference;

    if-eqz v0, :cond_12

    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat$h;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v1, Landroidx/preference/PreferenceGroup$c;

    invoke-interface {v1, v0}, Landroidx/preference/PreferenceGroup$c;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    move-result v0

    goto :goto_1c

    :cond_12
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$h;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Landroidx/preference/PreferenceGroup$c;

    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat$h;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/preference/PreferenceGroup$c;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v0

    :goto_1c
    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat$h;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_24
    return-void
.end method

.method public final onChanged()V
    .registers 1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat$h;->a()V

    return-void
.end method

.method public final onItemRangeChanged(II)V
    .registers 3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat$h;->a()V

    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat$h;->a()V

    return-void
.end method

.method public final onItemRangeInserted(II)V
    .registers 3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat$h;->a()V

    return-void
.end method

.method public final onItemRangeMoved(III)V
    .registers 4

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat$h;->a()V

    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .registers 3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat$h;->a()V

    return-void
.end method
