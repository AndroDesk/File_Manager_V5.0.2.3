.class public final Lf1/f$b;
.super Lf1/n$f;
.source "FragmentTransitionSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf1/f;->n(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lf1/f$b;->a:Landroid/graphics/Rect;

    .line 3
    invoke-direct {p0}, Lf1/n$f;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lf1/f$b;->a:Landroid/graphics/Rect;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_e

    .line 12
    :cond_b
    iget-object v0, p0, Lf1/f$b;->a:Landroid/graphics/Rect;

    .line 14
    return-object v0

    .line 15
    :cond_e
    :goto_e
    const/4 v0, 0x0

    .line 16
    return-object v0
.end method
