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
.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$c;->c:Landroidx/preference/PreferenceFragmentCompat;

    .line 3
    iput-object p2, p0, Landroidx/preference/PreferenceFragmentCompat$c;->a:Landroidx/preference/Preference;

    .line 5
    iput-object p3, p0, Landroidx/preference/PreferenceFragmentCompat$c;->b:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$c;->c:Landroidx/preference/PreferenceFragmentCompat;

    .line 3
    iget-object v0, v0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Landroidx/preference/PreferenceGroup$c;

    .line 11
    if-nez v1, :cond_17

    .line 13
    if-nez v0, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    const-string v1, "Adapter must implement PreferencePositionCallback"

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0

    .line 24
    :cond_17
    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat$c;->a:Landroidx/preference/Preference;

    .line 26
    if-eqz v1, :cond_23

    .line 28
    move-object v2, v0

    .line 29
    check-cast v2, Landroidx/preference/PreferenceGroup$c;

    .line 31
    invoke-interface {v2, v1}, Landroidx/preference/PreferenceGroup$c;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    .line 34
    move-result v1

    .line 35
    goto :goto_2c

    .line 36
    :cond_23
    move-object v1, v0

    .line 37
    check-cast v1, Landroidx/preference/PreferenceGroup$c;

    .line 39
    iget-object v2, p0, Landroidx/preference/PreferenceFragmentCompat$c;->b:Ljava/lang/String;

    .line 41
    invoke-interface {v1, v2}, Landroidx/preference/PreferenceGroup$c;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    .line 44
    move-result v1

    .line 45
    :goto_2c
    const/4 v2, -0x1

    .line 46
    if-eq v1, v2, :cond_37

    .line 48
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$c;->c:Landroidx/preference/PreferenceFragmentCompat;

    .line 50
    iget-object v0, v0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 55
    goto :goto_47

    .line 56
    :cond_37
    new-instance v1, Landroidx/preference/PreferenceFragmentCompat$h;

    .line 58
    iget-object v2, p0, Landroidx/preference/PreferenceFragmentCompat$c;->c:Landroidx/preference/PreferenceFragmentCompat;

    .line 60
    iget-object v2, v2, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    iget-object v3, p0, Landroidx/preference/PreferenceFragmentCompat$c;->a:Landroidx/preference/Preference;

    .line 64
    iget-object v4, p0, Landroidx/preference/PreferenceFragmentCompat$c;->b:Ljava/lang/String;

    .line 66
    invoke-direct {v1, v0, v2, v3, v4}, Landroidx/preference/PreferenceFragmentCompat$h;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 72
    :goto_47
    return-void
.end method
