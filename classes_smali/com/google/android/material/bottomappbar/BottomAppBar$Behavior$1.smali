.class Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;
.super Ljava/lang/Object;
.source "BottomAppBar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    iget-object p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 3
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2100(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Ljava/lang/ref/WeakReference;

    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 13
    if-eqz p2, :cond_79

    .line 15
    instance-of p3, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 17
    if-nez p3, :cond_13

    .line 19
    goto :goto_79

    .line 20
    :cond_13
    move-object p3, p1

    .line 21
    check-cast p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 23
    iget-object p4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 25
    invoke-static {p4}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2200(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    .line 28
    move-result-object p4

    .line 29
    invoke-virtual {p3, p4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredContentRect(Landroid/graphics/Rect;)V

    .line 32
    iget-object p4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 34
    invoke-static {p4}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2200(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    .line 37
    move-result-object p4

    .line 38
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 41
    move-result p4

    .line 42
    invoke-virtual {p2, p4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setFabDiameter(I)Z

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 51
    iget-object p5, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 53
    invoke-static {p5}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2300(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)I

    .line 56
    move-result p5

    .line 57
    if-nez p5, :cond_78

    .line 59
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 62
    move-result p5

    .line 63
    sub-int/2addr p5, p4

    .line 64
    div-int/lit8 p5, p5, 0x2

    .line 66
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 69
    move-result-object p4

    .line 70
    sget p6, Lcom/google/android/material/R$dimen;->mtrl_bottomappbar_fab_bottom_margin:I

    .line 72
    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 75
    move-result p4

    .line 76
    sub-int/2addr p4, p5

    .line 77
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2400(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    .line 80
    move-result p5

    .line 81
    add-int/2addr p5, p4

    .line 82
    iput p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 84
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2500(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    .line 87
    move-result p4

    .line 88
    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 90
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2600(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    .line 93
    move-result p4

    .line 94
    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 96
    invoke-static {p3}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 99
    move-result p3

    .line 100
    if-eqz p3, :cond_6f

    .line 102
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 104
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2700(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    .line 107
    move-result p2

    .line 108
    add-int/2addr p2, p3

    .line 109
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 111
    goto :goto_78

    .line 112
    :cond_6f
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 114
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2700(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    .line 117
    move-result p2

    .line 118
    add-int/2addr p2, p3

    .line 119
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 121
    :cond_78
    :goto_78
    return-void

    .line 122
    :cond_79
    :goto_79
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 125
    return-void
.end method
