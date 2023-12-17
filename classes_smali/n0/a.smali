.class public final Ln0/a;
.super Landroid/text/style/ClickableSpan;
.source "AccessibilityClickableSpanCompat.java"


# instance fields
.field public final a:I

.field public final b:Ln0/c;

.field public final c:I


# direct methods
.method public constructor <init>(ILn0/c;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 4
    iput p1, p0, Ln0/a;->a:I

    .line 6
    iput-object p2, p0, Ln0/a;->b:Ln0/c;

    .line 8
    iput p3, p0, Ln0/a;->c:I

    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    new-instance p1, Landroid/os/Bundle;

    .line 3
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget v0, p0, Ln0/a;->a:I

    .line 8
    const-string v1, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 13
    iget-object v0, p0, Ln0/a;->b:Ln0/c;

    .line 15
    iget v1, p0, Ln0/a;->c:I

    .line 17
    iget-object v0, v0, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 19
    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    .line 22
    return-void
.end method
