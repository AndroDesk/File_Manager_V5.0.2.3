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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/r;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-super {p0}, Landroidx/recyclerview/widget/r;->getItemDelegate()Lm0/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/g;->b:Lm0/a;

    new-instance v0, Landroidx/preference/g$a;

    invoke-direct {v0, p0}, Landroidx/preference/g$a;-><init>(Landroidx/preference/g;)V

    iput-object v0, p0, Landroidx/preference/g;->c:Landroidx/preference/g$a;

    iput-object p1, p0, Landroidx/preference/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final getItemDelegate()Lm0/a;
    .registers 2

    iget-object v0, p0, Landroidx/preference/g;->c:Landroidx/preference/g$a;

    return-object v0
.end method
