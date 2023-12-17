.class Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;
.super Lr0/a;
.source "ClearableEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/widget/ClearableEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessHelper"
.end annotation


# static fields
.field private static final CHILD_ID:I


# instance fields
.field private final forView:Landroid/view/View;

.field private final mTempParentBounds:Landroid/graphics/Rect;

.field public final synthetic this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;


# direct methods
.method public constructor <init>(Lmiuix/androidbasewidget/widget/ClearableEditText;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 3
    invoke-direct {p0, p2}, Lr0/a;-><init>(Landroid/view/View;)V

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 11
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    .line 13
    iput-object p2, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->forView:Landroid/view/View;

    .line 15
    return-void
.end method

.method private getChildRect(Landroid/graphics/Rect;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->forView:Landroid/view/View;

    .line 3
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 8
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 10
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$200(Lmiuix/androidbasewidget/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_11

    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_1b

    .line 18
    :cond_11
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 20
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$200(Lmiuix/androidbasewidget/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 27
    move-result v0

    .line 28
    :goto_1b
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 30
    invoke-static {v1}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_39

    .line 36
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 38
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 43
    move-result v2

    .line 44
    sub-int/2addr v2, v0

    .line 45
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 50
    move-result v0

    .line 51
    mul-int/lit8 v0, v0, 0x2

    .line 53
    sub-int/2addr v2, v0

    .line 54
    sub-int/2addr v1, v2

    .line 55
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 57
    goto :goto_4e

    .line 58
    :cond_39
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 60
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 62
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 65
    move-result v2

    .line 66
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 68
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 71
    move-result v3

    .line 72
    mul-int/lit8 v3, v3, 0x2

    .line 74
    sub-int/2addr v2, v3

    .line 75
    sub-int/2addr v2, v0

    .line 76
    add-int/2addr v2, v1

    .line 77
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 79
    :goto_4e
    return-void
.end method

.method private getDescription()Ljava/lang/CharSequence;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    sget v1, Lmiuix/androidbasewidget/R$string;->clearable_edittext_clear_description:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private isVirtualView(FF)Z
    .registers 7

    .line 1
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 3
    invoke-static {p2}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$200(Lmiuix/androidbasewidget/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p2, :cond_b

    .line 10
    move p2, v0

    .line 11
    goto :goto_15

    .line 12
    :cond_b
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 14
    invoke-static {p2}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$200(Lmiuix/androidbasewidget/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 21
    move-result p2

    .line 22
    :goto_15
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 24
    invoke-static {v1}, Landroidx/appcompat/widget/h1;->a(Landroid/view/View;)Z

    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    if-eqz v1, :cond_2e

    .line 31
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 36
    move-result v1

    .line 37
    mul-int/lit8 v1, v1, 0x2

    .line 39
    add-int/2addr v1, p2

    .line 40
    int-to-float p2, v1

    .line 41
    cmpg-float p1, p1, p2

    .line 43
    if-gez p1, :cond_2d

    .line 45
    move v0, v2

    .line 46
    :cond_2d
    return v0

    .line 47
    :cond_2e
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 52
    move-result v1

    .line 53
    iget-object v3, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 55
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 58
    move-result v3

    .line 59
    mul-int/lit8 v3, v3, 0x2

    .line 61
    sub-int/2addr v1, v3

    .line 62
    sub-int/2addr v1, p2

    .line 63
    int-to-float p2, v1

    .line 64
    cmpl-float p1, p1, p2

    .line 66
    if-lez p1, :cond_44

    .line 68
    move v0, v2

    .line 69
    :cond_44
    return v0
.end method


# virtual methods
.method public getVirtualViewAt(FF)I
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 3
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$000(Lmiuix/androidbasewidget/widget/ClearableEditText;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_10

    .line 9
    invoke-direct {p0, p1, p2}, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->isVirtualView(FF)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_10

    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_10
    const/high16 p1, -0x80000000

    .line 19
    return p1
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 3
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$000(Lmiuix/androidbasewidget/widget/ClearableEditText;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_10

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_10
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 5

    .line 1
    const/4 p3, 0x0

    .line 2
    const/high16 v0, -0x80000000

    .line 4
    if-ne p1, v0, :cond_6

    .line 6
    return p3

    .line 7
    :cond_6
    const/16 p1, 0x10

    .line 9
    if-eq p2, p1, :cond_b

    .line 11
    return p3

    .line 12
    :cond_b
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 14
    invoke-static {p1}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$100(Lmiuix/androidbasewidget/widget/ClearableEditText;)V

    .line 17
    const/4 p1, 0x1

    .line 18
    return p1
.end method

.method public onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lr0/a;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 7
    move-result p1

    .line 8
    const/16 v0, 0x800

    .line 10
    if-ne p1, v0, :cond_23

    .line 12
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 14
    invoke-static {p1}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$000(Lmiuix/androidbasewidget/widget/ClearableEditText;)Z

    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_23

    .line 20
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->forView:Landroid/view/View;

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_23

    .line 28
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->forView:Landroid/view/View;

    .line 30
    const v0, 0x8000

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 36
    :cond_23
    return-void
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->getDescription()Ljava/lang/CharSequence;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    return-void
.end method

.method public onPopulateNodeForHost(Ln0/c;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lr0/a;->onPopulateNodeForHost(Ln0/c;)V

    .line 4
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->this$0:Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 6
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->access$000(Lmiuix/androidbasewidget/widget/ClearableEditText;)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_14

    .line 12
    const-class v0, Lmiuix/androidbasewidget/widget/ClearableEditText;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ln0/c;->i(Ljava/lang/CharSequence;)V

    .line 21
    :cond_14
    return-void
.end method

.method public onPopulateNodeForVirtualView(ILn0/c;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->getDescription()Ljava/lang/CharSequence;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Ln0/c;->l(Ljava/lang/CharSequence;)V

    .line 8
    const/16 p1, 0x10

    .line 10
    invoke-virtual {p2, p1}, Ln0/c;->a(I)V

    .line 13
    const-class p1, Landroid/widget/Button;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2, p1}, Ln0/c;->i(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    .line 24
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->getChildRect(Landroid/graphics/Rect;)V

    .line 27
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    .line 29
    invoke-virtual {p2, p1}, Ln0/c;->h(Landroid/graphics/Rect;)V

    .line 32
    iget-object p1, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 34
    const/4 p2, 0x1

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 38
    return-void
.end method
