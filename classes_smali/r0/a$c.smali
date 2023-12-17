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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lr0/a;)V
    .registers 2

    iput-object p1, p0, Lr0/a$c;->b:Lr0/a;

    invoke-direct {p0}, Ln0/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ln0/c;
    .registers 3

    iget-object v0, p0, Lr0/a$c;->b:Lr0/a;

    invoke-virtual {v0, p1}, Lr0/a;->obtainAccessibilityNodeInfo(I)Ln0/c;

    move-result-object p1

    iget-object p1, p1, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    new-instance v0, Ln0/c;

    invoke-direct {v0, p1}, Ln0/c;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method

.method public final b(I)Ln0/c;
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lr0/a$c;->b:Lr0/a;

    iget p1, p1, Lr0/a;->mAccessibilityFocusedVirtualViewId:I

    goto :goto_c

    :cond_8
    iget-object p1, p0, Lr0/a$c;->b:Lr0/a;

    iget p1, p1, Lr0/a;->mKeyboardFocusedVirtualViewId:I

    :goto_c
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_12

    const/4 p1, 0x0

    return-object p1

    :cond_12
    invoke-virtual {p0, p1}, Lr0/a$c;->a(I)Ln0/c;

    move-result-object p1

    return-object p1
.end method

.method public final c(IILandroid/os/Bundle;)Z
    .registers 5

    iget-object v0, p0, Lr0/a$c;->b:Lr0/a;

    invoke-virtual {v0, p1, p2, p3}, Lr0/a;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
