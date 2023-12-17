.class public final synthetic Lmiuix/preference/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/preference/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lmiuix/preference/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment$1;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
