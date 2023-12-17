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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/preference/g;)V
    .registers 2

    iput-object p1, p0, Landroidx/preference/g$a;->a:Landroidx/preference/g;

    invoke-direct {p0}, Lm0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V
    .registers 5

    iget-object v0, p0, Landroidx/preference/g$a;->a:Landroidx/preference/g;

    iget-object v0, v0, Landroidx/preference/g;->b:Lm0/a;

    invoke-virtual {v0, p1, p2}, Lm0/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    iget-object v0, p0, Landroidx/preference/g$a;->a:Landroidx/preference/g;

    iget-object v0, v0, Landroidx/preference/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Landroidx/preference/g$a;->a:Landroidx/preference/g;

    iget-object v0, v0, Landroidx/preference/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Landroidx/preference/c;

    if-nez v1, :cond_1c

    return-void

    :cond_1c
    check-cast v0, Landroidx/preference/c;

    invoke-virtual {v0, p1}, Landroidx/preference/c;->getItem(I)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_25

    return-void

    :cond_25
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->onInitializeAccessibilityNodeInfo(Ln0/c;)V

    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    iget-object v0, p0, Landroidx/preference/g$a;->a:Landroidx/preference/g;

    iget-object v0, v0, Landroidx/preference/g;->b:Lm0/a;

    invoke-virtual {v0, p1, p2, p3}, Lm0/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
