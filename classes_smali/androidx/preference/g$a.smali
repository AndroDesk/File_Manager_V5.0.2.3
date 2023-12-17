.class public final Landroidx/preference/g$a;
.super Lm0/a;
.source "PreferenceRecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/preference/g;


# direct methods
.method public constructor <init>(Landroidx/preference/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/g$a;->a:Landroidx/preference/g;

    .line 3
    invoke-direct {p0}, Lm0/a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/preference/g$a;->a:Landroidx/preference/g;

    .line 3
    iget-object v0, v0, Landroidx/preference/g;->b:Lm0/a;

    .line 5
    invoke-virtual {v0, p1, p2}, Lm0/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    .line 8
    iget-object v0, p0, Landroidx/preference/g$a;->a:Landroidx/preference/g;

    .line 10
    iget-object v0, v0, Landroidx/preference/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 15
    move-result p1

    .line 16
    iget-object v0, p0, Landroidx/preference/g$a;->a:Landroidx/preference/g;

    .line 18
    iget-object v0, v0, Landroidx/preference/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Landroidx/preference/c;

    .line 26
    if-nez v1, :cond_1c

    .line 28
    return-void

    .line 29
    :cond_1c
    check-cast v0, Landroidx/preference/c;

    .line 31
    invoke-virtual {v0, p1}, Landroidx/preference/c;->getItem(I)Landroidx/preference/Preference;

    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_25

    .line 37
    return-void

    .line 38
    :cond_25
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->onInitializeAccessibilityNodeInfo(Ln0/c;)V

    .line 41
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/preference/g$a;->a:Landroidx/preference/g;

    .line 3
    iget-object v0, v0, Landroidx/preference/g;->b:Lm0/a;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lm0/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method
