.class public final Landroidx/fragment/app/ListFragment$a;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/ListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/ListFragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/ListFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/ListFragment$a;->a:Landroidx/fragment/app/ListFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/ListFragment$a;->a:Landroidx/fragment/app/ListFragment;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 5
    invoke-virtual {v0, v0}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 8
    return-void
.end method
