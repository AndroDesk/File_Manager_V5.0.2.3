.class public Ln0/d;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/d$c;,
        Ln0/d$b;,
        Ln0/d$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_11

    .line 3
    new-instance v0, Ln0/d$c;

    invoke-direct {v0, p0}, Ln0/d$c;-><init>(Ln0/d;)V

    iput-object v0, p0, Ln0/d;->a:Ljava/lang/Object;

    goto :goto_18

    .line 4
    :cond_11
    new-instance v0, Ln0/d$b;

    invoke-direct {v0, p0}, Ln0/d$b;-><init>(Ln0/d;)V

    iput-object v0, p0, Ln0/d;->a:Ljava/lang/Object;

    :goto_18
    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityNodeProvider;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Ln0/d;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Ln0/c;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(I)Ln0/c;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(IILandroid/os/Bundle;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method
