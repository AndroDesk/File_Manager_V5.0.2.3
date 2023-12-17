.class public final Lr0/a$c;
.super Ln0/d;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Lr0/a;


# direct methods
.method public constructor <init>(Lr0/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lr0/a$c;->b:Lr0/a;

    .line 3
    invoke-direct {p0}, Ln0/d;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)Ln0/c;
    .registers 3

    .line 1
    iget-object v0, p0, Lr0/a$c;->b:Lr0/a;

    .line 3
    invoke-virtual {v0, p1}, Lr0/a;->obtainAccessibilityNodeInfo(I)Ln0/c;

    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 9
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Ln0/c;

    .line 15
    invoke-direct {v0, p1}, Ln0/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 18
    return-object v0
.end method

.method public final b(I)Ln0/c;
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_8

    .line 4
    iget-object p1, p0, Lr0/a$c;->b:Lr0/a;

    .line 6
    iget p1, p1, Lr0/a;->mAccessibilityFocusedVirtualViewId:I

    .line 8
    goto :goto_c

    .line 9
    :cond_8
    iget-object p1, p0, Lr0/a$c;->b:Lr0/a;

    .line 11
    iget p1, p1, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    .line 13
    :goto_c
    const/high16 v0, -0x80000000

    .line 15
    if-ne p1, v0, :cond_12

    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :cond_12
    invoke-virtual {p0, p1}, Lr0/a$c;->a(I)Ln0/c;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public final c(IILandroid/os/Bundle;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lr0/a$c;->b:Lr0/a;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lr0/a;->performAction(IILandroid/os/Bundle;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
