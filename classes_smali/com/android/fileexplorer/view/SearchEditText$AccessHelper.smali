.class Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;
.super Lr0/a;
.source "SearchEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/SearchEditText;
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

.field public final synthetic this$0:Lcom/android/fileexplorer/view/SearchEditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/SearchEditText;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-direct {p0, p2}, Lr0/a;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->forView:Landroid/view/View;

    return-void
.end method

.method private getChildRect(Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->forView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-static {v0}, Lcom/android/fileexplorer/view/SearchEditText;->access$300(Lcom/android/fileexplorer/view/SearchEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    goto :goto_1b

    :cond_11
    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-static {v0}, Lcom/android/fileexplorer/view/SearchEditText;->access$300(Lcom/android/fileexplorer/view/SearchEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_1b
    iget-object v1, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-static {v1}, Lcom/android/fileexplorer/view/SearchEditText;->access$400(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_4e

    :cond_39
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    :goto_4e
    return-void
.end method

.method private getDescription()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f182d5b

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isVirtualView(FF)Z
    .registers 7

    iget-object p2, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-static {p2}, Lcom/android/fileexplorer/view/SearchEditText;->access$300(Lcom/android/fileexplorer/view/SearchEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_b

    move p2, v0

    goto :goto_15

    :cond_b
    iget-object p2, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-static {p2}, Lcom/android/fileexplorer/view/SearchEditText;->access$300(Lcom/android/fileexplorer/view/SearchEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    :goto_15
    iget-object v1, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-static {v1}, Lcom/android/fileexplorer/view/SearchEditText;->access$400(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    int-to-float p2, v1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2d

    move v0, v2

    :cond_2d
    return v0

    :cond_2e
    iget-object v1, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    sub-int/2addr v1, p2

    int-to-float p2, v1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_44

    move v0, v2

    :cond_44
    return v0
.end method


# virtual methods
.method public getVirtualViewAt(FF)I
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-static {v0}, Lcom/android/fileexplorer/view/SearchEditText;->access$000(Lcom/android/fileexplorer/view/SearchEditText;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->isVirtualView(FF)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    return p1

    :cond_10
    const/high16 p1, -0x80000000

    return p1
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-static {v0}, Lcom/android/fileexplorer/view/SearchEditText;->access$000(Lcom/android/fileexplorer/view/SearchEditText;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 5

    const/4 p3, 0x0

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_6

    return p3

    :cond_6
    const/16 p1, 0x10

    if-eq p2, p1, :cond_b

    return p3

    :cond_b
    iget-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/SearchEditText;->onClearButtonClick()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1}, Lr0/a;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x800

    if-ne p1, v0, :cond_23

    iget-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->this$0:Lcom/android/fileexplorer/view/SearchEditText;

    invoke-static {p1}, Lcom/android/fileexplorer/view/SearchEditText;->access$000(Lcom/android/fileexplorer/view/SearchEditText;)Z

    move-result p1

    if-nez p1, :cond_23

    iget-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->forView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->forView:Landroid/view/View;

    const v0, 0x8000

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_23
    return-void
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateNodeForHost(Ln0/c;)V
    .registers 3

    invoke-super {p0, p1}, Lr0/a;->onPopulateNodeForHost(Ln0/c;)V

    const-class v0, Lcom/android/fileexplorer/view/SearchEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln0/c;->i(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateNodeForVirtualView(ILn0/c;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Ln0/c;->l(Ljava/lang/CharSequence;)V

    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Ln0/c;->a(I)V

    const-class p1, Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ln0/c;->i(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->getChildRect(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/SearchEditText$AccessHelper;->mTempParentBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Ln0/c;->h(Landroid/graphics/Rect;)V

    iget-object p1, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method
