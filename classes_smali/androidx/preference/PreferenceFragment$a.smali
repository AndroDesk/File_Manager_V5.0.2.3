.class public final Landroidx/preference/PreferenceFragment$a;
.super Landroid/os/Handler;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/preference/PreferenceFragment;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/PreferenceFragment$a;->a:Landroidx/preference/PreferenceFragment;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_6

    .line 6
    goto :goto_1b

    .line 7
    :cond_6
    iget-object p1, p0, Landroidx/preference/PreferenceFragment$a;->a:Landroidx/preference/PreferenceFragment;

    .line 9
    iget-object v0, p1, Landroidx/preference/PreferenceFragment;->b:Landroidx/preference/f;

    .line 11
    iget-object v0, v0, Landroidx/preference/f;->g:Landroidx/preference/PreferenceScreen;

    .line 13
    if-eqz v0, :cond_1b

    .line 15
    iget-object p1, p1, Landroidx/preference/PreferenceFragment;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    new-instance v1, Landroidx/preference/c;

    .line 19
    invoke-direct {v1, v0}, Landroidx/preference/c;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 22
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 25
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->onAttached()V

    .line 28
    :cond_1b
    :goto_1b
    return-void
.end method
