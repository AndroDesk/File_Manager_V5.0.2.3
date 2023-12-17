.class public final Landroidx/preference/g;
.super Landroidx/recyclerview/widget/r;
.source "PreferenceRecyclerViewAccessibilityDelegate.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView;

.field public final b:Lm0/a;

.field public final c:Landroidx/preference/g$a;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/r;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    invoke-super {p0}, Landroidx/recyclerview/widget/r;->getItemDelegate()Lm0/a;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroidx/preference/g;->b:Lm0/a;

    .line 10
    new-instance v0, Landroidx/preference/g$a;

    .line 12
    invoke-direct {v0, p0}, Landroidx/preference/g$a;-><init>(Landroidx/preference/g;)V

    .line 15
    iput-object v0, p0, Landroidx/preference/g;->c:Landroidx/preference/g$a;

    .line 17
    iput-object p1, p0, Landroidx/preference/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    return-void
.end method


# virtual methods
.method public final getItemDelegate()Lm0/a;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/g;->c:Landroidx/preference/g$a;

    .line 3
    return-object v0
.end method
