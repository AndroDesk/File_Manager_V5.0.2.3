.class public final Lf1/p$a$a;
.super Lf1/o;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf1/p$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/collection/a;

.field public final synthetic b:Lf1/p$a;


# direct methods
.method public constructor <init>(Lf1/p$a;Landroidx/collection/a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lf1/p$a$a;->b:Lf1/p$a;

    .line 3
    iput-object p2, p0, Lf1/p$a$a;->a:Landroidx/collection/a;

    .line 5
    invoke-direct {p0}, Lf1/o;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onTransitionEnd(Lf1/n;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lf1/p$a$a;->a:Landroidx/collection/a;

    .line 3
    iget-object v1, p0, Lf1/p$a$a;->b:Lf1/p$a;

    .line 5
    iget-object v1, v1, Lf1/p$a;->b:Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v0, v1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p1, p0}, Lf1/n;->removeListener(Lf1/n$g;)Lf1/n;

    .line 19
    return-void
.end method
