.class public final Lf1/r$a;
.super Lf1/o;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf1/r;->runAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf1/n;


# direct methods
.method public constructor <init>(Lf1/n;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lf1/r$a;->a:Lf1/n;

    .line 3
    invoke-direct {p0}, Lf1/o;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onTransitionEnd(Lf1/n;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lf1/r$a;->a:Lf1/n;

    .line 3
    invoke-virtual {v0}, Lf1/n;->runAnimators()V

    .line 6
    invoke-virtual {p1, p0}, Lf1/n;->removeListener(Lf1/n$g;)Lf1/n;

    .line 9
    return-void
.end method
