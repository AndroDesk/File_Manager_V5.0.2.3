.class public Ln0/d$b;
.super Ln0/d$a;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ln0/d;)V
    .registers 2

    invoke-direct {p0, p1}, Ln0/d$a;-><init>(Ln0/d;)V

    return-void
.end method


# virtual methods
.method public final findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    iget-object v0, p0, Ln0/d$a;->a:Ln0/d;

    invoke-virtual {v0, p1}, Ln0/d;->b(I)Ln0/c;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    iget-object p1, p1, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method
