.class public final Lp0/e;
.super Ljava/lang/Object;
.source "InputContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp0/e$a;,
        Lp0/e$c;,
        Lp0/e$b;
    }
.end annotation


# instance fields
.field public final a:Lp0/e$c;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_11

    .line 3
    new-instance v0, Lp0/e$a;

    invoke-direct {v0, p1, p2, p3}, Lp0/e$a;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v0, p0, Lp0/e;->a:Lp0/e$c;

    goto :goto_18

    .line 4
    :cond_11
    new-instance v0, Lp0/e$b;

    invoke-direct {v0, p1, p2, p3}, Lp0/e$b;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v0, p0, Lp0/e;->a:Lp0/e$c;

    :goto_18
    return-void
.end method

.method public constructor <init>(Lp0/e$a;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lp0/e;->a:Lp0/e$c;

    return-void
.end method
