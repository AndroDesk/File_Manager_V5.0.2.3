.class public final Landroidx/preference/PreferenceFragmentCompat$c;
.super Ljava/lang/Object;
.source "PreferenceFragmentCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/PreferenceFragmentCompat;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/preference/Preference;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$c;->c:Landroidx/preference/PreferenceFragmentCompat;

    iput-object p2, p0, Landroidx/preference/PreferenceFragmentCompat$c;->a:Landroidx/preference/Preference;

    iput-object p3, p0, Landroidx/preference/PreferenceFragmentCompat$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$c;->c:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v0, v0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Landroidx/preference/PreferenceGroup$c;

    if-nez v1, :cond_17

    if-nez v0, :cond_f

    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adapter must implement PreferencePositionCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat$c;->a:Landroidx/preference/Preference;

    if-eqz v1, :cond_23

    move-object v2, v0

    check-cast v2, Landroidx/preference/PreferenceGroup$c;

    invoke-interface {v2, v1}, Landroidx/preference/PreferenceGroup$c;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    move-result v1

    goto :goto_2c

    :cond_23
    move-object v1, v0

    check-cast v1, Landroidx/preference/PreferenceGroup$c;

    iget-object v2, p0, Landroidx/preference/PreferenceFragmentCompat$c;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/preference/PreferenceGroup$c;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v1

    :goto_2c
    const/4 v2, -0x1

    if-eq v1, v2, :cond_37

    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$c;->c:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v0, v0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_47

    :cond_37
    new-instance v1, Landroidx/preference/PreferenceFragmentCompat$h;

    iget-object v2, p0, Landroidx/preference/PreferenceFragmentCompat$c;->c:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v2, v2, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Landroidx/preference/PreferenceFragmentCompat$c;->a:Landroidx/preference/Preference;

    iget-object v4, p0, Landroidx/preference/PreferenceFragmentCompat$c;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Landroidx/preference/PreferenceFragmentCompat$h;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    :goto_47
    return-void
.end method
