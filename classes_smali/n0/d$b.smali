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
.method public constructor <init>(Ln0/d;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ln0/d$a;-><init>(Ln0/d;)V

    .line 4
    return-void
.end method


# virtual methods
.method public final findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    .line 1
    iget-object v0, p0, Ln0/d$a;->a:Ln0/d;

    .line 3
    invoke-virtual {v0, p1}, Ln0/d;->b(I)Ln0/c;

    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_a

    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_a
    iget-object p1, p1, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 13
    return-object p1
.end method
