.class Lcom/google/android/material/internal/NavigationMenuItemView$1;
.super Lm0/a;
.source "NavigationMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/internal/NavigationMenuItemView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/NavigationMenuItemView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView$1;->this$0:Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 3
    invoke-direct {p0}, Lm0/a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView$1;->this$0:Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 6
    iget-boolean p1, p1, Lcom/google/android/material/internal/NavigationMenuItemView;->checkable:Z

    .line 8
    iget-object p2, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 13
    return-void
.end method
