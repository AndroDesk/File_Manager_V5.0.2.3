.class public final Landroidx/fragment/app/o;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field public final a:Landroidx/fragment/app/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/q<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/q;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/q<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o;->a:Landroidx/fragment/app/q;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/q;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->S()V

    .line 8
    return-void
.end method
