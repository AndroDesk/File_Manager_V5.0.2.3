.class public final Landroidx/preference/PreferenceFragment$b;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Landroidx/preference/PreferenceFragment$b;->a:Landroidx/preference/PreferenceFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$b;->a:Landroidx/preference/PreferenceFragment;

    .line 3
    iget-object v0, v0, Landroidx/preference/PreferenceFragment;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {v0, v0}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 8
    return-void
.end method
