.class public final Lm0/f;
.super Ljava/lang/Object;
.source "GestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/f$b;,
        Lm0/f$a;
    }
.end annotation


# instance fields
.field public final a:Lm0/f$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/f$f;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lm0/f$b;

    .line 6
    invoke-direct {v0, p1, p2}, Lm0/f$b;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/f$f;)V

    .line 9
    iput-object v0, p0, Lm0/f;->a:Lm0/f$b;

    .line 11
    return-void
.end method


# virtual methods
.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/f;->a:Lm0/f$b;

    .line 3
    invoke-interface {v0, p1}, Lm0/f$a;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 6
    return-void
.end method
