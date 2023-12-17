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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/f$f;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm0/f$b;

    invoke-direct {v0, p1, p2}, Lm0/f$b;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/f$f;)V

    iput-object v0, p0, Lm0/f;->a:Lm0/f$b;

    return-void
.end method


# virtual methods
.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 3

    iget-object v0, p0, Lm0/f;->a:Lm0/f$b;

    invoke-interface {v0, p1}, Lm0/f$a;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method
